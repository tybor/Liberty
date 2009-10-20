deferred class LLVM_TYPE_FACTORY
	-- A factory of LLVM_TYPEs

inherit WRAPPER_FACTORY[LLVM_TYPE]

insert 
	CORE_EXTERNALS
	EXCEPTIONS

feature 
	wrapper (a_pointer: POINTER): LLVM_TYPE is
		-- The LLVM_TYPE for `a_pointer' of the fittest type.
	local type: LLVMTYPE_KIND_ENUM
	do
		type.change_value(llvmget_type_kind(a_pointer))
		-- The following long conditional instruction ideally should be an
		-- inspect instruction but current compiler don't allow instructions
		-- like "when.type.void_type_kind_low_level ....."
		if type.is_void_type_kind  then create {LLVM_VOID_TYPE} Result
		--elseif type.is_double_type_kind  then create {} Result
		--elseif type.is_x_86_fp_80type_kind  then create {} Result
		--elseif type.is_fp_128type_kind  then create {} Result
		--elseif type.is_ppc__fp_128type_kind  then create {} Result
		elseif type.is_label_type_kind  then create {LLVM_LABEL_TYPE} Result
		--elseif type.is_integer_type_kind  then create {} Result
		elseif type.is_function_type_kind  then create {LLVM_FUNCTION_TYPE} Result
		elseif type.is_struct_type_kind  then create {LLVM_STRUCT_TYPE} Result
		elseif type.is_array_type_kind  then create {LLVM_ARRAY_TYPE} Result
		elseif type.is_pointer_type_kind  then create {LLVM_POINTER_TYPE} Result
		elseif type.is_opaque_type_kind  then create {LLVM_OPAQUE_TYPE} Result
		elseif type.is_vector_type_kind  then create {LLVM_VECTOR_TYPE} Result
		--elseif type.is_metadata_type_kind  then create {} Result
		else raise("LLVM_TYPE_FACTORY.wrapper: unknown type")
		end
	end
end -- class LLVM_TYPE_FACTORY