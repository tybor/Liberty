/*
-- ------------------------------------------------------------------------------------------------------------
-- Copyright notice below. Please read.
--
-- Copyright(C) 1994-2002: INRIA - LORIA (INRIA Lorraine) - ESIAL U.H.P.       - University of Nancy 1 - FRANCE
-- Copyright(C) 2003-2005: INRIA - LORIA (INRIA Lorraine) - I.U.T. Charlemagne - University of Nancy 2 - FRANCE
--
-- Authors: Dominique COLNET, Philippe RIBET, Cyril ADRIAN, Vincent CROIZIER, Frederic MERIZEN
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated
-- documentation files (the "Software"), to deal in the Software without restriction, including without
-- limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
-- the Software, and to permit persons to whom the Software is furnished to do so, subject to the following
-- conditions:
--
-- The above copyright notice and this permission notice shall be included in all copies or substantial
-- portions of the Software.
--
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT
-- LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO
-- EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN
-- AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE
-- OR OTHER DEALINGS IN THE SOFTWARE.
--
-- http://SmartEiffel.loria.fr - SmartEiffel@loria.fr
-- ------------------------------------------------------------------------------------------------------------
*/
/*
  This file (SmartEiffel/sys/runtime/deep_twin.c) contains the basic
  runtime support for the GENERAL.deep_twin feature as well as the basic
  runtime support for the GENERAL.is_deep_equal feature.
  This file is automatically included in the header when `deep_twin' or
  `is_deep_equal' is in the live code of the system.
*/

/* ---------------------------------------------------------------------- */
/* This part was contributed by someone <someanon@yahoo.com>.
   Thank you, Ulysses ;o) */

#ifdef SE_BOOST
#  define NDEBUG 1
#endif
#include <assert.h>

#include "deep_twin.h"

typedef struct bucket {
  void* key;
  void* value;
} bucket;

struct se_hash_table {
  bucket *table, *cursor;
  int count;
  int capacity;
  int threshold;
  int counter;
};

void se_hash_table_clear (se_hash_table *ht);
void se_hash_table_insert(se_hash_table *ht, void* key, void* value);

#define SE_DEEP_TWIN_BUFFER_SIZE 89

se_hash_table* se_hash_table_new() {
  se_hash_table* ht = (se_hash_table*) se_malloc (sizeof (se_hash_table));

  ht->count     = 0;
  ht->capacity  = SE_DEEP_TWIN_BUFFER_SIZE;
  ht->cursor    = NULL;
  ht->threshold = ht->capacity - (ht->capacity >> 2);
  ht->table     = (bucket*)se_malloc(ht->capacity * sizeof(bucket));
  ht->counter   = 0;
  se_hash_table_clear(ht);

  return ht;
}

inline int se_hash_table_counter(se_hash_table *table) { return table->counter; };
inline void se_hash_table_increase_counter(se_hash_table *table) { table->counter++; };
inline void se_hash_table_decrease_counter(se_hash_table *table) { table->counter--; };

/*
  http://www.concentric.net/~Ttwang/tech/addrhash.htm
  2654435761 is the golden ratio of 2^32. The right shift of 3 bits assumes
  that all objects are aligned on the 8 byte boundary. If a system aligns on
  the 4 byte boundary, then a right shift of 2 bits should be done. 
*/
uint32_t address_hash(void* addr, int n) {
  register uint32_t key;
  key = (uint32_t)(long) addr;
  return ((key >> (3+n)) * ((uint32_t)(2654435761U))) & 0x7FFFFFFF;
}

/* find the value for the input key: double hashing.  The ht->capacity has
   to be prime
   http://www.brpreiss.com/books/opus5/html/page242.html#tblhashingprobing
*/
void* se_hash_table_find(se_hash_table *ht, void* key) {
  int numtries = 0;
  int index;
  uint32_t hash, h2;

  hash = address_hash(key, 0);
  while( numtries < ht->capacity ) {
    if(numtries>0) {
      h2 = ( address_hash(key, 1) % (ht->capacity-1) ) + 1;
      hash += h2;
    }
    index = hash % ht->capacity;
    ht->cursor = (ht->table) + index;
    if (NULL==ht->cursor->key) {
      return NULL;
    }
    else if (ht->cursor->key == key) {
      return ht->cursor->value;
    }
    else {
      numtries++;
    }
  }

  assert(0);  /* this should never happen */
  return NULL;
}

/* 
 * Computing a prime tends to be quite a long task, so it may be faster to use
 * a little table of pre-computed primes that may be used. Since each
 * re-allocation is also a costly operation each prime is in the form 2^n-k as in http://primes.utm.edu/lists/2small/0bit.html so that each is roughtly the double of the previous
 */
static const int primes[] = {
    89, /* This was the prime originally used in SmartEiffel */
    (1<<7)-1,
    (1<<8)-5,
    (1<<9)-3,
    (1<<10)-3,
    (1<<11)-9,
    (1<<12)-3,
    (1<<13)-1,
    (1<<14)-3,
    (1<<15)-19,
    (1<<16)-15,
    (1<<17)-1,
    (1<<18)-5,
    (1<<19)-1,
    (1<<20)-3,
    (1<<21)-9,
    (1<<22)-3,
    (1<<23)-15,
    (1<<24)-3,
    (1<<25)-39,
    (1<<26)-5,
    (1<<27)-39,
    (1<<28)-57,
    (1<<29)-3,
    (1<<30)-35
    /* (1<<31)-1 overflows written this way */
    /* This table contains the primes which are slightly smaller than a power
     * of 2, except the first element (89) which is the original size used in
     * SmartEiffel: I guess it have been chosen as a reasonable value that does
     * not require table extension in the vast majority of uses. 
     */

};
static const unsigned int primes_table_size = sizeof(primes)/sizeof(primes[0]);

int next_hash_table_size(int n) {
    /* The first prime number higher than n found in primes table.
       
     * This table contains the primes which are slightly smaller than a power
     * of 2, except the first element 89 which is the original size used in
     * SmartEiffel: I guess it have been chosen as a reasonable value that does
     * not require table extension in the vast majority of uses. 
     
     * If the prime cannot be found in the pre-computed table it could be
     * computed with the original algorithm used in SmartEiffel which seems to
     * me to be an implementation of trial division
     * (http://en.wikipedia.org/wiki/Trial_division) . This latter part is
     * currently unimplemented: it is required when deep twin involves copying
     * more than one billion of reference objects, so it is currently somehow
     * wise to crash when a simple query requires more than four gigabytes of
     * main memory..
     *   Paolo 2011-11-10
     */
  int i, result=0;
  assert (n < primes[primes_table_size-1]);
  for (i=0; i<primes_table_size && primes[i]<n; ++i) result=primes[i];
  assert(result>n);
  return result;
}

void se_hash_table_rehash(se_hash_table *ht) {
  int oldCount    = ht->count;
  int oldCapacity = ht->capacity;
  int newCapacity = next_hash_table_size (oldCapacity);
  bucket *e, *end, *oldTable = ht->table;

  ht->table     = (bucket*)se_malloc(newCapacity * sizeof(bucket));
  ht->threshold = newCapacity - (newCapacity >> 2);
  ht->capacity  = newCapacity;
  se_hash_table_clear(ht);

  end = oldTable + oldCapacity;
  for(e=oldTable; e<end; e++) {
    if(e->key) {
      se_hash_table_insert(ht, e->key, e->value);
    }
  }

  free(oldTable);
}

void se_hash_table_insert(se_hash_table *ht, void* key, void* value) {
  void* old_val;

  assert(ht);
  assert(key);
  assert(value);

  old_val = se_hash_table_find(ht, key);
  if(NULL!=old_val) {
    assert(old_val == value);
    return;
  }
  else {  /* cursor is place to insert */
    ht->cursor->key   = key;
    ht->cursor->value = value;
    ht->count++;
    if(ht->count > ht->threshold) {
      se_hash_table_rehash(ht);
    }
  }
}

void se_hash_table_clear(se_hash_table *ht) {
  int n = ht->capacity * sizeof(bucket);
  memset(ht->table, 0, n);
  ht->count  = 0;
  ht->cursor = NULL;
}

/* ---------------------------------------------------------------------- */

/* The memory buffer used to remember and retrieve already `deep_twin'ed objects will be created when se_deep_twin_start is invoked by Eiffel code (with a NULL pointer); further calls to se_deep_twin_start. se_deep_twin_search se_deep_twin_registeri and se_deep_twin_trats will pass around this hash table.
 */

se_hash_table* se_deep_twin_start (se_hash_table* table) {
  se_hash_table* result;
  if (table == NULL) {
    result = se_hash_table_new();
  } else { 
      result = table;
  }
  /* I would have written the above like this:
     if (table==NULL) result = se_hash_table_new() else result = table;
  */
  se_hash_table_increase_counter(table);
}

void* se_deep_twin_search(se_hash_table* table, void* object) {
    /* Obsolete function, please use se_has_table_find directly */
    assert(0);
  return se_hash_table_find(table, object);
}

void se_deep_twin_register(se_hash_table* table, void* object, void* deep_twin) {
  if (object != NULL) {
    if (se_hash_table_find(table,object) == NULL) {
      se_hash_table_insert(table, object, deep_twin);
    }
  }
}

void* se_deep_twin_trats(se_hash_table* table) {
  se_hash_table_decrease_counter(table);
  if (se_hash_table_counter(table) == 0) {
    se_hash_table_clear(table);
  }
}


/* To count level of nested `deep_equal' calls:
 */
static int se_deep_equal_start_counter = 0;

/* Memory buffer to retrieve already `deep_equal'ed objects:
 */
static void** se_deep_equal_memory1 = NULL;
static void** se_deep_equal_memory2 = NULL;
static size_t se_deep_equal_memory_sizeof = 0;
static int    se_deep_equal_memory_last = -1;

void se_deep_equal_start(void) {
  if (se_deep_equal_start_counter == 0) {
    if (se_deep_equal_memory_sizeof == 0) {
      int s;
      se_deep_equal_memory_sizeof = SE_DEEP_TWIN_BUFFER_SIZE;
      s = (se_deep_equal_memory_sizeof * sizeof(void*));
      se_deep_equal_memory1 = ((void**)se_malloc(s));
      se_deep_equal_memory2 = ((void**)se_malloc(s));
    }
  }
  se_deep_equal_start_counter++;
}

static void se_deep_equal_register(void* object, void* deep) {
  se_deep_equal_memory_last++;
  if (se_deep_equal_memory_last == se_deep_equal_memory_sizeof) {
    int s;
    se_deep_equal_memory_sizeof *= 2;
    s = (se_deep_equal_memory_sizeof * sizeof(void*));
    se_deep_equal_memory1 = ((void**)se_realloc(se_deep_equal_memory1,s));
    se_deep_equal_memory2 = ((void**)se_realloc(se_deep_equal_memory2,s));
  }
  se_deep_equal_memory1[se_deep_equal_memory_last] = object;
  se_deep_equal_memory2[se_deep_equal_memory_last] = deep;
}

int se_deep_equal_search(void* object,void* deep) {
  int i;
  if (object == deep) return 1;
  if ((object != NULL) && (deep != NULL)) {
    for (i = se_deep_equal_memory_last; i >= 0; i--) {
      if (object == se_deep_equal_memory1[i]) {
	if (deep == se_deep_equal_memory2[i]) {
	  return 1;
	}
      }
    }
    se_deep_equal_register(object,deep);
  }
  return 0;
}

void se_deep_equal_trats(void) {
  se_deep_equal_start_counter--;
  if (se_deep_equal_start_counter == 0) {
    se_deep_equal_memory_last = -1;
    if (se_deep_equal_memory_sizeof > SE_DEEP_TWIN_BUFFER_SIZE) {
      free(se_deep_equal_memory1);
      free(se_deep_equal_memory2);
      se_deep_equal_memory1 = NULL;
      se_deep_equal_memory2 = NULL;
      se_deep_equal_memory_sizeof = 0;
    }
  }
}
