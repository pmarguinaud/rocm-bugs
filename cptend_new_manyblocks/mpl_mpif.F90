!mod$ v1 sum:436476a209f4d978
module mpl_mpif
integer(4),parameter::ompi_major_version=5_4
integer(4),parameter::ompi_minor_version=0_4
integer(4),parameter::ompi_release_version=7_4
integer(4),parameter::mpi_offset_kind=8_4
integer(4),parameter::mpi_address_kind=8_4
integer(4),parameter::mpi_integer_kind=4_4
integer(4),parameter::mpi_count_kind=8_4
integer(4),parameter::mpi_status_size=6_4
integer(4),parameter::mpi_max_processor_name=255_4
integer(4),parameter::mpi_max_error_string=255_4
integer(4),parameter::mpi_max_object_name=63_4
integer(4),parameter::mpi_max_library_version_string=255_4
integer(4),parameter::mpi_max_info_key=35_4
integer(4),parameter::mpi_max_info_val=255_4
integer(4),parameter::mpi_max_port_name=1023_4
integer(4),parameter::mpi_max_datarep_string=127_4
integer(4),parameter::mpi_max_pset_name_len=511_4
integer(4),parameter::mpi_max_stringtag_len=1023_4
logical(4),parameter::mpi_subarrays_supported=.false._4
logical(4),parameter::mpi_async_protects_nonblocking=.false._4
integer(4),parameter::mpi_any_source=-1_4
integer(4),parameter::mpi_any_tag=-1_4
integer(4),parameter::mpi_appnum=4_4
integer(4),parameter::mpi_bsend_overhead=128_4
integer(4),parameter::mpi_cart=1_4
integer(4),parameter::mpi_combiner_contiguous=2_4
integer(4),parameter::mpi_combiner_darray=13_4
integer(4),parameter::mpi_combiner_dup=1_4
integer(4),parameter::mpi_combiner_f90_complex=15_4
integer(4),parameter::mpi_combiner_f90_integer=16_4
integer(4),parameter::mpi_combiner_f90_real=14_4
integer(4),parameter::mpi_combiner_hindexed=8_4
integer(4),parameter::mpi_combiner_hindexed_block=18_4
integer(4),parameter::mpi_combiner_hindexed_integer=7_4
integer(4),parameter::mpi_combiner_hvector=5_4
integer(4),parameter::mpi_combiner_hvector_integer=4_4
integer(4),parameter::mpi_combiner_indexed=6_4
integer(4),parameter::mpi_combiner_indexed_block=9_4
integer(4),parameter::mpi_combiner_named=0_4
integer(4),parameter::mpi_combiner_resized=17_4
integer(4),parameter::mpi_combiner_struct=11_4
integer(4),parameter::mpi_combiner_struct_integer=10_4
integer(4),parameter::mpi_combiner_subarray=12_4
integer(4),parameter::mpi_combiner_vector=3_4
integer(4),parameter::mpi_comm_type_hw_guided=13_4
integer(4),parameter::mpi_comm_type_hw_unguided=12_4
integer(4),parameter::mpi_comm_type_shared=0_4
integer(4),parameter::mpi_congruent=1_4
integer(4),parameter::mpi_distribute_block=0_4
integer(4),parameter::mpi_distribute_cyclic=1_4
integer(4),parameter::mpi_distribute_dflt_darg=-1_4
integer(4),parameter::mpi_distribute_none=2_4
integer(4),parameter::mpi_dist_graph=3_4
integer(4),parameter::mpi_error=3_4
integer(4),parameter::mpi_err_access=20_4
integer(4),parameter::mpi_err_amode=21_4
integer(4),parameter::mpi_err_arg=13_4
integer(4),parameter::mpi_err_assert=22_4
integer(4),parameter::mpi_err_bad_file=23_4
integer(4),parameter::mpi_err_base=24_4
integer(4),parameter::mpi_err_buffer=1_4
integer(4),parameter::mpi_err_comm=5_4
integer(4),parameter::mpi_err_conversion=25_4
integer(4),parameter::mpi_err_count=2_4
integer(4),parameter::mpi_err_dims=12_4
integer(4),parameter::mpi_err_disp=26_4
integer(4),parameter::mpi_err_dup_datarep=27_4
integer(4),parameter::mpi_err_file=30_4
integer(4),parameter::mpi_err_file_exists=28_4
integer(4),parameter::mpi_err_file_in_use=29_4
integer(4),parameter::mpi_err_group=9_4
integer(4),parameter::mpi_err_info=34_4
integer(4),parameter::mpi_err_info_key=31_4
integer(4),parameter::mpi_err_info_nokey=32_4
integer(4),parameter::mpi_err_info_value=33_4
integer(4),parameter::mpi_err_intern=17_4
integer(4),parameter::mpi_err_in_status=18_4
integer(4),parameter::mpi_err_io=35_4
integer(4),parameter::mpi_err_keyval=36_4
integer(4),parameter::mpi_err_lastcode=92_4
integer(4),parameter::mpi_err_locktype=37_4
integer(4),parameter::mpi_err_name=38_4
integer(4),parameter::mpi_err_not_same=40_4
integer(4),parameter::mpi_err_no_mem=39_4
integer(4),parameter::mpi_err_no_space=41_4
integer(4),parameter::mpi_err_no_such_file=42_4
integer(4),parameter::mpi_err_op=10_4
integer(4),parameter::mpi_err_other=16_4
integer(4),parameter::mpi_err_pending=19_4
integer(4),parameter::mpi_err_port=43_4
integer(4),parameter::mpi_err_proc_aborted=74_4
integer(4),parameter::mpi_err_proc_failed=75_4
integer(4),parameter::mpi_err_proc_failed_pending=76_4
integer(4),parameter::mpi_err_quota=44_4
integer(4),parameter::mpi_err_rank=6_4
integer(4),parameter::mpi_err_read_only=45_4
integer(4),parameter::mpi_err_request=7_4
integer(4),parameter::mpi_err_revoked=77_4
integer(4),parameter::mpi_err_rma_attach=69_4
integer(4),parameter::mpi_err_rma_conflict=46_4
integer(4),parameter::mpi_err_rma_flavor=70_4
integer(4),parameter::mpi_err_rma_range=68_4
integer(4),parameter::mpi_err_rma_shared=71_4
integer(4),parameter::mpi_err_rma_sync=47_4
integer(4),parameter::mpi_err_root=8_4
integer(4),parameter::mpi_err_service=48_4
integer(4),parameter::mpi_err_session=78_4
integer(4),parameter::mpi_err_size=49_4
integer(4),parameter::mpi_err_spawn=50_4
integer(4),parameter::mpi_err_tag=4_4
integer(4),parameter::mpi_err_topology=11_4
integer(4),parameter::mpi_err_truncate=15_4
integer(4),parameter::mpi_err_type=3_4
integer(4),parameter::mpi_err_unknown=14_4
integer(4),parameter::mpi_err_unsupported_datarep=51_4
integer(4),parameter::mpi_err_unsupported_operation=52_4
integer(4),parameter::mpi_err_value_too_large=79_4
integer(4),parameter::mpi_err_win=53_4
integer(4),parameter::mpi_ft=12_4
integer(4),parameter::mpi_graph=2_4
integer(4),parameter::mpi_host=1_4
integer(4),parameter::mpi_ident=0_4
integer(4),parameter::mpi_io=2_4
integer(4),parameter::mpi_keyval_invalid=-1_4
integer(4),parameter::mpi_lastusedcode=5_4
integer(4),parameter::mpi_lock_exclusive=1_4
integer(4),parameter::mpi_lock_shared=2_4
integer(4),parameter::mpi_mode_nocheck=1_4
integer(4),parameter::mpi_mode_noprecede=2_4
integer(4),parameter::mpi_mode_noput=4_4
integer(4),parameter::mpi_mode_nostore=8_4
integer(4),parameter::mpi_mode_nosucceed=16_4
integer(4),parameter::mpi_order_c=0_4
integer(4),parameter::mpi_order_fortran=1_4
integer(4),parameter::mpi_proc_null=-2_4
integer(4),parameter::mpi_root=-4_4
integer(4),parameter::mpi_similar=2_4
integer(4),parameter::mpi_source=1_4
integer(4),parameter::mpi_subversion=1_4
integer(4),parameter::mpi_success=0_4
integer(4),parameter::mpi_tag=2_4
integer(4),parameter::mpi_tag_ub=0_4
integer(4),parameter::mpi_thread_funneled=1_4
integer(4),parameter::mpi_thread_multiple=3_4
integer(4),parameter::mpi_thread_serialized=2_4
integer(4),parameter::mpi_thread_single=0_4
integer(4),parameter::mpi_typeclass_complex=3_4
integer(4),parameter::mpi_typeclass_integer=1_4
integer(4),parameter::mpi_typeclass_real=2_4
integer(4),parameter::mpi_t_err_cannot_init=56_4
integer(4),parameter::mpi_t_err_cvar_set_never=64_4
integer(4),parameter::mpi_t_err_cvar_set_not_now=63_4
integer(4),parameter::mpi_t_err_invalid=72_4
integer(4),parameter::mpi_t_err_invalid_handle=59_4
integer(4),parameter::mpi_t_err_invalid_index=57_4
integer(4),parameter::mpi_t_err_invalid_item=58_4
integer(4),parameter::mpi_t_err_invalid_session=62_4
integer(4),parameter::mpi_t_err_memory=54_4
integer(4),parameter::mpi_t_err_not_initialized=55_4
integer(4),parameter::mpi_t_err_out_of_handles=60_4
integer(4),parameter::mpi_t_err_out_of_sessions=61_4
integer(4),parameter::mpi_t_err_pvar_no_atomic=67_4
integer(4),parameter::mpi_t_err_pvar_no_startstop=65_4
integer(4),parameter::mpi_t_err_pvar_no_write=66_4
integer(4),parameter::mpi_undefined=-32766_4
integer(4),parameter::mpi_unequal=3_4
integer(4),parameter::mpi_universe_size=6_4
integer(4),parameter::mpi_version=3_4
integer(4),parameter::mpi_win_base=7_4
integer(4),parameter::mpi_win_create_flavor=10_4
integer(4),parameter::mpi_win_disp_unit=9_4
integer(4),parameter::mpi_win_flavor_allocate=2_4
integer(4),parameter::mpi_win_flavor_create=1_4
integer(4),parameter::mpi_win_flavor_dynamic=3_4
integer(4),parameter::mpi_win_flavor_shared=4_4
integer(4),parameter::mpi_win_model=11_4
integer(4),parameter::mpi_win_separate=1_4
integer(4),parameter::mpi_win_size=8_4
integer(4),parameter::mpi_win_unified=0_4
integer(4),parameter::mpi_wtime_is_global=3_4
integer(4),parameter::ompi_comm_type_board=8_4
integer(4),parameter::ompi_comm_type_cluster=11_4
integer(4),parameter::ompi_comm_type_core=2_4
integer(4),parameter::ompi_comm_type_cu=10_4
integer(4),parameter::ompi_comm_type_host=9_4
integer(4),parameter::ompi_comm_type_hwthread=1_4
integer(4),parameter::ompi_comm_type_l1cache=3_4
integer(4),parameter::ompi_comm_type_l2cache=4_4
integer(4),parameter::ompi_comm_type_l3cache=5_4
integer(4),parameter::ompi_comm_type_node=0_4
integer(4),parameter::ompi_comm_type_numa=7_4
integer(4),parameter::ompi_comm_type_socket=6_4
integer(4),parameter::mpi_2complex=26_4
integer(4),parameter::mpi_2double_complex=27_4
integer(4),parameter::mpi_2double_precision=24_4
integer(4),parameter::mpi_2int=52_4
integer(4),parameter::mpi_2integer=25_4
integer(4),parameter::mpi_2real=23_4
integer(4),parameter::mpi_aint=66_4
integer(4),parameter::mpi_band=6_4
integer(4),parameter::mpi_bor=8_4
integer(4),parameter::mpi_bxor=10_4
integer(4),parameter::mpi_byte=1_4
integer(4),parameter::mpi_char=34_4
integer(4),parameter::mpi_character=5_4
integer(4),parameter::mpi_comm_null=2_4
integer(4),parameter::mpi_comm_self=1_4
integer(4),parameter::mpi_comm_world=0_4
integer(4),parameter::mpi_complex=18_4
integer(4),parameter::mpi_complex16=20_4
integer(4),parameter::mpi_complex32=21_4
integer(4),parameter::mpi_complex4=73_4
integer(4),parameter::mpi_complex8=19_4
integer(4),parameter::mpi_count=72_4
integer(4),parameter::mpi_cxx_bool=54_4
integer(4),parameter::mpi_cxx_complex=55_4
integer(4),parameter::mpi_cxx_double_complex=56_4
integer(4),parameter::mpi_cxx_float_complex=55_4
integer(4),parameter::mpi_cxx_long_double_complex=57_4
integer(4),parameter::mpi_c_bool=68_4
integer(4),parameter::mpi_c_complex=69_4
integer(4),parameter::mpi_c_double_complex=70_4
integer(4),parameter::mpi_c_float_complex=69_4
integer(4),parameter::mpi_c_long_double_complex=71_4
integer(4),parameter::mpi_datatype_null=0_4
integer(4),parameter::mpi_double=46_4
integer(4),parameter::mpi_double_complex=22_4
integer(4),parameter::mpi_double_int=49_4
integer(4),parameter::mpi_double_precision=17_4
integer(4),parameter::mpi_errhandler_null=0_4
integer(4),parameter::mpi_errors_abort=3_4
integer(4),parameter::mpi_errors_are_fatal=1_4
integer(4),parameter::mpi_errors_return=2_4
integer(4),parameter::mpi_float=45_4
integer(4),parameter::mpi_float_int=48_4
integer(4),parameter::mpi_group_empty=1_4
integer(4),parameter::mpi_group_null=0_4
integer(4),parameter::mpi_info_env=1_4
integer(4),parameter::mpi_info_null=0_4
integer(4),parameter::mpi_int=39_4
integer(4),parameter::mpi_int16_t=60_4
integer(4),parameter::mpi_int32_t=62_4
integer(4),parameter::mpi_int64_t=64_4
integer(4),parameter::mpi_int8_t=58_4
integer(4),parameter::mpi_integer=7_4
integer(4),parameter::mpi_integer1=8_4
integer(4),parameter::mpi_integer16=12_4
integer(4),parameter::mpi_integer2=9_4
integer(4),parameter::mpi_integer4=10_4
integer(4),parameter::mpi_integer8=11_4
integer(4),parameter::mpi_land=5_4
integer(4),parameter::mpi_lb=4_4
integer(4),parameter::mpi_logical=6_4
integer(4),parameter::mpi_logical1=29_4
integer(4),parameter::mpi_logical2=30_4
integer(4),parameter::mpi_logical4=31_4
integer(4),parameter::mpi_logical8=32_4
integer(4),parameter::mpi_long=41_4
integer(4),parameter::mpi_long_double=47_4
integer(4),parameter::mpi_long_double_int=50_4
integer(4),parameter::mpi_long_int=51_4
integer(4),parameter::mpi_long_long=43_4
integer(4),parameter::mpi_long_long_int=43_4
integer(4),parameter::mpi_lor=7_4
integer(4),parameter::mpi_lxor=9_4
integer(4),parameter::mpi_max=1_4
integer(4),parameter::mpi_maxloc=11_4
integer(4),parameter::mpi_message_no_proc=1_4
integer(4),parameter::mpi_message_null=0_4
integer(4),parameter::mpi_min=2_4
integer(4),parameter::mpi_minloc=12_4
integer(4),parameter::mpi_no_op=14_4
integer(4),parameter::mpi_offset=67_4
integer(4),parameter::mpi_op_null=0_4
integer(4),parameter::mpi_packed=2_4
integer(4),parameter::mpi_prod=4_4
integer(4),parameter::mpi_real=13_4
integer(4),parameter::mpi_real16=16_4
integer(4),parameter::mpi_real2=28_4
integer(4),parameter::mpi_real4=14_4
integer(4),parameter::mpi_real8=15_4
integer(4),parameter::mpi_replace=13_4
integer(4),parameter::mpi_request_null=0_4
integer(4),parameter::mpi_session_null=0_4
integer(4),parameter::mpi_short=37_4
integer(4),parameter::mpi_short_int=53_4
integer(4),parameter::mpi_signed_char=36_4
integer(4),parameter::mpi_sum=3_4
integer(4),parameter::mpi_ub=3_4
integer(4),parameter::mpi_uint16_t=61_4
integer(4),parameter::mpi_uint32_t=63_4
integer(4),parameter::mpi_uint64_t=65_4
integer(4),parameter::mpi_uint8_t=59_4
integer(4),parameter::mpi_unsigned=40_4
integer(4),parameter::mpi_unsigned_char=35_4
integer(4),parameter::mpi_unsigned_long=42_4
integer(4),parameter::mpi_unsigned_long_long=44_4
integer(4),parameter::mpi_unsigned_short=38_4
integer(4),parameter::mpi_wchar=33_4
integer(4),parameter::mpi_win_null=0_4
integer(4),parameter::mpi_mode_append=128_4
integer(4),parameter::mpi_mode_create=1_4
integer(4),parameter::mpi_mode_delete_on_close=16_4
integer(4),parameter::mpi_mode_excl=64_4
integer(4),parameter::mpi_mode_rdonly=2_4
integer(4),parameter::mpi_mode_rdwr=8_4
integer(4),parameter::mpi_mode_sequential=256_4
integer(4),parameter::mpi_mode_unique_open=32_4
integer(4),parameter::mpi_mode_wronly=4_4
integer(4),parameter::mpi_seek_cur=602_4
integer(4),parameter::mpi_seek_end=604_4
integer(4),parameter::mpi_seek_set=600_4
integer(8),parameter::mpi_displacement_current=-54278278_8
integer(4),parameter::mpi_file_null=0_4
procedure()::mpi_null_copy_fn
procedure()::mpi_null_delete_fn
procedure()::mpi_comm_null_copy_fn
procedure()::mpi_comm_null_delete_fn
procedure()::mpi_type_null_copy_fn
procedure()::mpi_type_null_delete_fn
procedure()::mpi_dup_fn
procedure()::mpi_comm_dup_fn
procedure()::mpi_type_dup_fn
procedure()::mpi_win_null_copy_fn
procedure()::mpi_win_null_delete_fn
procedure()::mpi_win_dup_fn
procedure()::mpi_conversion_fn_null
procedure(real(8))::mpi_wtime
procedure(real(8))::mpi_wtick
procedure(real(8))::pmpi_wtick
procedure(real(8))::pmpi_wtime
procedure(integer(8))::mpi_aint_add
procedure(integer(8))::mpi_aint_diff
integer(4)::mpi_bottom
integer(4)::mpi_in_place
character(1_8,1)::mpi_argv_null(1_8:1_8)
character(1_8,1)::mpi_argvs_null(1_8:1_8,1_8:1_8)
integer(4)::mpi_errcodes_ignore(1_8:1_8)
integer(4)::mpi_status_ignore(1_8:6_8)
integer(4)::mpi_statuses_ignore(1_8:6_8,1_8:1_8)
integer(4)::mpi_unweighted(1_8:1_8)
integer(4)::mpi_weights_empty(1_8:1_8)
interface
subroutine mpi_sizeof_character_scalar(x,size,ierror)
character(1_8,1)::x
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_character_r1(x,size,ierror)
character(1_8,1)::x(1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_character_r2(x,size,ierror)
character(1_8,1)::x(1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_character_r3(x,size,ierror)
character(1_8,1)::x(1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_character_r4(x,size,ierror)
character(1_8,1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_character_r5(x,size,ierror)
character(1_8,1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_character_r6(x,size,ierror)
character(1_8,1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_character_r7(x,size,ierror)
character(1_8,1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_character_r8(x,size,ierror)
character(1_8,1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_character_r9(x,size,ierror)
character(1_8,1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_character_r10(x,size,ierror)
character(1_8,1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_character_r11(x,size,ierror)
character(1_8,1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_character_r12(x,size,ierror)
character(1_8,1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_character_r13(x,size,ierror)
character(1_8,1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_character_r14(x,size,ierror)
character(1_8,1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_character_r15(x,size,ierror)
character(1_8,1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex128_scalar(x,size,ierror)
complex(16)::x
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex128_r1(x,size,ierror)
complex(16)::x(1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex128_r2(x,size,ierror)
complex(16)::x(1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex128_r3(x,size,ierror)
complex(16)::x(1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex128_r4(x,size,ierror)
complex(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex128_r5(x,size,ierror)
complex(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex128_r6(x,size,ierror)
complex(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex128_r7(x,size,ierror)
complex(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex128_r8(x,size,ierror)
complex(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex128_r9(x,size,ierror)
complex(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex128_r10(x,size,ierror)
complex(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex128_r11(x,size,ierror)
complex(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex128_r12(x,size,ierror)
complex(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex128_r13(x,size,ierror)
complex(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex128_r14(x,size,ierror)
complex(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex128_r15(x,size,ierror)
complex(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex16_scalar(x,size,ierror)
complex(2)::x
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex16_r1(x,size,ierror)
complex(2)::x(1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex16_r2(x,size,ierror)
complex(2)::x(1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex16_r3(x,size,ierror)
complex(2)::x(1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex16_r4(x,size,ierror)
complex(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex16_r5(x,size,ierror)
complex(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex16_r6(x,size,ierror)
complex(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex16_r7(x,size,ierror)
complex(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex16_r8(x,size,ierror)
complex(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex16_r9(x,size,ierror)
complex(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex16_r10(x,size,ierror)
complex(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex16_r11(x,size,ierror)
complex(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex16_r12(x,size,ierror)
complex(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex16_r13(x,size,ierror)
complex(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex16_r14(x,size,ierror)
complex(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex16_r15(x,size,ierror)
complex(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex32_scalar(x,size,ierror)
complex(4)::x
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex32_r1(x,size,ierror)
complex(4)::x(1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex32_r2(x,size,ierror)
complex(4)::x(1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex32_r3(x,size,ierror)
complex(4)::x(1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex32_r4(x,size,ierror)
complex(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex32_r5(x,size,ierror)
complex(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex32_r6(x,size,ierror)
complex(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex32_r7(x,size,ierror)
complex(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex32_r8(x,size,ierror)
complex(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex32_r9(x,size,ierror)
complex(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex32_r10(x,size,ierror)
complex(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex32_r11(x,size,ierror)
complex(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex32_r12(x,size,ierror)
complex(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex32_r13(x,size,ierror)
complex(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex32_r14(x,size,ierror)
complex(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex32_r15(x,size,ierror)
complex(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex64_scalar(x,size,ierror)
complex(8)::x
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex64_r1(x,size,ierror)
complex(8)::x(1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex64_r2(x,size,ierror)
complex(8)::x(1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex64_r3(x,size,ierror)
complex(8)::x(1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex64_r4(x,size,ierror)
complex(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex64_r5(x,size,ierror)
complex(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex64_r6(x,size,ierror)
complex(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex64_r7(x,size,ierror)
complex(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex64_r8(x,size,ierror)
complex(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex64_r9(x,size,ierror)
complex(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex64_r10(x,size,ierror)
complex(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex64_r11(x,size,ierror)
complex(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex64_r12(x,size,ierror)
complex(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex64_r13(x,size,ierror)
complex(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex64_r14(x,size,ierror)
complex(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_complex64_r15(x,size,ierror)
complex(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int16_scalar(x,size,ierror)
integer(2)::x
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int16_r1(x,size,ierror)
integer(2)::x(1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int16_r2(x,size,ierror)
integer(2)::x(1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int16_r3(x,size,ierror)
integer(2)::x(1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int16_r4(x,size,ierror)
integer(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int16_r5(x,size,ierror)
integer(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int16_r6(x,size,ierror)
integer(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int16_r7(x,size,ierror)
integer(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int16_r8(x,size,ierror)
integer(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int16_r9(x,size,ierror)
integer(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int16_r10(x,size,ierror)
integer(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int16_r11(x,size,ierror)
integer(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int16_r12(x,size,ierror)
integer(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int16_r13(x,size,ierror)
integer(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int16_r14(x,size,ierror)
integer(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int16_r15(x,size,ierror)
integer(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int32_scalar(x,size,ierror)
integer(4)::x
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int32_r1(x,size,ierror)
integer(4)::x(1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int32_r2(x,size,ierror)
integer(4)::x(1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int32_r3(x,size,ierror)
integer(4)::x(1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int32_r4(x,size,ierror)
integer(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int32_r5(x,size,ierror)
integer(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int32_r6(x,size,ierror)
integer(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int32_r7(x,size,ierror)
integer(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int32_r8(x,size,ierror)
integer(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int32_r9(x,size,ierror)
integer(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int32_r10(x,size,ierror)
integer(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int32_r11(x,size,ierror)
integer(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int32_r12(x,size,ierror)
integer(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int32_r13(x,size,ierror)
integer(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int32_r14(x,size,ierror)
integer(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int32_r15(x,size,ierror)
integer(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int64_scalar(x,size,ierror)
integer(8)::x
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int64_r1(x,size,ierror)
integer(8)::x(1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int64_r2(x,size,ierror)
integer(8)::x(1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int64_r3(x,size,ierror)
integer(8)::x(1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int64_r4(x,size,ierror)
integer(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int64_r5(x,size,ierror)
integer(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int64_r6(x,size,ierror)
integer(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int64_r7(x,size,ierror)
integer(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int64_r8(x,size,ierror)
integer(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int64_r9(x,size,ierror)
integer(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int64_r10(x,size,ierror)
integer(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int64_r11(x,size,ierror)
integer(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int64_r12(x,size,ierror)
integer(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int64_r13(x,size,ierror)
integer(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int64_r14(x,size,ierror)
integer(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int64_r15(x,size,ierror)
integer(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int8_scalar(x,size,ierror)
integer(1)::x
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int8_r1(x,size,ierror)
integer(1)::x(1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int8_r2(x,size,ierror)
integer(1)::x(1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int8_r3(x,size,ierror)
integer(1)::x(1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int8_r4(x,size,ierror)
integer(1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int8_r5(x,size,ierror)
integer(1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int8_r6(x,size,ierror)
integer(1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int8_r7(x,size,ierror)
integer(1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int8_r8(x,size,ierror)
integer(1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int8_r9(x,size,ierror)
integer(1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int8_r10(x,size,ierror)
integer(1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int8_r11(x,size,ierror)
integer(1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int8_r12(x,size,ierror)
integer(1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int8_r13(x,size,ierror)
integer(1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int8_r14(x,size,ierror)
integer(1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_int8_r15(x,size,ierror)
integer(1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_logical_scalar(x,size,ierror)
logical(4)::x
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_logical_r1(x,size,ierror)
logical(4)::x(1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_logical_r2(x,size,ierror)
logical(4)::x(1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_logical_r3(x,size,ierror)
logical(4)::x(1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_logical_r4(x,size,ierror)
logical(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_logical_r5(x,size,ierror)
logical(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_logical_r6(x,size,ierror)
logical(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_logical_r7(x,size,ierror)
logical(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_logical_r8(x,size,ierror)
logical(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_logical_r9(x,size,ierror)
logical(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_logical_r10(x,size,ierror)
logical(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_logical_r11(x,size,ierror)
logical(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_logical_r12(x,size,ierror)
logical(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_logical_r13(x,size,ierror)
logical(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_logical_r14(x,size,ierror)
logical(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_logical_r15(x,size,ierror)
logical(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real128_scalar(x,size,ierror)
real(16)::x
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real128_r1(x,size,ierror)
real(16)::x(1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real128_r2(x,size,ierror)
real(16)::x(1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real128_r3(x,size,ierror)
real(16)::x(1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real128_r4(x,size,ierror)
real(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real128_r5(x,size,ierror)
real(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real128_r6(x,size,ierror)
real(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real128_r7(x,size,ierror)
real(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real128_r8(x,size,ierror)
real(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real128_r9(x,size,ierror)
real(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real128_r10(x,size,ierror)
real(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real128_r11(x,size,ierror)
real(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real128_r12(x,size,ierror)
real(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real128_r13(x,size,ierror)
real(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real128_r14(x,size,ierror)
real(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real128_r15(x,size,ierror)
real(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real16_scalar(x,size,ierror)
real(2)::x
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real16_r1(x,size,ierror)
real(2)::x(1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real16_r2(x,size,ierror)
real(2)::x(1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real16_r3(x,size,ierror)
real(2)::x(1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real16_r4(x,size,ierror)
real(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real16_r5(x,size,ierror)
real(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real16_r6(x,size,ierror)
real(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real16_r7(x,size,ierror)
real(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real16_r8(x,size,ierror)
real(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real16_r9(x,size,ierror)
real(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real16_r10(x,size,ierror)
real(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real16_r11(x,size,ierror)
real(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real16_r12(x,size,ierror)
real(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real16_r13(x,size,ierror)
real(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real16_r14(x,size,ierror)
real(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real16_r15(x,size,ierror)
real(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real32_scalar(x,size,ierror)
real(4)::x
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real32_r1(x,size,ierror)
real(4)::x(1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real32_r2(x,size,ierror)
real(4)::x(1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real32_r3(x,size,ierror)
real(4)::x(1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real32_r4(x,size,ierror)
real(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real32_r5(x,size,ierror)
real(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real32_r6(x,size,ierror)
real(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real32_r7(x,size,ierror)
real(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real32_r8(x,size,ierror)
real(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real32_r9(x,size,ierror)
real(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real32_r10(x,size,ierror)
real(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real32_r11(x,size,ierror)
real(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real32_r12(x,size,ierror)
real(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real32_r13(x,size,ierror)
real(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real32_r14(x,size,ierror)
real(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real32_r15(x,size,ierror)
real(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real64_scalar(x,size,ierror)
real(8)::x
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real64_r1(x,size,ierror)
real(8)::x(1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real64_r2(x,size,ierror)
real(8)::x(1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real64_r3(x,size,ierror)
real(8)::x(1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real64_r4(x,size,ierror)
real(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real64_r5(x,size,ierror)
real(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real64_r6(x,size,ierror)
real(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real64_r7(x,size,ierror)
real(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real64_r8(x,size,ierror)
real(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real64_r9(x,size,ierror)
real(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real64_r10(x,size,ierror)
real(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real64_r11(x,size,ierror)
real(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real64_r12(x,size,ierror)
real(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real64_r13(x,size,ierror)
real(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real64_r14(x,size,ierror)
real(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine mpi_sizeof_real64_r15(x,size,ierror)
real(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_character_scalar(x,size,ierror)
character(1_8,1)::x
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_character_r1(x,size,ierror)
character(1_8,1)::x(1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_character_r2(x,size,ierror)
character(1_8,1)::x(1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_character_r3(x,size,ierror)
character(1_8,1)::x(1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_character_r4(x,size,ierror)
character(1_8,1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_character_r5(x,size,ierror)
character(1_8,1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_character_r6(x,size,ierror)
character(1_8,1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_character_r7(x,size,ierror)
character(1_8,1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_character_r8(x,size,ierror)
character(1_8,1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_character_r9(x,size,ierror)
character(1_8,1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_character_r10(x,size,ierror)
character(1_8,1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_character_r11(x,size,ierror)
character(1_8,1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_character_r12(x,size,ierror)
character(1_8,1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_character_r13(x,size,ierror)
character(1_8,1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_character_r14(x,size,ierror)
character(1_8,1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_character_r15(x,size,ierror)
character(1_8,1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex128_scalar(x,size,ierror)
complex(16)::x
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex128_r1(x,size,ierror)
complex(16)::x(1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex128_r2(x,size,ierror)
complex(16)::x(1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex128_r3(x,size,ierror)
complex(16)::x(1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex128_r4(x,size,ierror)
complex(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex128_r5(x,size,ierror)
complex(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex128_r6(x,size,ierror)
complex(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex128_r7(x,size,ierror)
complex(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex128_r8(x,size,ierror)
complex(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex128_r9(x,size,ierror)
complex(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex128_r10(x,size,ierror)
complex(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex128_r11(x,size,ierror)
complex(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex128_r12(x,size,ierror)
complex(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex128_r13(x,size,ierror)
complex(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex128_r14(x,size,ierror)
complex(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex128_r15(x,size,ierror)
complex(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex16_scalar(x,size,ierror)
complex(2)::x
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex16_r1(x,size,ierror)
complex(2)::x(1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex16_r2(x,size,ierror)
complex(2)::x(1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex16_r3(x,size,ierror)
complex(2)::x(1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex16_r4(x,size,ierror)
complex(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex16_r5(x,size,ierror)
complex(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex16_r6(x,size,ierror)
complex(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex16_r7(x,size,ierror)
complex(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex16_r8(x,size,ierror)
complex(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex16_r9(x,size,ierror)
complex(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex16_r10(x,size,ierror)
complex(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex16_r11(x,size,ierror)
complex(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex16_r12(x,size,ierror)
complex(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex16_r13(x,size,ierror)
complex(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex16_r14(x,size,ierror)
complex(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex16_r15(x,size,ierror)
complex(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex32_scalar(x,size,ierror)
complex(4)::x
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex32_r1(x,size,ierror)
complex(4)::x(1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex32_r2(x,size,ierror)
complex(4)::x(1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex32_r3(x,size,ierror)
complex(4)::x(1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex32_r4(x,size,ierror)
complex(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex32_r5(x,size,ierror)
complex(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex32_r6(x,size,ierror)
complex(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex32_r7(x,size,ierror)
complex(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex32_r8(x,size,ierror)
complex(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex32_r9(x,size,ierror)
complex(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex32_r10(x,size,ierror)
complex(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex32_r11(x,size,ierror)
complex(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex32_r12(x,size,ierror)
complex(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex32_r13(x,size,ierror)
complex(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex32_r14(x,size,ierror)
complex(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex32_r15(x,size,ierror)
complex(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex64_scalar(x,size,ierror)
complex(8)::x
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex64_r1(x,size,ierror)
complex(8)::x(1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex64_r2(x,size,ierror)
complex(8)::x(1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex64_r3(x,size,ierror)
complex(8)::x(1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex64_r4(x,size,ierror)
complex(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex64_r5(x,size,ierror)
complex(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex64_r6(x,size,ierror)
complex(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex64_r7(x,size,ierror)
complex(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex64_r8(x,size,ierror)
complex(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex64_r9(x,size,ierror)
complex(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex64_r10(x,size,ierror)
complex(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex64_r11(x,size,ierror)
complex(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex64_r12(x,size,ierror)
complex(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex64_r13(x,size,ierror)
complex(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex64_r14(x,size,ierror)
complex(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_complex64_r15(x,size,ierror)
complex(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int16_scalar(x,size,ierror)
integer(2)::x
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int16_r1(x,size,ierror)
integer(2)::x(1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int16_r2(x,size,ierror)
integer(2)::x(1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int16_r3(x,size,ierror)
integer(2)::x(1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int16_r4(x,size,ierror)
integer(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int16_r5(x,size,ierror)
integer(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int16_r6(x,size,ierror)
integer(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int16_r7(x,size,ierror)
integer(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int16_r8(x,size,ierror)
integer(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int16_r9(x,size,ierror)
integer(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int16_r10(x,size,ierror)
integer(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int16_r11(x,size,ierror)
integer(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int16_r12(x,size,ierror)
integer(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int16_r13(x,size,ierror)
integer(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int16_r14(x,size,ierror)
integer(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int16_r15(x,size,ierror)
integer(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int32_scalar(x,size,ierror)
integer(4)::x
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int32_r1(x,size,ierror)
integer(4)::x(1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int32_r2(x,size,ierror)
integer(4)::x(1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int32_r3(x,size,ierror)
integer(4)::x(1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int32_r4(x,size,ierror)
integer(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int32_r5(x,size,ierror)
integer(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int32_r6(x,size,ierror)
integer(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int32_r7(x,size,ierror)
integer(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int32_r8(x,size,ierror)
integer(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int32_r9(x,size,ierror)
integer(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int32_r10(x,size,ierror)
integer(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int32_r11(x,size,ierror)
integer(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int32_r12(x,size,ierror)
integer(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int32_r13(x,size,ierror)
integer(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int32_r14(x,size,ierror)
integer(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int32_r15(x,size,ierror)
integer(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int64_scalar(x,size,ierror)
integer(8)::x
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int64_r1(x,size,ierror)
integer(8)::x(1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int64_r2(x,size,ierror)
integer(8)::x(1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int64_r3(x,size,ierror)
integer(8)::x(1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int64_r4(x,size,ierror)
integer(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int64_r5(x,size,ierror)
integer(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int64_r6(x,size,ierror)
integer(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int64_r7(x,size,ierror)
integer(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int64_r8(x,size,ierror)
integer(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int64_r9(x,size,ierror)
integer(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int64_r10(x,size,ierror)
integer(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int64_r11(x,size,ierror)
integer(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int64_r12(x,size,ierror)
integer(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int64_r13(x,size,ierror)
integer(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int64_r14(x,size,ierror)
integer(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int64_r15(x,size,ierror)
integer(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int8_scalar(x,size,ierror)
integer(1)::x
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int8_r1(x,size,ierror)
integer(1)::x(1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int8_r2(x,size,ierror)
integer(1)::x(1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int8_r3(x,size,ierror)
integer(1)::x(1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int8_r4(x,size,ierror)
integer(1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int8_r5(x,size,ierror)
integer(1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int8_r6(x,size,ierror)
integer(1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int8_r7(x,size,ierror)
integer(1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int8_r8(x,size,ierror)
integer(1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int8_r9(x,size,ierror)
integer(1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int8_r10(x,size,ierror)
integer(1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int8_r11(x,size,ierror)
integer(1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int8_r12(x,size,ierror)
integer(1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int8_r13(x,size,ierror)
integer(1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int8_r14(x,size,ierror)
integer(1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_int8_r15(x,size,ierror)
integer(1)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_logical_scalar(x,size,ierror)
logical(4)::x
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_logical_r1(x,size,ierror)
logical(4)::x(1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_logical_r2(x,size,ierror)
logical(4)::x(1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_logical_r3(x,size,ierror)
logical(4)::x(1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_logical_r4(x,size,ierror)
logical(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_logical_r5(x,size,ierror)
logical(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_logical_r6(x,size,ierror)
logical(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_logical_r7(x,size,ierror)
logical(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_logical_r8(x,size,ierror)
logical(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_logical_r9(x,size,ierror)
logical(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_logical_r10(x,size,ierror)
logical(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_logical_r11(x,size,ierror)
logical(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_logical_r12(x,size,ierror)
logical(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_logical_r13(x,size,ierror)
logical(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_logical_r14(x,size,ierror)
logical(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_logical_r15(x,size,ierror)
logical(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real128_scalar(x,size,ierror)
real(16)::x
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real128_r1(x,size,ierror)
real(16)::x(1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real128_r2(x,size,ierror)
real(16)::x(1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real128_r3(x,size,ierror)
real(16)::x(1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real128_r4(x,size,ierror)
real(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real128_r5(x,size,ierror)
real(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real128_r6(x,size,ierror)
real(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real128_r7(x,size,ierror)
real(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real128_r8(x,size,ierror)
real(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real128_r9(x,size,ierror)
real(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real128_r10(x,size,ierror)
real(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real128_r11(x,size,ierror)
real(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real128_r12(x,size,ierror)
real(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real128_r13(x,size,ierror)
real(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real128_r14(x,size,ierror)
real(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real128_r15(x,size,ierror)
real(16)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real16_scalar(x,size,ierror)
real(2)::x
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real16_r1(x,size,ierror)
real(2)::x(1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real16_r2(x,size,ierror)
real(2)::x(1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real16_r3(x,size,ierror)
real(2)::x(1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real16_r4(x,size,ierror)
real(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real16_r5(x,size,ierror)
real(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real16_r6(x,size,ierror)
real(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real16_r7(x,size,ierror)
real(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real16_r8(x,size,ierror)
real(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real16_r9(x,size,ierror)
real(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real16_r10(x,size,ierror)
real(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real16_r11(x,size,ierror)
real(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real16_r12(x,size,ierror)
real(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real16_r13(x,size,ierror)
real(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real16_r14(x,size,ierror)
real(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real16_r15(x,size,ierror)
real(2)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real32_scalar(x,size,ierror)
real(4)::x
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real32_r1(x,size,ierror)
real(4)::x(1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real32_r2(x,size,ierror)
real(4)::x(1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real32_r3(x,size,ierror)
real(4)::x(1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real32_r4(x,size,ierror)
real(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real32_r5(x,size,ierror)
real(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real32_r6(x,size,ierror)
real(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real32_r7(x,size,ierror)
real(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real32_r8(x,size,ierror)
real(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real32_r9(x,size,ierror)
real(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real32_r10(x,size,ierror)
real(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real32_r11(x,size,ierror)
real(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real32_r12(x,size,ierror)
real(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real32_r13(x,size,ierror)
real(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real32_r14(x,size,ierror)
real(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real32_r15(x,size,ierror)
real(4)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real64_scalar(x,size,ierror)
real(8)::x
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real64_r1(x,size,ierror)
real(8)::x(1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real64_r2(x,size,ierror)
real(8)::x(1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real64_r3(x,size,ierror)
real(8)::x(1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real64_r4(x,size,ierror)
real(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real64_r5(x,size,ierror)
real(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real64_r6(x,size,ierror)
real(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real64_r7(x,size,ierror)
real(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real64_r8(x,size,ierror)
real(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real64_r9(x,size,ierror)
real(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real64_r10(x,size,ierror)
real(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real64_r11(x,size,ierror)
real(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real64_r12(x,size,ierror)
real(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real64_r13(x,size,ierror)
real(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real64_r14(x,size,ierror)
real(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface
subroutine pmpi_sizeof_real64_r15(x,size,ierror)
real(8)::x(1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:1_8,1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::ierror
end
end interface
interface mpi_sizeof
procedure::mpi_sizeof_character_scalar
procedure::mpi_sizeof_character_r1
procedure::mpi_sizeof_character_r2
procedure::mpi_sizeof_character_r3
procedure::mpi_sizeof_character_r4
procedure::mpi_sizeof_character_r5
procedure::mpi_sizeof_character_r6
procedure::mpi_sizeof_character_r7
procedure::mpi_sizeof_character_r8
procedure::mpi_sizeof_character_r9
procedure::mpi_sizeof_character_r10
procedure::mpi_sizeof_character_r11
procedure::mpi_sizeof_character_r12
procedure::mpi_sizeof_character_r13
procedure::mpi_sizeof_character_r14
procedure::mpi_sizeof_character_r15
procedure::mpi_sizeof_complex128_scalar
procedure::mpi_sizeof_complex128_r1
procedure::mpi_sizeof_complex128_r2
procedure::mpi_sizeof_complex128_r3
procedure::mpi_sizeof_complex128_r4
procedure::mpi_sizeof_complex128_r5
procedure::mpi_sizeof_complex128_r6
procedure::mpi_sizeof_complex128_r7
procedure::mpi_sizeof_complex128_r8
procedure::mpi_sizeof_complex128_r9
procedure::mpi_sizeof_complex128_r10
procedure::mpi_sizeof_complex128_r11
procedure::mpi_sizeof_complex128_r12
procedure::mpi_sizeof_complex128_r13
procedure::mpi_sizeof_complex128_r14
procedure::mpi_sizeof_complex128_r15
procedure::mpi_sizeof_complex16_scalar
procedure::mpi_sizeof_complex16_r1
procedure::mpi_sizeof_complex16_r2
procedure::mpi_sizeof_complex16_r3
procedure::mpi_sizeof_complex16_r4
procedure::mpi_sizeof_complex16_r5
procedure::mpi_sizeof_complex16_r6
procedure::mpi_sizeof_complex16_r7
procedure::mpi_sizeof_complex16_r8
procedure::mpi_sizeof_complex16_r9
procedure::mpi_sizeof_complex16_r10
procedure::mpi_sizeof_complex16_r11
procedure::mpi_sizeof_complex16_r12
procedure::mpi_sizeof_complex16_r13
procedure::mpi_sizeof_complex16_r14
procedure::mpi_sizeof_complex16_r15
procedure::mpi_sizeof_complex32_scalar
procedure::mpi_sizeof_complex32_r1
procedure::mpi_sizeof_complex32_r2
procedure::mpi_sizeof_complex32_r3
procedure::mpi_sizeof_complex32_r4
procedure::mpi_sizeof_complex32_r5
procedure::mpi_sizeof_complex32_r6
procedure::mpi_sizeof_complex32_r7
procedure::mpi_sizeof_complex32_r8
procedure::mpi_sizeof_complex32_r9
procedure::mpi_sizeof_complex32_r10
procedure::mpi_sizeof_complex32_r11
procedure::mpi_sizeof_complex32_r12
procedure::mpi_sizeof_complex32_r13
procedure::mpi_sizeof_complex32_r14
procedure::mpi_sizeof_complex32_r15
procedure::mpi_sizeof_complex64_scalar
procedure::mpi_sizeof_complex64_r1
procedure::mpi_sizeof_complex64_r2
procedure::mpi_sizeof_complex64_r3
procedure::mpi_sizeof_complex64_r4
procedure::mpi_sizeof_complex64_r5
procedure::mpi_sizeof_complex64_r6
procedure::mpi_sizeof_complex64_r7
procedure::mpi_sizeof_complex64_r8
procedure::mpi_sizeof_complex64_r9
procedure::mpi_sizeof_complex64_r10
procedure::mpi_sizeof_complex64_r11
procedure::mpi_sizeof_complex64_r12
procedure::mpi_sizeof_complex64_r13
procedure::mpi_sizeof_complex64_r14
procedure::mpi_sizeof_complex64_r15
procedure::mpi_sizeof_int16_scalar
procedure::mpi_sizeof_int16_r1
procedure::mpi_sizeof_int16_r2
procedure::mpi_sizeof_int16_r3
procedure::mpi_sizeof_int16_r4
procedure::mpi_sizeof_int16_r5
procedure::mpi_sizeof_int16_r6
procedure::mpi_sizeof_int16_r7
procedure::mpi_sizeof_int16_r8
procedure::mpi_sizeof_int16_r9
procedure::mpi_sizeof_int16_r10
procedure::mpi_sizeof_int16_r11
procedure::mpi_sizeof_int16_r12
procedure::mpi_sizeof_int16_r13
procedure::mpi_sizeof_int16_r14
procedure::mpi_sizeof_int16_r15
procedure::mpi_sizeof_int32_scalar
procedure::mpi_sizeof_int32_r1
procedure::mpi_sizeof_int32_r2
procedure::mpi_sizeof_int32_r3
procedure::mpi_sizeof_int32_r4
procedure::mpi_sizeof_int32_r5
procedure::mpi_sizeof_int32_r6
procedure::mpi_sizeof_int32_r7
procedure::mpi_sizeof_int32_r8
procedure::mpi_sizeof_int32_r9
procedure::mpi_sizeof_int32_r10
procedure::mpi_sizeof_int32_r11
procedure::mpi_sizeof_int32_r12
procedure::mpi_sizeof_int32_r13
procedure::mpi_sizeof_int32_r14
procedure::mpi_sizeof_int32_r15
procedure::mpi_sizeof_int64_scalar
procedure::mpi_sizeof_int64_r1
procedure::mpi_sizeof_int64_r2
procedure::mpi_sizeof_int64_r3
procedure::mpi_sizeof_int64_r4
procedure::mpi_sizeof_int64_r5
procedure::mpi_sizeof_int64_r6
procedure::mpi_sizeof_int64_r7
procedure::mpi_sizeof_int64_r8
procedure::mpi_sizeof_int64_r9
procedure::mpi_sizeof_int64_r10
procedure::mpi_sizeof_int64_r11
procedure::mpi_sizeof_int64_r12
procedure::mpi_sizeof_int64_r13
procedure::mpi_sizeof_int64_r14
procedure::mpi_sizeof_int64_r15
procedure::mpi_sizeof_int8_scalar
procedure::mpi_sizeof_int8_r1
procedure::mpi_sizeof_int8_r2
procedure::mpi_sizeof_int8_r3
procedure::mpi_sizeof_int8_r4
procedure::mpi_sizeof_int8_r5
procedure::mpi_sizeof_int8_r6
procedure::mpi_sizeof_int8_r7
procedure::mpi_sizeof_int8_r8
procedure::mpi_sizeof_int8_r9
procedure::mpi_sizeof_int8_r10
procedure::mpi_sizeof_int8_r11
procedure::mpi_sizeof_int8_r12
procedure::mpi_sizeof_int8_r13
procedure::mpi_sizeof_int8_r14
procedure::mpi_sizeof_int8_r15
procedure::mpi_sizeof_logical_scalar
procedure::mpi_sizeof_logical_r1
procedure::mpi_sizeof_logical_r2
procedure::mpi_sizeof_logical_r3
procedure::mpi_sizeof_logical_r4
procedure::mpi_sizeof_logical_r5
procedure::mpi_sizeof_logical_r6
procedure::mpi_sizeof_logical_r7
procedure::mpi_sizeof_logical_r8
procedure::mpi_sizeof_logical_r9
procedure::mpi_sizeof_logical_r10
procedure::mpi_sizeof_logical_r11
procedure::mpi_sizeof_logical_r12
procedure::mpi_sizeof_logical_r13
procedure::mpi_sizeof_logical_r14
procedure::mpi_sizeof_logical_r15
procedure::mpi_sizeof_real128_scalar
procedure::mpi_sizeof_real128_r1
procedure::mpi_sizeof_real128_r2
procedure::mpi_sizeof_real128_r3
procedure::mpi_sizeof_real128_r4
procedure::mpi_sizeof_real128_r5
procedure::mpi_sizeof_real128_r6
procedure::mpi_sizeof_real128_r7
procedure::mpi_sizeof_real128_r8
procedure::mpi_sizeof_real128_r9
procedure::mpi_sizeof_real128_r10
procedure::mpi_sizeof_real128_r11
procedure::mpi_sizeof_real128_r12
procedure::mpi_sizeof_real128_r13
procedure::mpi_sizeof_real128_r14
procedure::mpi_sizeof_real128_r15
procedure::mpi_sizeof_real16_scalar
procedure::mpi_sizeof_real16_r1
procedure::mpi_sizeof_real16_r2
procedure::mpi_sizeof_real16_r3
procedure::mpi_sizeof_real16_r4
procedure::mpi_sizeof_real16_r5
procedure::mpi_sizeof_real16_r6
procedure::mpi_sizeof_real16_r7
procedure::mpi_sizeof_real16_r8
procedure::mpi_sizeof_real16_r9
procedure::mpi_sizeof_real16_r10
procedure::mpi_sizeof_real16_r11
procedure::mpi_sizeof_real16_r12
procedure::mpi_sizeof_real16_r13
procedure::mpi_sizeof_real16_r14
procedure::mpi_sizeof_real16_r15
procedure::mpi_sizeof_real32_scalar
procedure::mpi_sizeof_real32_r1
procedure::mpi_sizeof_real32_r2
procedure::mpi_sizeof_real32_r3
procedure::mpi_sizeof_real32_r4
procedure::mpi_sizeof_real32_r5
procedure::mpi_sizeof_real32_r6
procedure::mpi_sizeof_real32_r7
procedure::mpi_sizeof_real32_r8
procedure::mpi_sizeof_real32_r9
procedure::mpi_sizeof_real32_r10
procedure::mpi_sizeof_real32_r11
procedure::mpi_sizeof_real32_r12
procedure::mpi_sizeof_real32_r13
procedure::mpi_sizeof_real32_r14
procedure::mpi_sizeof_real32_r15
procedure::mpi_sizeof_real64_scalar
procedure::mpi_sizeof_real64_r1
procedure::mpi_sizeof_real64_r2
procedure::mpi_sizeof_real64_r3
procedure::mpi_sizeof_real64_r4
procedure::mpi_sizeof_real64_r5
procedure::mpi_sizeof_real64_r6
procedure::mpi_sizeof_real64_r7
procedure::mpi_sizeof_real64_r8
procedure::mpi_sizeof_real64_r9
procedure::mpi_sizeof_real64_r10
procedure::mpi_sizeof_real64_r11
procedure::mpi_sizeof_real64_r12
procedure::mpi_sizeof_real64_r13
procedure::mpi_sizeof_real64_r14
procedure::mpi_sizeof_real64_r15
end interface
interface pmpi_sizeof
procedure::pmpi_sizeof_character_scalar
procedure::pmpi_sizeof_character_r1
procedure::pmpi_sizeof_character_r2
procedure::pmpi_sizeof_character_r3
procedure::pmpi_sizeof_character_r4
procedure::pmpi_sizeof_character_r5
procedure::pmpi_sizeof_character_r6
procedure::pmpi_sizeof_character_r7
procedure::pmpi_sizeof_character_r8
procedure::pmpi_sizeof_character_r9
procedure::pmpi_sizeof_character_r10
procedure::pmpi_sizeof_character_r11
procedure::pmpi_sizeof_character_r12
procedure::pmpi_sizeof_character_r13
procedure::pmpi_sizeof_character_r14
procedure::pmpi_sizeof_character_r15
procedure::pmpi_sizeof_complex128_scalar
procedure::pmpi_sizeof_complex128_r1
procedure::pmpi_sizeof_complex128_r2
procedure::pmpi_sizeof_complex128_r3
procedure::pmpi_sizeof_complex128_r4
procedure::pmpi_sizeof_complex128_r5
procedure::pmpi_sizeof_complex128_r6
procedure::pmpi_sizeof_complex128_r7
procedure::pmpi_sizeof_complex128_r8
procedure::pmpi_sizeof_complex128_r9
procedure::pmpi_sizeof_complex128_r10
procedure::pmpi_sizeof_complex128_r11
procedure::pmpi_sizeof_complex128_r12
procedure::pmpi_sizeof_complex128_r13
procedure::pmpi_sizeof_complex128_r14
procedure::pmpi_sizeof_complex128_r15
procedure::pmpi_sizeof_complex16_scalar
procedure::pmpi_sizeof_complex16_r1
procedure::pmpi_sizeof_complex16_r2
procedure::pmpi_sizeof_complex16_r3
procedure::pmpi_sizeof_complex16_r4
procedure::pmpi_sizeof_complex16_r5
procedure::pmpi_sizeof_complex16_r6
procedure::pmpi_sizeof_complex16_r7
procedure::pmpi_sizeof_complex16_r8
procedure::pmpi_sizeof_complex16_r9
procedure::pmpi_sizeof_complex16_r10
procedure::pmpi_sizeof_complex16_r11
procedure::pmpi_sizeof_complex16_r12
procedure::pmpi_sizeof_complex16_r13
procedure::pmpi_sizeof_complex16_r14
procedure::pmpi_sizeof_complex16_r15
procedure::pmpi_sizeof_complex32_scalar
procedure::pmpi_sizeof_complex32_r1
procedure::pmpi_sizeof_complex32_r2
procedure::pmpi_sizeof_complex32_r3
procedure::pmpi_sizeof_complex32_r4
procedure::pmpi_sizeof_complex32_r5
procedure::pmpi_sizeof_complex32_r6
procedure::pmpi_sizeof_complex32_r7
procedure::pmpi_sizeof_complex32_r8
procedure::pmpi_sizeof_complex32_r9
procedure::pmpi_sizeof_complex32_r10
procedure::pmpi_sizeof_complex32_r11
procedure::pmpi_sizeof_complex32_r12
procedure::pmpi_sizeof_complex32_r13
procedure::pmpi_sizeof_complex32_r14
procedure::pmpi_sizeof_complex32_r15
procedure::pmpi_sizeof_complex64_scalar
procedure::pmpi_sizeof_complex64_r1
procedure::pmpi_sizeof_complex64_r2
procedure::pmpi_sizeof_complex64_r3
procedure::pmpi_sizeof_complex64_r4
procedure::pmpi_sizeof_complex64_r5
procedure::pmpi_sizeof_complex64_r6
procedure::pmpi_sizeof_complex64_r7
procedure::pmpi_sizeof_complex64_r8
procedure::pmpi_sizeof_complex64_r9
procedure::pmpi_sizeof_complex64_r10
procedure::pmpi_sizeof_complex64_r11
procedure::pmpi_sizeof_complex64_r12
procedure::pmpi_sizeof_complex64_r13
procedure::pmpi_sizeof_complex64_r14
procedure::pmpi_sizeof_complex64_r15
procedure::pmpi_sizeof_int16_scalar
procedure::pmpi_sizeof_int16_r1
procedure::pmpi_sizeof_int16_r2
procedure::pmpi_sizeof_int16_r3
procedure::pmpi_sizeof_int16_r4
procedure::pmpi_sizeof_int16_r5
procedure::pmpi_sizeof_int16_r6
procedure::pmpi_sizeof_int16_r7
procedure::pmpi_sizeof_int16_r8
procedure::pmpi_sizeof_int16_r9
procedure::pmpi_sizeof_int16_r10
procedure::pmpi_sizeof_int16_r11
procedure::pmpi_sizeof_int16_r12
procedure::pmpi_sizeof_int16_r13
procedure::pmpi_sizeof_int16_r14
procedure::pmpi_sizeof_int16_r15
procedure::pmpi_sizeof_int32_scalar
procedure::pmpi_sizeof_int32_r1
procedure::pmpi_sizeof_int32_r2
procedure::pmpi_sizeof_int32_r3
procedure::pmpi_sizeof_int32_r4
procedure::pmpi_sizeof_int32_r5
procedure::pmpi_sizeof_int32_r6
procedure::pmpi_sizeof_int32_r7
procedure::pmpi_sizeof_int32_r8
procedure::pmpi_sizeof_int32_r9
procedure::pmpi_sizeof_int32_r10
procedure::pmpi_sizeof_int32_r11
procedure::pmpi_sizeof_int32_r12
procedure::pmpi_sizeof_int32_r13
procedure::pmpi_sizeof_int32_r14
procedure::pmpi_sizeof_int32_r15
procedure::pmpi_sizeof_int64_scalar
procedure::pmpi_sizeof_int64_r1
procedure::pmpi_sizeof_int64_r2
procedure::pmpi_sizeof_int64_r3
procedure::pmpi_sizeof_int64_r4
procedure::pmpi_sizeof_int64_r5
procedure::pmpi_sizeof_int64_r6
procedure::pmpi_sizeof_int64_r7
procedure::pmpi_sizeof_int64_r8
procedure::pmpi_sizeof_int64_r9
procedure::pmpi_sizeof_int64_r10
procedure::pmpi_sizeof_int64_r11
procedure::pmpi_sizeof_int64_r12
procedure::pmpi_sizeof_int64_r13
procedure::pmpi_sizeof_int64_r14
procedure::pmpi_sizeof_int64_r15
procedure::pmpi_sizeof_int8_scalar
procedure::pmpi_sizeof_int8_r1
procedure::pmpi_sizeof_int8_r2
procedure::pmpi_sizeof_int8_r3
procedure::pmpi_sizeof_int8_r4
procedure::pmpi_sizeof_int8_r5
procedure::pmpi_sizeof_int8_r6
procedure::pmpi_sizeof_int8_r7
procedure::pmpi_sizeof_int8_r8
procedure::pmpi_sizeof_int8_r9
procedure::pmpi_sizeof_int8_r10
procedure::pmpi_sizeof_int8_r11
procedure::pmpi_sizeof_int8_r12
procedure::pmpi_sizeof_int8_r13
procedure::pmpi_sizeof_int8_r14
procedure::pmpi_sizeof_int8_r15
procedure::pmpi_sizeof_logical_scalar
procedure::pmpi_sizeof_logical_r1
procedure::pmpi_sizeof_logical_r2
procedure::pmpi_sizeof_logical_r3
procedure::pmpi_sizeof_logical_r4
procedure::pmpi_sizeof_logical_r5
procedure::pmpi_sizeof_logical_r6
procedure::pmpi_sizeof_logical_r7
procedure::pmpi_sizeof_logical_r8
procedure::pmpi_sizeof_logical_r9
procedure::pmpi_sizeof_logical_r10
procedure::pmpi_sizeof_logical_r11
procedure::pmpi_sizeof_logical_r12
procedure::pmpi_sizeof_logical_r13
procedure::pmpi_sizeof_logical_r14
procedure::pmpi_sizeof_logical_r15
procedure::pmpi_sizeof_real128_scalar
procedure::pmpi_sizeof_real128_r1
procedure::pmpi_sizeof_real128_r2
procedure::pmpi_sizeof_real128_r3
procedure::pmpi_sizeof_real128_r4
procedure::pmpi_sizeof_real128_r5
procedure::pmpi_sizeof_real128_r6
procedure::pmpi_sizeof_real128_r7
procedure::pmpi_sizeof_real128_r8
procedure::pmpi_sizeof_real128_r9
procedure::pmpi_sizeof_real128_r10
procedure::pmpi_sizeof_real128_r11
procedure::pmpi_sizeof_real128_r12
procedure::pmpi_sizeof_real128_r13
procedure::pmpi_sizeof_real128_r14
procedure::pmpi_sizeof_real128_r15
procedure::pmpi_sizeof_real16_scalar
procedure::pmpi_sizeof_real16_r1
procedure::pmpi_sizeof_real16_r2
procedure::pmpi_sizeof_real16_r3
procedure::pmpi_sizeof_real16_r4
procedure::pmpi_sizeof_real16_r5
procedure::pmpi_sizeof_real16_r6
procedure::pmpi_sizeof_real16_r7
procedure::pmpi_sizeof_real16_r8
procedure::pmpi_sizeof_real16_r9
procedure::pmpi_sizeof_real16_r10
procedure::pmpi_sizeof_real16_r11
procedure::pmpi_sizeof_real16_r12
procedure::pmpi_sizeof_real16_r13
procedure::pmpi_sizeof_real16_r14
procedure::pmpi_sizeof_real16_r15
procedure::pmpi_sizeof_real32_scalar
procedure::pmpi_sizeof_real32_r1
procedure::pmpi_sizeof_real32_r2
procedure::pmpi_sizeof_real32_r3
procedure::pmpi_sizeof_real32_r4
procedure::pmpi_sizeof_real32_r5
procedure::pmpi_sizeof_real32_r6
procedure::pmpi_sizeof_real32_r7
procedure::pmpi_sizeof_real32_r8
procedure::pmpi_sizeof_real32_r9
procedure::pmpi_sizeof_real32_r10
procedure::pmpi_sizeof_real32_r11
procedure::pmpi_sizeof_real32_r12
procedure::pmpi_sizeof_real32_r13
procedure::pmpi_sizeof_real32_r14
procedure::pmpi_sizeof_real32_r15
procedure::pmpi_sizeof_real64_scalar
procedure::pmpi_sizeof_real64_r1
procedure::pmpi_sizeof_real64_r2
procedure::pmpi_sizeof_real64_r3
procedure::pmpi_sizeof_real64_r4
procedure::pmpi_sizeof_real64_r5
procedure::pmpi_sizeof_real64_r6
procedure::pmpi_sizeof_real64_r7
procedure::pmpi_sizeof_real64_r8
procedure::pmpi_sizeof_real64_r9
procedure::pmpi_sizeof_real64_r10
procedure::pmpi_sizeof_real64_r11
procedure::pmpi_sizeof_real64_r12
procedure::pmpi_sizeof_real64_r13
procedure::pmpi_sizeof_real64_r14
procedure::pmpi_sizeof_real64_r15
end interface
common/mpi_fortran_bottom/mpi_bottom
common/mpi_fortran_in_place/mpi_in_place
common/mpi_fortran_argv_null/mpi_argv_null
common/mpi_fortran_argvs_null/mpi_argvs_null
common/mpi_fortran_errcodes_ignore/mpi_errcodes_ignore
common/mpi_fortran_status_ignore/mpi_status_ignore
common/mpi_fortran_statuses_ignore/mpi_statuses_ignore
common/mpi_fortran_unweighted/mpi_unweighted
common/mpi_fortran_weights_empty/mpi_weights_empty
end
