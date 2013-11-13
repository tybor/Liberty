#ifdef __cplusplus
extern "C" {
#endif
/*
ANSI C code generated by 
Liberty Eiffel The GNU Eiffel Compiler, Eiffel tools and libraries
    release 2013.11 (Charles Adler, Jr.)

Copyright (C), 2011-2013 - C.ADRIAN, P.REDAELLI, R.MACK
    http://www.liberty-eiffel.org

Original SmartEiffel code:
Copyright (C), 1994-2002 - INRIA - LORIA - ESIAL UHP Nancy 1 - FRANCE
Copyright (C), 2003-2005 - INRIA - LORIA - IUT Charlemagne Nancy 2 - FRANCE
D.COLNET, P.RIBET, C.ADRIAN, V.CROIZIER, F.MERIZEN
    http://smarteiffel.loria.fr
C Compiler options used: -pipe -O2 -fno-gcse
*/

#ifdef __cplusplus
}
#endif
#include "compile_to_c.h"
#ifdef __cplusplus
extern "C" {
#endif

/*NATIVE_ARRAY[IFTHEN]*/T1393 r1393realloc(T1393 C,T2 a1,T2 a2){
T1393 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1393copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[IFTHEN]*/void r1393copy_from(T1393 C,T1393 a1,T2 a2){
/*RF3:copy_slice_from*/r1393copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[IFTHEN]*/void r1393clear(T1393 C,T2 a1,T2 a2){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[IFTHEN]*/void r1393clear_all(T1393 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[IFTHEN]*/void r1393remove(T1393 C,T2 a1,T2 a2){
T2 _i=0;
_i=a1;
while(1){
/*until*/if((_i)==(a2)) break;
/*RF7:put*/(C)[_i]=(/*RF8:item*/(C)[/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/]/*:RF8*/);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[IFTHEN]*/void r1393remove_first(T1393 C,T2 a1){
T2 _i=0;
while(1){
/*until*/if((_i)==(a1)) break;
/*RF7:put*/(C)[_i]=(/*RF8:item*/(C)[/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/]/*:RF8*/);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[IFTHEN]*/void r1393copy_slice_from(T1393 C,T1393 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[WHEN_ITEM]*/T1394 r1394realloc(T1394 C,T2 a1,T2 a2){
T1394 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1394copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[WHEN_ITEM]*/void r1394copy_from(T1394 C,T1394 a1,T2 a2){
/*RF3:copy_slice_from*/r1394copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[WHEN_ITEM]*/void r1394clear(T1394 C,T2 a1,T2 a2){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[WHEN_ITEM]*/void r1394clear_all(T1394 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[WHEN_ITEM]*/void r1394copy_slice_from(T1394 C,T1394 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[INSTRUCTION]*/T1395 r1395realloc(T1395 C,T2 a1,T2 a2){
T1395 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1395copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[INSTRUCTION]*/void r1395copy_from(T1395 C,T1395 a1,T2 a2){
/*RF3:copy_slice_from*/r1395copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[INSTRUCTION]*/void r1395clear(T1395 C,T2 a1,T2 a2){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[INSTRUCTION]*/void r1395clear_all(T1395 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[INSTRUCTION]*/void r1395remove_first(T1395 C,T2 a1){
T2 _i=0;
while(1){
/*until*/if((_i)==(a1)) break;
/*RF7:put*/(C)[_i]=(/*RF8:item*/(C)[/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/]/*:RF8*/);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[INSTRUCTION]*/void r1395copy_slice_from(T1395 C,T1395 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[OPEN_OPERAND]*/T1396 r1396realloc(T1396 C,T2 a1,T2 a2){
T1396 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1396copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[OPEN_OPERAND]*/void r1396copy_from(T1396 C,T1396 a1,T2 a2){
/*RF3:copy_slice_from*/r1396copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[OPEN_OPERAND]*/void r1396clear(T1396 C,T2 a1,T2 a2){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[OPEN_OPERAND]*/void r1396clear_all(T1396 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[OPEN_OPERAND]*/void r1396copy_slice_from(T1396 C,T1396 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[CLOSED_OPERAND]*/T1398 r1398realloc(T1398 C,T2 a1,T2 a2){
T1398 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1398copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[CLOSED_OPERAND]*/void r1398copy_from(T1398 C,T1398 a1,T2 a2){
/*RF3:copy_slice_from*/r1398copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[CLOSED_OPERAND]*/void r1398clear(T1398 C,T2 a1,T2 a2){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[CLOSED_OPERAND]*/void r1398clear_all(T1398 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[CLOSED_OPERAND]*/void r1398copy_slice_from(T1398 C,T1398 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[HASHED_DICTIONARY_NODE[CLIENT_LIST,FEATURE_NAME]]*/void r1401clear_all(T1401 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[FEATURE_CLAUSE]*/T1402 r1402realloc(T1402 C,T2 a1,T2 a2){
T1402 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1402copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[FEATURE_CLAUSE]*/void r1402copy_from(T1402 C,T1402 a1,T2 a2){
/*RF3:copy_slice_from*/r1402copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[FEATURE_CLAUSE]*/void r1402clear(T1402 C,T2 a1,T2 a2){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[FEATURE_CLAUSE]*/void r1402clear_all(T1402 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[FEATURE_CLAUSE]*/void r1402copy_slice_from(T1402 C,T1402 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[CREATION_CLAUSE]*/T1403 r1403realloc(T1403 C,T2 a1,T2 a2){
T1403 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1403copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[CREATION_CLAUSE]*/void r1403copy_from(T1403 C,T1403 a1,T2 a2){
/*RF3:copy_slice_from*/r1403copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[CREATION_CLAUSE]*/void r1403clear(T1403 C,T2 a1,T2 a2){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[CREATION_CLAUSE]*/void r1403clear_all(T1403 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[CREATION_CLAUSE]*/void r1403copy_slice_from(T1403 C,T1403 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[INDEX_CLAUSE]*/T1404 r1404realloc(T1404 C,T2 a1,T2 a2){
T1404 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1404copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[INDEX_CLAUSE]*/void r1404copy_from(T1404 C,T1404 a1,T2 a2){
/*RF3:copy_slice_from*/r1404copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[INDEX_CLAUSE]*/void r1404set_slice_with(T1404 C,T0* a1,T2 a2,T2 a3){
T2 _i=0;
_i=a2;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a3)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(a1);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[INDEX_CLAUSE]*/void r1404clear_all(T1404 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[INDEX_CLAUSE]*/void r1404set_all_with(T1404 C,T0* a1,T2 a2){
/*RF3:set_slice_with*/r1404set_slice_with(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[INDEX_CLAUSE]*/void r1404copy_slice_from(T1404 C,T1404 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[HASHED_DICTIONARY_NODE[WEAK_REFERENCE[ANY_HASHED_BIJECTIVE_DICTIONARY_NODE],STRING]]*/void r1405clear_all(T1405 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_2]*/T1408 r1408realloc(T1408 C,T2 a1,T2 a2){
T1408 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1408copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_2]*/void r1408copy_from(T1408 C,T1408 a1,T2 a2){
/*RF3:copy_slice_from*/r1408copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_2]*/void r1408clear(T1408 C,T2 a1,T2 a2){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_2]*/void r1408set_slice_with(T1408 C,T0* a1,T2 a2,T2 a3){
T2 _i=0;
_i=a2;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a3)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(a1);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_2]*/void r1408clear_all(T1408 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_2]*/void r1408set_all_with(T1408 C,T0* a1,T2 a2){
/*RF3:set_slice_with*/r1408set_slice_with(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_2]*/void r1408copy_slice_from(T1408 C,T1408 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[AVL_SET_NODE[LIVE_TYPE]]*/T1409 r1409realloc(T1409 C,T2 a1,T2 a2){
T1409 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1409copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[AVL_SET_NODE[LIVE_TYPE]]*/void r1409copy_from(T1409 C,T1409 a1,T2 a2){
/*RF3:copy_slice_from*/r1409copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[AVL_SET_NODE[LIVE_TYPE]]*/void r1409clear(T1409 C,T2 a1,T2 a2){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[AVL_SET_NODE[LIVE_TYPE]]*/void r1409clear_all(T1409 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[AVL_SET_NODE[LIVE_TYPE]]*/void r1409copy_slice_from(T1409 C,T1409 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[HASHED_DICTIONARY_NODE[RECYCLING_POOL[AVL_TREE_NODE_ANY],FIXED_STRING]]*/void r1412clear_all(T1412 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[HASHED_SET_NODE[GRAPH_NODE]]*/void r1415clear_all(T1415 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[RENAME_PAIR]*/T1421 r1421realloc(T1421 C,T2 a1,T2 a2){
T1421 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1421copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[RENAME_PAIR]*/void r1421copy_from(T1421 C,T1421 a1,T2 a2){
/*RF3:copy_slice_from*/r1421copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[RENAME_PAIR]*/void r1421clear(T1421 C,T2 a1,T2 a2){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[RENAME_PAIR]*/void r1421clear_all(T1421 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[RENAME_PAIR]*/void r1421copy_slice_from(T1421 C,T1421 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[HASHED_DICTIONARY_NODE[EXPRESSION,TYPE]]*/void r1424clear_all(T1424 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[HASHED_DICTIONARY_NODE[PROCESS_POSIX,INTEGER_32]]*/void r1431clear_all(T1431 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[HASHED_DICTIONARY_NODE[PROCESS_WIN32,INTEGER_32]]*/void r1434clear_all(T1434 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[LINKED_LIST[TUPLE[CHARACTER,INTEGER_32]]]*/void r1443clear_all(T1443 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[AVL_DICTIONARY_NODE[INTEGER_32,INTEGER_32]]*/T1444 r1444realloc(T1444 C,T2 a1,T2 a2){
T1444 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1444copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[AVL_DICTIONARY_NODE[INTEGER_32,INTEGER_32]]*/void r1444copy_from(T1444 C,T1444 a1,T2 a2){
/*RF3:copy_slice_from*/r1444copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[AVL_DICTIONARY_NODE[INTEGER_32,INTEGER_32]]*/void r1444clear(T1444 C,T2 a1,T2 a2){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[AVL_DICTIONARY_NODE[INTEGER_32,INTEGER_32]]*/void r1444clear_all(T1444 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[AVL_DICTIONARY_NODE[INTEGER_32,INTEGER_32]]*/void r1444copy_slice_from(T1444 C,T1444 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[HASHED_DICTIONARY_NODE[WEAK_REFERENCE[ANY_LINKED_LIST_NODE],STRING]]*/void r1447clear_all(T1447 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[AGENT_CREATION]*/T1470 r1470realloc(T1470 C,T2 a1,T2 a2){
T1470 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1470copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[AGENT_CREATION]*/T2 r1470fast_index_of(T1470 C,T0* a1,T2 a2,T2 a3){
/*[INTERNAL_C_LOCAL list*/
T6 tmp0;
/*INTERNAL_C_LOCAL list]*/
T2 R=0;
R=a2;
while(1){
tmp0/*or else*/=((T6)(/*RF8:>*/((int32_t)(R))>(a3)/*:RF8*/));
if(tmp0/*or else*/){
}
else{
tmp0/*or else*/=((T6)((a1)==((void*)(/*RF8:item*/(C)[R]/*:RF8*/))));
}
/*until*/if(tmp0/*or else*/) break;
R=/*RF8:+*/((int32_t)(R))+(INT32_C(1))/*:RF8*/;
}
return R;
}/*--*/

/*NATIVE_ARRAY[AGENT_CREATION]*/void r1470copy_from(T1470 C,T1470 a1,T2 a2){
/*RF3:copy_slice_from*/r1470copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[AGENT_CREATION]*/void r1470clear(T1470 C,T2 a1,T2 a2){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[AGENT_CREATION]*/void r1470clear_all(T1470 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[AGENT_CREATION]*/void r1470copy_slice_from(T1470 C,T1470 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[HASHED_DICTIONARY_NODE[TUPLE[TYPE,TYPE],TYPE]]*/void r1480clear_all(T1480 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[HASHED_DICTIONARY_NODE[TYPE,TYPE]]*/void r1484clear_all(T1484 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[HASHED_SET_NODE[NATIVE_PLUG_IN]]*/void r1486clear_all(T1486 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[HASHED_DICTIONARY_NODE[DICTIONARY[PLUGIN,STRING],STRING]]*/void r1491clear_all(T1491 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[HASHED_DICTIONARY_NODE[PLUGIN,STRING]]*/void r1494clear_all(T1494 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[FORMAL_ARG_LIST]*/T1498 r1498realloc(T1498 C,T2 a1,T2 a2){
T1498 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1498copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[FORMAL_ARG_LIST]*/void r1498copy_from(T1498 C,T1498 a1,T2 a2){
/*RF3:copy_slice_from*/r1498copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[FORMAL_ARG_LIST]*/void r1498clear(T1498 C,T2 a1,T2 a2){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[FORMAL_ARG_LIST]*/void r1498clear_all(T1498 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[FORMAL_ARG_LIST]*/void r1498copy_slice_from(T1498 C,T1498 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[FAST_ARRAY[E_OLD]]*/T1499 r1499realloc(T1499 C,T2 a1,T2 a2){
T1499 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1499copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[FAST_ARRAY[E_OLD]]*/void r1499copy_from(T1499 C,T1499 a1,T2 a2){
/*RF3:copy_slice_from*/r1499copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[FAST_ARRAY[E_OLD]]*/void r1499clear(T1499 C,T2 a1,T2 a2){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[FAST_ARRAY[E_OLD]]*/void r1499clear_all(T1499 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[FAST_ARRAY[E_OLD]]*/void r1499copy_slice_from(T1499 C,T1499 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[E_OLD]*/T1500 r1500realloc(T1500 C,T2 a1,T2 a2){
T1500 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1500copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[E_OLD]*/void r1500copy_from(T1500 C,T1500 a1,T2 a2){
/*RF3:copy_slice_from*/r1500copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[E_OLD]*/void r1500clear(T1500 C,T2 a1,T2 a2){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[E_OLD]*/void r1500clear_all(T1500 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[E_OLD]*/void r1500copy_slice_from(T1500 C,T1500 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[HASHED_SET_NODE[FEATURE_STAMP]]*/void r1501clear_all(T1501 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[ADDRESS_OF]*/T1504 r1504realloc(T1504 C,T2 a1,T2 a2){
T1504 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1504copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[ADDRESS_OF]*/void r1504copy_from(T1504 C,T1504 a1,T2 a2){
/*RF3:copy_slice_from*/r1504copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[ADDRESS_OF]*/void r1504clear(T1504 C,T2 a1,T2 a2){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[ADDRESS_OF]*/void r1504clear_all(T1504 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[ADDRESS_OF]*/void r1504copy_slice_from(T1504 C,T1504 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[INLINE_MEMO]*/T1505 r1505realloc(T1505 C,T2 a1,T2 a2){
T1505 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1505copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[INLINE_MEMO]*/void r1505copy_from(T1505 C,T1505 a1,T2 a2){
/*RF3:copy_slice_from*/r1505copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[INLINE_MEMO]*/void r1505clear(T1505 C,T2 a1,T2 a2){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[INLINE_MEMO]*/void r1505clear_all(T1505 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[INLINE_MEMO]*/void r1505copy_slice_from(T1505 C,T1505 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[POINTER]*/void r1506clear_all(T1506 C,T2 a1){
T8 _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[AVL_SET_NODE[POSITION]]*/void r1507clear(T1507 C,T2 a1,T2 a2){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[AVL_SET_NODE[POSITION]]*/void r1507clear_all(T1507 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[CODE_CONTEXT]*/T1542 r1542realloc(T1542 C,T2 a1,T2 a2){
T1542 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1542copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[CODE_CONTEXT]*/void r1542copy_from(T1542 C,T1542 a1,T2 a2){
/*RF3:copy_slice_from*/r1542copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[CODE_CONTEXT]*/void r1542clear(T1542 C,T2 a1,T2 a2){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[CODE_CONTEXT]*/void r1542clear_all(T1542 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[CODE_CONTEXT]*/void r1542copy_slice_from(T1542 C,T1542 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[FAST_ARRAY[CODE_CONTEXT]]*/T1543 r1543realloc(T1543 C,T2 a1,T2 a2){
T1543 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1543copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[FAST_ARRAY[CODE_CONTEXT]]*/void r1543copy_from(T1543 C,T1543 a1,T2 a2){
/*RF3:copy_slice_from*/r1543copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[FAST_ARRAY[CODE_CONTEXT]]*/void r1543move(T1543 C,T2 a1,T2 a2,T2 a3){
T2 _i=0;
if((a3)==(INT8_C(0))){
}
else{
if(/*RF8:<*/((int32_t)(a3))<(INT32_C(0))/*:RF8*/){
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[/*RF8:+*/((int32_t)(_i))+(a3)/*:RF8*/]=(/*RF8:item*/(C)[_i]/*:RF8*/);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}
else{
_i=a2;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(a1)/*:RF8*/) break;
/*RF7:put*/(C)[/*RF8:+*/((int32_t)(_i))+(a3)/*:RF8*/]=(/*RF8:item*/(C)[_i]/*:RF8*/);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}
}
}/*--*/

/*NATIVE_ARRAY[FAST_ARRAY[CODE_CONTEXT]]*/void r1543clear(T1543 C,T2 a1,T2 a2){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[FAST_ARRAY[CODE_CONTEXT]]*/void r1543set_slice_with(T1543 C,T0* a1,T2 a2,T2 a3){
T2 _i=0;
_i=a2;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a3)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(a1);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[FAST_ARRAY[CODE_CONTEXT]]*/void r1543clear_all(T1543 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[FAST_ARRAY[CODE_CONTEXT]]*/void r1543set_all_with(T1543 C,T0* a1,T2 a2){
/*RF3:set_slice_with*/r1543set_slice_with(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[FAST_ARRAY[CODE_CONTEXT]]*/void r1543copy_slice_from(T1543 C,T1543 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_6]*/T1544 r1544realloc(T1544 C,T2 a1,T2 a2){
T1544 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1544copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_6]*/void r1544copy_from(T1544 C,T1544 a1,T2 a2){
/*RF3:copy_slice_from*/r1544copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_6]*/void r1544clear(T1544 C,T2 a1,T2 a2){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_6]*/void r1544clear_all(T1544 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_6]*/void r1544copy_slice_from(T1544 C,T1544 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[HASHED_DICTIONARY_NODE[AGENT_ARGS,STRING]]*/void r1546clear_all(T1546 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_5]*/T1548 r1548realloc(T1548 C,T2 a1,T2 a2){
T1548 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1548copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_5]*/void r1548copy_from(T1548 C,T1548 a1,T2 a2){
/*RF3:copy_slice_from*/r1548copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_5]*/void r1548clear(T1548 C,T2 a1,T2 a2){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_5]*/void r1548clear_all(T1548 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[RUN_FEATURE_5]*/void r1548copy_slice_from(T1548 C,T1548 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[INTERNAL_C_LOCAL]*/T1549 r1549realloc(T1549 C,T2 a1,T2 a2){
T1549 R=(void*)0;
R=/*RF8:calloc*/se_calloc(a2,sizeof(T0*))/*:RF8*/;
/*RF3:copy_from*/r1549copy_from(R,C,/*RF8:-*/((int32_t)(a1))-(INT32_C(1))/*:RF8*/);
/*:RF3*/return R;
}/*--*/

/*NATIVE_ARRAY[INTERNAL_C_LOCAL]*/void r1549copy_from(T1549 C,T1549 a1,T2 a2){
/*RF3:copy_slice_from*/r1549copy_slice_from(C,a1,INT32_C(0),a2);
/*:RF3*/}/*--*/

/*NATIVE_ARRAY[INTERNAL_C_LOCAL]*/void r1549clear(T1549 C,T2 a1,T2 a2){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:>*/((int32_t)(_i))>(a2)/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:+*/((int32_t)(_i))+(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[INTERNAL_C_LOCAL]*/void r1549clear_all(T1549 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

/*NATIVE_ARRAY[INTERNAL_C_LOCAL]*/void r1549copy_slice_from(T1549 C,T1549 a1,T2 a2,T2 a3){
/*RF7:slice_copy*/{/*slice_copy*/
int a3tmp=a2;
memcpy((C)+(INT32_C(0)),(a1)+a3tmp,((a3)-a3tmp+1)*sizeof(T0*));}
/*:RF7*/}/*--*/

/*NATIVE_ARRAY[HASHED_DICTIONARY_NODE[TAGGED_INTEGER,INTEGER_32]]*/void r1569clear_all(T1569 C,T2 a1){
T0* _v=(void*)0;
T2 _i=0;
_i=a1;
while(1){
/*until*/if(/*RF8:<*/((int32_t)(_i))<(INT32_C(0))/*:RF8*/) break;
/*RF7:put*/(C)[_i]=(_v);
/*:RF7*/_i=/*RF8:-*/((int32_t)(_i))-(INT32_C(1))/*:RF8*/;
}
}/*--*/

#ifdef __cplusplus
}
#endif
