expanded class DEEP_COPIER[AN_ITEM]
	-- Recursive pure-Eiffel implementation of ANY's deep_twin feature, based on introspection infrastructure offered by INTERNALS

	-- Implemenation wants to mimick the original C code made by the compiler
	-- which is recursive and using a static, specialized hashed dictionary. 
 
	-- It would require changing deep_twin like this:
	
	-- frozen deep_twin: like Current is
	--  local copier: DEEP_COPIER[like Current]
	--  do
	--	 Result := copier.deep_copy(Current)
    -- end
 
	-- but it "stresses" current compiler(2011-11-02) a little too much: a
	-- simplicistic program that execute deep twin on a 2 element list requires
	-- more than 780mb of memory to be compiled. As of now it may be better to
	-- make C runtime thread-safe, or at least rehentrant.


creation default_pointer

feature
	deep_copy (an_item: AN_ITEM): AN_ITEM is
		-- A deep copy of `an_item'. 
	require an_item/=Void
	local copied: AVL_SET[INTERNALS] 
	do
		create copied.make -- TODO: just create copied; 
		Result ::= deep_copy_with(an_item.to_internals,copied).object
	ensure 
		an_item.generating_type.is_equal(Result.generating_type) and then
		an_item.is_deep_equal(Result)
	end

	deep_copy_with (some_internals: INTERNALS; copied: AVL_SET[INTERNALS]): INTERNALS is
		-- A deep-copy of some_internals
	local i: INTEGER
	do
		if not copied.fast_has(some_internals) then
			copied.add(some_internals)
			Result := some_internals.twin -- get an internals of the same type
			Result.make_blank -- initialize a new object
			-- Recursively copy all attributes
			from i := 1 until i>some_internals.type_attribute_count 
			loop
				if some_internals.type_attribute_is_expanded(i) then
					Result.set_object_attribute(some_internals.object_attribute(i),i)
				else
					Result.set_object_attribute
					(deep_copy_with(some_internals.object_attribute(i),copied),i)
				end
				i := i+1
			end
		else Result := copied.fast_at(some_internals)
		end
	end
end -- class DEEP_COPIER

-- /*LINKED_LIST[STRING]*/T0* r190deep_twin(se_dump_stack*caller,T190* C){
-- /*[INTERNAL_C_LOCAL list*/
-- T0* tmp0;
-- /*INTERNAL_C_LOCAL list]*/
-- T0* R=(void*)0;
-- void**locals[1];
-- static se_frame_descriptor fd={"deep_twin"" LINKED_LIST[STRING]",1,1,"%R190%Result%R190%",1};
-- se_dump_stack ds;
-- ds.fd=&fd;
-- ds.current=(void*)&C;
-- ds.p=0x01A08216/*l130c11/any.e*/;
-- ds.caller=caller;
-- ds.locals=locals;
-- ds.exception_origin=NULL;
-- locals[0]=(void**)&R;
-- set_dump_stack_top(&ds);/*link*/
-- se_deep_twin_start();
-- R=se_deep_twin_search((void*)C);
-- if(R == NULL){
-- tmp0/*deeptwin*/=((T0*)(new190()));
-- R=tmp0/*deeptwin*/;
-- *((T190*)tmp0/*deeptwin*/)=*C;
-- se_deep_twin_register(((T0*)C),tmp0/*deeptwin*/);
-- if(((T190*)tmp0/*deeptwin*/)->_first_link!=NULL){
-- ((T190*)tmp0/*deeptwin*/)->_first_link=r191deep_twin(&ds,(T191*)(((T190*)tmp0/*deeptwin*/)->_first_link));
-- }
-- if(((T190*)tmp0/*deeptwin*/)->_last_link!=NULL){
-- ((T190*)tmp0/*deeptwin*/)->_last_link=r191deep_twin(&ds,(T191*)(((T190*)tmp0/*deeptwin*/)->_last_link));
-- }
-- if(((T190*)tmp0/*deeptwin*/)->_mem_lnk!=NULL){
-- ((T190*)tmp0/*deeptwin*/)->_mem_lnk=r191deep_twin(&ds,(T191*)(((T190*)tmp0/*deeptwin*/)->_mem_lnk));
-- }
-- if(((T190*)tmp0/*deeptwin*/)->_free_nodes!=NULL){
-- ((T190*)tmp0/*deeptwin*/)->_free_nodes=r194deep_twin(&ds,(T194*)(((T190*)tmp0/*deeptwin*/)->_free_nodes));
-- }
-- }
-- se_deep_twin_trats()
-- /*tmp0.unlock*/
-- ;
-- if(se_rci(caller,C))se_i190(&ds,C);
-- set_dump_stack_top(caller);/*unlink*/
-- return R;
-- }/*--*/
-- 

