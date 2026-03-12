!mod$ v1 sum:0bf408bba53a39f3
!need$ c7710e3598d4961b n mpl_send_mod
!need$ 90b689daff3e3c45 n mpl_recv_mod
!need$ 9bd279974f1c69f5 n mpl_barrier_mod
!need$ 436476a209f4d978 n mpl_mpif
!need$ 2d97711792dc972b n ec_parkind
!need$ 14c904233f628ad5 n mpl_data_module
!need$ 594d9db76b447338 n mpl_message_mod
module mpl_allgather_mod
use ec_parkind,only:jpim
use mpl_mpif,only:ompi_major_version
use mpl_mpif,only:ompi_minor_version
use mpl_mpif,only:ompi_release_version
use mpl_mpif,only:mpi_offset_kind
use mpl_mpif,only:mpi_address_kind
use mpl_mpif,only:mpi_integer_kind
use mpl_mpif,only:mpi_count_kind
use mpl_mpif,only:mpi_status_size
use mpl_mpif,only:mpi_max_processor_name
use mpl_mpif,only:mpi_max_error_string
use mpl_mpif,only:mpi_max_object_name
use mpl_mpif,only:mpi_max_library_version_string
use mpl_mpif,only:mpi_max_info_key
use mpl_mpif,only:mpi_max_info_val
use mpl_mpif,only:mpi_max_port_name
use mpl_mpif,only:mpi_max_datarep_string
use mpl_mpif,only:mpi_max_pset_name_len
use mpl_mpif,only:mpi_max_stringtag_len
use mpl_mpif,only:mpi_subarrays_supported
use mpl_mpif,only:mpi_async_protects_nonblocking
use mpl_mpif,only:mpi_any_source
use mpl_mpif,only:mpi_any_tag
use mpl_mpif,only:mpi_appnum
use mpl_mpif,only:mpi_bsend_overhead
use mpl_mpif,only:mpi_cart
use mpl_mpif,only:mpi_combiner_contiguous
use mpl_mpif,only:mpi_combiner_darray
use mpl_mpif,only:mpi_combiner_dup
use mpl_mpif,only:mpi_combiner_f90_complex
use mpl_mpif,only:mpi_combiner_f90_integer
use mpl_mpif,only:mpi_combiner_f90_real
use mpl_mpif,only:mpi_combiner_hindexed
use mpl_mpif,only:mpi_combiner_hindexed_block
use mpl_mpif,only:mpi_combiner_hindexed_integer
use mpl_mpif,only:mpi_combiner_hvector
use mpl_mpif,only:mpi_combiner_hvector_integer
use mpl_mpif,only:mpi_combiner_indexed
use mpl_mpif,only:mpi_combiner_indexed_block
use mpl_mpif,only:mpi_combiner_named
use mpl_mpif,only:mpi_combiner_resized
use mpl_mpif,only:mpi_combiner_struct
use mpl_mpif,only:mpi_combiner_struct_integer
use mpl_mpif,only:mpi_combiner_subarray
use mpl_mpif,only:mpi_combiner_vector
use mpl_mpif,only:mpi_comm_type_hw_guided
use mpl_mpif,only:mpi_comm_type_hw_unguided
use mpl_mpif,only:mpi_comm_type_shared
use mpl_mpif,only:mpi_congruent
use mpl_mpif,only:mpi_distribute_block
use mpl_mpif,only:mpi_distribute_cyclic
use mpl_mpif,only:mpi_distribute_dflt_darg
use mpl_mpif,only:mpi_distribute_none
use mpl_mpif,only:mpi_dist_graph
use mpl_mpif,only:mpi_error
use mpl_mpif,only:mpi_err_access
use mpl_mpif,only:mpi_err_amode
use mpl_mpif,only:mpi_err_arg
use mpl_mpif,only:mpi_err_assert
use mpl_mpif,only:mpi_err_bad_file
use mpl_mpif,only:mpi_err_base
use mpl_mpif,only:mpi_err_buffer
use mpl_mpif,only:mpi_err_comm
use mpl_mpif,only:mpi_err_conversion
use mpl_mpif,only:mpi_err_count
use mpl_mpif,only:mpi_err_dims
use mpl_mpif,only:mpi_err_disp
use mpl_mpif,only:mpi_err_dup_datarep
use mpl_mpif,only:mpi_err_file
use mpl_mpif,only:mpi_err_file_exists
use mpl_mpif,only:mpi_err_file_in_use
use mpl_mpif,only:mpi_err_group
use mpl_mpif,only:mpi_err_info
use mpl_mpif,only:mpi_err_info_key
use mpl_mpif,only:mpi_err_info_nokey
use mpl_mpif,only:mpi_err_info_value
use mpl_mpif,only:mpi_err_intern
use mpl_mpif,only:mpi_err_in_status
use mpl_mpif,only:mpi_err_io
use mpl_mpif,only:mpi_err_keyval
use mpl_mpif,only:mpi_err_lastcode
use mpl_mpif,only:mpi_err_locktype
use mpl_mpif,only:mpi_err_name
use mpl_mpif,only:mpi_err_not_same
use mpl_mpif,only:mpi_err_no_mem
use mpl_mpif,only:mpi_err_no_space
use mpl_mpif,only:mpi_err_no_such_file
use mpl_mpif,only:mpi_err_op
use mpl_mpif,only:mpi_err_other
use mpl_mpif,only:mpi_err_pending
use mpl_mpif,only:mpi_err_port
use mpl_mpif,only:mpi_err_proc_aborted
use mpl_mpif,only:mpi_err_proc_failed
use mpl_mpif,only:mpi_err_proc_failed_pending
use mpl_mpif,only:mpi_err_quota
use mpl_mpif,only:mpi_err_rank
use mpl_mpif,only:mpi_err_read_only
use mpl_mpif,only:mpi_err_request
use mpl_mpif,only:mpi_err_revoked
use mpl_mpif,only:mpi_err_rma_attach
use mpl_mpif,only:mpi_err_rma_conflict
use mpl_mpif,only:mpi_err_rma_flavor
use mpl_mpif,only:mpi_err_rma_range
use mpl_mpif,only:mpi_err_rma_shared
use mpl_mpif,only:mpi_err_rma_sync
use mpl_mpif,only:mpi_err_root
use mpl_mpif,only:mpi_err_service
use mpl_mpif,only:mpi_err_session
use mpl_mpif,only:mpi_err_size
use mpl_mpif,only:mpi_err_spawn
use mpl_mpif,only:mpi_err_tag
use mpl_mpif,only:mpi_err_topology
use mpl_mpif,only:mpi_err_truncate
use mpl_mpif,only:mpi_err_type
use mpl_mpif,only:mpi_err_unknown
use mpl_mpif,only:mpi_err_unsupported_datarep
use mpl_mpif,only:mpi_err_unsupported_operation
use mpl_mpif,only:mpi_err_value_too_large
use mpl_mpif,only:mpi_err_win
use mpl_mpif,only:mpi_ft
use mpl_mpif,only:mpi_graph
use mpl_mpif,only:mpi_host
use mpl_mpif,only:mpi_ident
use mpl_mpif,only:mpi_io
use mpl_mpif,only:mpi_keyval_invalid
use mpl_mpif,only:mpi_lastusedcode
use mpl_mpif,only:mpi_lock_exclusive
use mpl_mpif,only:mpi_lock_shared
use mpl_mpif,only:mpi_mode_nocheck
use mpl_mpif,only:mpi_mode_noprecede
use mpl_mpif,only:mpi_mode_noput
use mpl_mpif,only:mpi_mode_nostore
use mpl_mpif,only:mpi_mode_nosucceed
use mpl_mpif,only:mpi_order_c
use mpl_mpif,only:mpi_order_fortran
use mpl_mpif,only:mpi_proc_null
use mpl_mpif,only:mpi_root
use mpl_mpif,only:mpi_similar
use mpl_mpif,only:mpi_source
use mpl_mpif,only:mpi_subversion
use mpl_mpif,only:mpi_success
use mpl_mpif,only:mpi_tag
use mpl_mpif,only:mpi_tag_ub
use mpl_mpif,only:mpi_thread_funneled
use mpl_mpif,only:mpi_thread_multiple
use mpl_mpif,only:mpi_thread_serialized
use mpl_mpif,only:mpi_thread_single
use mpl_mpif,only:mpi_typeclass_complex
use mpl_mpif,only:mpi_typeclass_integer
use mpl_mpif,only:mpi_typeclass_real
use mpl_mpif,only:mpi_t_err_cannot_init
use mpl_mpif,only:mpi_t_err_cvar_set_never
use mpl_mpif,only:mpi_t_err_cvar_set_not_now
use mpl_mpif,only:mpi_t_err_invalid
use mpl_mpif,only:mpi_t_err_invalid_handle
use mpl_mpif,only:mpi_t_err_invalid_index
use mpl_mpif,only:mpi_t_err_invalid_item
use mpl_mpif,only:mpi_t_err_invalid_session
use mpl_mpif,only:mpi_t_err_memory
use mpl_mpif,only:mpi_t_err_not_initialized
use mpl_mpif,only:mpi_t_err_out_of_handles
use mpl_mpif,only:mpi_t_err_out_of_sessions
use mpl_mpif,only:mpi_t_err_pvar_no_atomic
use mpl_mpif,only:mpi_t_err_pvar_no_startstop
use mpl_mpif,only:mpi_t_err_pvar_no_write
use mpl_mpif,only:mpi_undefined
use mpl_mpif,only:mpi_unequal
use mpl_mpif,only:mpi_universe_size
use mpl_mpif,only:mpi_version
use mpl_mpif,only:mpi_win_base
use mpl_mpif,only:mpi_win_create_flavor
use mpl_mpif,only:mpi_win_disp_unit
use mpl_mpif,only:mpi_win_flavor_allocate
use mpl_mpif,only:mpi_win_flavor_create
use mpl_mpif,only:mpi_win_flavor_dynamic
use mpl_mpif,only:mpi_win_flavor_shared
use mpl_mpif,only:mpi_win_model
use mpl_mpif,only:mpi_win_separate
use mpl_mpif,only:mpi_win_size
use mpl_mpif,only:mpi_win_unified
use mpl_mpif,only:mpi_wtime_is_global
use mpl_mpif,only:ompi_comm_type_board
use mpl_mpif,only:ompi_comm_type_cluster
use mpl_mpif,only:ompi_comm_type_core
use mpl_mpif,only:ompi_comm_type_cu
use mpl_mpif,only:ompi_comm_type_host
use mpl_mpif,only:ompi_comm_type_hwthread
use mpl_mpif,only:ompi_comm_type_l1cache
use mpl_mpif,only:ompi_comm_type_l2cache
use mpl_mpif,only:ompi_comm_type_l3cache
use mpl_mpif,only:ompi_comm_type_node
use mpl_mpif,only:ompi_comm_type_numa
use mpl_mpif,only:ompi_comm_type_socket
use mpl_mpif,only:mpi_2complex
use mpl_mpif,only:mpi_2double_complex
use mpl_mpif,only:mpi_2double_precision
use mpl_mpif,only:mpi_2int
use mpl_mpif,only:mpi_2integer
use mpl_mpif,only:mpi_2real
use mpl_mpif,only:mpi_aint
use mpl_mpif,only:mpi_band
use mpl_mpif,only:mpi_bor
use mpl_mpif,only:mpi_bxor
use mpl_mpif,only:mpi_byte
use mpl_mpif,only:mpi_char
use mpl_mpif,only:mpi_character
use mpl_mpif,only:mpi_comm_null
use mpl_mpif,only:mpi_comm_self
use mpl_mpif,only:mpi_comm_world
use mpl_mpif,only:mpi_complex
use mpl_mpif,only:mpi_complex16
use mpl_mpif,only:mpi_complex32
use mpl_mpif,only:mpi_complex4
use mpl_mpif,only:mpi_complex8
use mpl_mpif,only:mpi_count
use mpl_mpif,only:mpi_cxx_bool
use mpl_mpif,only:mpi_cxx_complex
use mpl_mpif,only:mpi_cxx_double_complex
use mpl_mpif,only:mpi_cxx_float_complex
use mpl_mpif,only:mpi_cxx_long_double_complex
use mpl_mpif,only:mpi_c_bool
use mpl_mpif,only:mpi_c_complex
use mpl_mpif,only:mpi_c_double_complex
use mpl_mpif,only:mpi_c_float_complex
use mpl_mpif,only:mpi_c_long_double_complex
use mpl_mpif,only:mpi_datatype_null
use mpl_mpif,only:mpi_double
use mpl_mpif,only:mpi_double_complex
use mpl_mpif,only:mpi_double_int
use mpl_mpif,only:mpi_double_precision
use mpl_mpif,only:mpi_errhandler_null
use mpl_mpif,only:mpi_errors_abort
use mpl_mpif,only:mpi_errors_are_fatal
use mpl_mpif,only:mpi_errors_return
use mpl_mpif,only:mpi_float
use mpl_mpif,only:mpi_float_int
use mpl_mpif,only:mpi_group_empty
use mpl_mpif,only:mpi_group_null
use mpl_mpif,only:mpi_info_env
use mpl_mpif,only:mpi_info_null
use mpl_mpif,only:mpi_int
use mpl_mpif,only:mpi_int16_t
use mpl_mpif,only:mpi_int32_t
use mpl_mpif,only:mpi_int64_t
use mpl_mpif,only:mpi_int8_t
use mpl_mpif,only:mpi_integer
use mpl_mpif,only:mpi_integer1
use mpl_mpif,only:mpi_integer16
use mpl_mpif,only:mpi_integer2
use mpl_mpif,only:mpi_integer4
use mpl_mpif,only:mpi_integer8
use mpl_mpif,only:mpi_land
use mpl_mpif,only:mpi_lb
use mpl_mpif,only:mpi_logical
use mpl_mpif,only:mpi_logical1
use mpl_mpif,only:mpi_logical2
use mpl_mpif,only:mpi_logical4
use mpl_mpif,only:mpi_logical8
use mpl_mpif,only:mpi_long
use mpl_mpif,only:mpi_long_double
use mpl_mpif,only:mpi_long_double_int
use mpl_mpif,only:mpi_long_int
use mpl_mpif,only:mpi_long_long
use mpl_mpif,only:mpi_long_long_int
use mpl_mpif,only:mpi_lor
use mpl_mpif,only:mpi_lxor
use mpl_mpif,only:mpi_max
use mpl_mpif,only:mpi_maxloc
use mpl_mpif,only:mpi_message_no_proc
use mpl_mpif,only:mpi_message_null
use mpl_mpif,only:mpi_min
use mpl_mpif,only:mpi_minloc
use mpl_mpif,only:mpi_no_op
use mpl_mpif,only:mpi_offset
use mpl_mpif,only:mpi_op_null
use mpl_mpif,only:mpi_packed
use mpl_mpif,only:mpi_prod
use mpl_mpif,only:mpi_real
use mpl_mpif,only:mpi_real16
use mpl_mpif,only:mpi_real2
use mpl_mpif,only:mpi_real4
use mpl_mpif,only:mpi_real8
use mpl_mpif,only:mpi_replace
use mpl_mpif,only:mpi_request_null
use mpl_mpif,only:mpi_session_null
use mpl_mpif,only:mpi_short
use mpl_mpif,only:mpi_short_int
use mpl_mpif,only:mpi_signed_char
use mpl_mpif,only:mpi_sum
use mpl_mpif,only:mpi_ub
use mpl_mpif,only:mpi_uint16_t
use mpl_mpif,only:mpi_uint32_t
use mpl_mpif,only:mpi_uint64_t
use mpl_mpif,only:mpi_uint8_t
use mpl_mpif,only:mpi_unsigned
use mpl_mpif,only:mpi_unsigned_char
use mpl_mpif,only:mpi_unsigned_long
use mpl_mpif,only:mpi_unsigned_long_long
use mpl_mpif,only:mpi_unsigned_short
use mpl_mpif,only:mpi_wchar
use mpl_mpif,only:mpi_win_null
use mpl_mpif,only:mpi_mode_append
use mpl_mpif,only:mpi_mode_create
use mpl_mpif,only:mpi_mode_delete_on_close
use mpl_mpif,only:mpi_mode_excl
use mpl_mpif,only:mpi_mode_rdonly
use mpl_mpif,only:mpi_mode_rdwr
use mpl_mpif,only:mpi_mode_sequential
use mpl_mpif,only:mpi_mode_unique_open
use mpl_mpif,only:mpi_mode_wronly
use mpl_mpif,only:mpi_seek_cur
use mpl_mpif,only:mpi_seek_end
use mpl_mpif,only:mpi_seek_set
use mpl_mpif,only:mpi_displacement_current
use mpl_mpif,only:mpi_file_null
use mpl_mpif,only:mpi_null_copy_fn
use mpl_mpif,only:mpi_null_delete_fn
use mpl_mpif,only:mpi_comm_null_copy_fn
use mpl_mpif,only:mpi_comm_null_delete_fn
use mpl_mpif,only:mpi_type_null_copy_fn
use mpl_mpif,only:mpi_type_null_delete_fn
use mpl_mpif,only:mpi_dup_fn
use mpl_mpif,only:mpi_comm_dup_fn
use mpl_mpif,only:mpi_type_dup_fn
use mpl_mpif,only:mpi_win_null_copy_fn
use mpl_mpif,only:mpi_win_null_delete_fn
use mpl_mpif,only:mpi_win_dup_fn
use mpl_mpif,only:mpi_conversion_fn_null
use mpl_mpif,only:mpi_wtime
use mpl_mpif,only:mpi_wtick
use mpl_mpif,only:pmpi_wtick
use mpl_mpif,only:pmpi_wtime
use mpl_mpif,only:mpi_aint_add
use mpl_mpif,only:mpi_aint_diff
use mpl_mpif,only:mpi_sizeof_character_scalar
use mpl_mpif,only:mpi_sizeof_character_r1
use mpl_mpif,only:mpi_sizeof_character_r2
use mpl_mpif,only:mpi_sizeof_character_r3
use mpl_mpif,only:mpi_sizeof_character_r4
use mpl_mpif,only:mpi_sizeof_character_r5
use mpl_mpif,only:mpi_sizeof_character_r6
use mpl_mpif,only:mpi_sizeof_character_r7
use mpl_mpif,only:mpi_sizeof_character_r8
use mpl_mpif,only:mpi_sizeof_character_r9
use mpl_mpif,only:mpi_sizeof_character_r10
use mpl_mpif,only:mpi_sizeof_character_r11
use mpl_mpif,only:mpi_sizeof_character_r12
use mpl_mpif,only:mpi_sizeof_character_r13
use mpl_mpif,only:mpi_sizeof_character_r14
use mpl_mpif,only:mpi_sizeof_character_r15
use mpl_mpif,only:mpi_sizeof_complex128_scalar
use mpl_mpif,only:mpi_sizeof_complex128_r1
use mpl_mpif,only:mpi_sizeof_complex128_r2
use mpl_mpif,only:mpi_sizeof_complex128_r3
use mpl_mpif,only:mpi_sizeof_complex128_r4
use mpl_mpif,only:mpi_sizeof_complex128_r5
use mpl_mpif,only:mpi_sizeof_complex128_r6
use mpl_mpif,only:mpi_sizeof_complex128_r7
use mpl_mpif,only:mpi_sizeof_complex128_r8
use mpl_mpif,only:mpi_sizeof_complex128_r9
use mpl_mpif,only:mpi_sizeof_complex128_r10
use mpl_mpif,only:mpi_sizeof_complex128_r11
use mpl_mpif,only:mpi_sizeof_complex128_r12
use mpl_mpif,only:mpi_sizeof_complex128_r13
use mpl_mpif,only:mpi_sizeof_complex128_r14
use mpl_mpif,only:mpi_sizeof_complex128_r15
use mpl_mpif,only:mpi_sizeof_complex16_scalar
use mpl_mpif,only:mpi_sizeof_complex16_r1
use mpl_mpif,only:mpi_sizeof_complex16_r2
use mpl_mpif,only:mpi_sizeof_complex16_r3
use mpl_mpif,only:mpi_sizeof_complex16_r4
use mpl_mpif,only:mpi_sizeof_complex16_r5
use mpl_mpif,only:mpi_sizeof_complex16_r6
use mpl_mpif,only:mpi_sizeof_complex16_r7
use mpl_mpif,only:mpi_sizeof_complex16_r8
use mpl_mpif,only:mpi_sizeof_complex16_r9
use mpl_mpif,only:mpi_sizeof_complex16_r10
use mpl_mpif,only:mpi_sizeof_complex16_r11
use mpl_mpif,only:mpi_sizeof_complex16_r12
use mpl_mpif,only:mpi_sizeof_complex16_r13
use mpl_mpif,only:mpi_sizeof_complex16_r14
use mpl_mpif,only:mpi_sizeof_complex16_r15
use mpl_mpif,only:mpi_sizeof_complex32_scalar
use mpl_mpif,only:mpi_sizeof_complex32_r1
use mpl_mpif,only:mpi_sizeof_complex32_r2
use mpl_mpif,only:mpi_sizeof_complex32_r3
use mpl_mpif,only:mpi_sizeof_complex32_r4
use mpl_mpif,only:mpi_sizeof_complex32_r5
use mpl_mpif,only:mpi_sizeof_complex32_r6
use mpl_mpif,only:mpi_sizeof_complex32_r7
use mpl_mpif,only:mpi_sizeof_complex32_r8
use mpl_mpif,only:mpi_sizeof_complex32_r9
use mpl_mpif,only:mpi_sizeof_complex32_r10
use mpl_mpif,only:mpi_sizeof_complex32_r11
use mpl_mpif,only:mpi_sizeof_complex32_r12
use mpl_mpif,only:mpi_sizeof_complex32_r13
use mpl_mpif,only:mpi_sizeof_complex32_r14
use mpl_mpif,only:mpi_sizeof_complex32_r15
use mpl_mpif,only:mpi_sizeof_complex64_scalar
use mpl_mpif,only:mpi_sizeof_complex64_r1
use mpl_mpif,only:mpi_sizeof_complex64_r2
use mpl_mpif,only:mpi_sizeof_complex64_r3
use mpl_mpif,only:mpi_sizeof_complex64_r4
use mpl_mpif,only:mpi_sizeof_complex64_r5
use mpl_mpif,only:mpi_sizeof_complex64_r6
use mpl_mpif,only:mpi_sizeof_complex64_r7
use mpl_mpif,only:mpi_sizeof_complex64_r8
use mpl_mpif,only:mpi_sizeof_complex64_r9
use mpl_mpif,only:mpi_sizeof_complex64_r10
use mpl_mpif,only:mpi_sizeof_complex64_r11
use mpl_mpif,only:mpi_sizeof_complex64_r12
use mpl_mpif,only:mpi_sizeof_complex64_r13
use mpl_mpif,only:mpi_sizeof_complex64_r14
use mpl_mpif,only:mpi_sizeof_complex64_r15
use mpl_mpif,only:mpi_sizeof_int16_scalar
use mpl_mpif,only:mpi_sizeof_int16_r1
use mpl_mpif,only:mpi_sizeof_int16_r2
use mpl_mpif,only:mpi_sizeof_int16_r3
use mpl_mpif,only:mpi_sizeof_int16_r4
use mpl_mpif,only:mpi_sizeof_int16_r5
use mpl_mpif,only:mpi_sizeof_int16_r6
use mpl_mpif,only:mpi_sizeof_int16_r7
use mpl_mpif,only:mpi_sizeof_int16_r8
use mpl_mpif,only:mpi_sizeof_int16_r9
use mpl_mpif,only:mpi_sizeof_int16_r10
use mpl_mpif,only:mpi_sizeof_int16_r11
use mpl_mpif,only:mpi_sizeof_int16_r12
use mpl_mpif,only:mpi_sizeof_int16_r13
use mpl_mpif,only:mpi_sizeof_int16_r14
use mpl_mpif,only:mpi_sizeof_int16_r15
use mpl_mpif,only:mpi_sizeof_int32_scalar
use mpl_mpif,only:mpi_sizeof_int32_r1
use mpl_mpif,only:mpi_sizeof_int32_r2
use mpl_mpif,only:mpi_sizeof_int32_r3
use mpl_mpif,only:mpi_sizeof_int32_r4
use mpl_mpif,only:mpi_sizeof_int32_r5
use mpl_mpif,only:mpi_sizeof_int32_r6
use mpl_mpif,only:mpi_sizeof_int32_r7
use mpl_mpif,only:mpi_sizeof_int32_r8
use mpl_mpif,only:mpi_sizeof_int32_r9
use mpl_mpif,only:mpi_sizeof_int32_r10
use mpl_mpif,only:mpi_sizeof_int32_r11
use mpl_mpif,only:mpi_sizeof_int32_r12
use mpl_mpif,only:mpi_sizeof_int32_r13
use mpl_mpif,only:mpi_sizeof_int32_r14
use mpl_mpif,only:mpi_sizeof_int32_r15
use mpl_mpif,only:mpi_sizeof_int64_scalar
use mpl_mpif,only:mpi_sizeof_int64_r1
use mpl_mpif,only:mpi_sizeof_int64_r2
use mpl_mpif,only:mpi_sizeof_int64_r3
use mpl_mpif,only:mpi_sizeof_int64_r4
use mpl_mpif,only:mpi_sizeof_int64_r5
use mpl_mpif,only:mpi_sizeof_int64_r6
use mpl_mpif,only:mpi_sizeof_int64_r7
use mpl_mpif,only:mpi_sizeof_int64_r8
use mpl_mpif,only:mpi_sizeof_int64_r9
use mpl_mpif,only:mpi_sizeof_int64_r10
use mpl_mpif,only:mpi_sizeof_int64_r11
use mpl_mpif,only:mpi_sizeof_int64_r12
use mpl_mpif,only:mpi_sizeof_int64_r13
use mpl_mpif,only:mpi_sizeof_int64_r14
use mpl_mpif,only:mpi_sizeof_int64_r15
use mpl_mpif,only:mpi_sizeof_int8_scalar
use mpl_mpif,only:mpi_sizeof_int8_r1
use mpl_mpif,only:mpi_sizeof_int8_r2
use mpl_mpif,only:mpi_sizeof_int8_r3
use mpl_mpif,only:mpi_sizeof_int8_r4
use mpl_mpif,only:mpi_sizeof_int8_r5
use mpl_mpif,only:mpi_sizeof_int8_r6
use mpl_mpif,only:mpi_sizeof_int8_r7
use mpl_mpif,only:mpi_sizeof_int8_r8
use mpl_mpif,only:mpi_sizeof_int8_r9
use mpl_mpif,only:mpi_sizeof_int8_r10
use mpl_mpif,only:mpi_sizeof_int8_r11
use mpl_mpif,only:mpi_sizeof_int8_r12
use mpl_mpif,only:mpi_sizeof_int8_r13
use mpl_mpif,only:mpi_sizeof_int8_r14
use mpl_mpif,only:mpi_sizeof_int8_r15
use mpl_mpif,only:mpi_sizeof_logical_scalar
use mpl_mpif,only:mpi_sizeof_logical_r1
use mpl_mpif,only:mpi_sizeof_logical_r2
use mpl_mpif,only:mpi_sizeof_logical_r3
use mpl_mpif,only:mpi_sizeof_logical_r4
use mpl_mpif,only:mpi_sizeof_logical_r5
use mpl_mpif,only:mpi_sizeof_logical_r6
use mpl_mpif,only:mpi_sizeof_logical_r7
use mpl_mpif,only:mpi_sizeof_logical_r8
use mpl_mpif,only:mpi_sizeof_logical_r9
use mpl_mpif,only:mpi_sizeof_logical_r10
use mpl_mpif,only:mpi_sizeof_logical_r11
use mpl_mpif,only:mpi_sizeof_logical_r12
use mpl_mpif,only:mpi_sizeof_logical_r13
use mpl_mpif,only:mpi_sizeof_logical_r14
use mpl_mpif,only:mpi_sizeof_logical_r15
use mpl_mpif,only:mpi_sizeof_real128_scalar
use mpl_mpif,only:mpi_sizeof_real128_r1
use mpl_mpif,only:mpi_sizeof_real128_r2
use mpl_mpif,only:mpi_sizeof_real128_r3
use mpl_mpif,only:mpi_sizeof_real128_r4
use mpl_mpif,only:mpi_sizeof_real128_r5
use mpl_mpif,only:mpi_sizeof_real128_r6
use mpl_mpif,only:mpi_sizeof_real128_r7
use mpl_mpif,only:mpi_sizeof_real128_r8
use mpl_mpif,only:mpi_sizeof_real128_r9
use mpl_mpif,only:mpi_sizeof_real128_r10
use mpl_mpif,only:mpi_sizeof_real128_r11
use mpl_mpif,only:mpi_sizeof_real128_r12
use mpl_mpif,only:mpi_sizeof_real128_r13
use mpl_mpif,only:mpi_sizeof_real128_r14
use mpl_mpif,only:mpi_sizeof_real128_r15
use mpl_mpif,only:mpi_sizeof_real16_scalar
use mpl_mpif,only:mpi_sizeof_real16_r1
use mpl_mpif,only:mpi_sizeof_real16_r2
use mpl_mpif,only:mpi_sizeof_real16_r3
use mpl_mpif,only:mpi_sizeof_real16_r4
use mpl_mpif,only:mpi_sizeof_real16_r5
use mpl_mpif,only:mpi_sizeof_real16_r6
use mpl_mpif,only:mpi_sizeof_real16_r7
use mpl_mpif,only:mpi_sizeof_real16_r8
use mpl_mpif,only:mpi_sizeof_real16_r9
use mpl_mpif,only:mpi_sizeof_real16_r10
use mpl_mpif,only:mpi_sizeof_real16_r11
use mpl_mpif,only:mpi_sizeof_real16_r12
use mpl_mpif,only:mpi_sizeof_real16_r13
use mpl_mpif,only:mpi_sizeof_real16_r14
use mpl_mpif,only:mpi_sizeof_real16_r15
use mpl_mpif,only:mpi_sizeof_real32_scalar
use mpl_mpif,only:mpi_sizeof_real32_r1
use mpl_mpif,only:mpi_sizeof_real32_r2
use mpl_mpif,only:mpi_sizeof_real32_r3
use mpl_mpif,only:mpi_sizeof_real32_r4
use mpl_mpif,only:mpi_sizeof_real32_r5
use mpl_mpif,only:mpi_sizeof_real32_r6
use mpl_mpif,only:mpi_sizeof_real32_r7
use mpl_mpif,only:mpi_sizeof_real32_r8
use mpl_mpif,only:mpi_sizeof_real32_r9
use mpl_mpif,only:mpi_sizeof_real32_r10
use mpl_mpif,only:mpi_sizeof_real32_r11
use mpl_mpif,only:mpi_sizeof_real32_r12
use mpl_mpif,only:mpi_sizeof_real32_r13
use mpl_mpif,only:mpi_sizeof_real32_r14
use mpl_mpif,only:mpi_sizeof_real32_r15
use mpl_mpif,only:mpi_sizeof_real64_scalar
use mpl_mpif,only:mpi_sizeof_real64_r1
use mpl_mpif,only:mpi_sizeof_real64_r2
use mpl_mpif,only:mpi_sizeof_real64_r3
use mpl_mpif,only:mpi_sizeof_real64_r4
use mpl_mpif,only:mpi_sizeof_real64_r5
use mpl_mpif,only:mpi_sizeof_real64_r6
use mpl_mpif,only:mpi_sizeof_real64_r7
use mpl_mpif,only:mpi_sizeof_real64_r8
use mpl_mpif,only:mpi_sizeof_real64_r9
use mpl_mpif,only:mpi_sizeof_real64_r10
use mpl_mpif,only:mpi_sizeof_real64_r11
use mpl_mpif,only:mpi_sizeof_real64_r12
use mpl_mpif,only:mpi_sizeof_real64_r13
use mpl_mpif,only:mpi_sizeof_real64_r14
use mpl_mpif,only:mpi_sizeof_real64_r15
use mpl_mpif,only:pmpi_sizeof_character_scalar
use mpl_mpif,only:pmpi_sizeof_character_r1
use mpl_mpif,only:pmpi_sizeof_character_r2
use mpl_mpif,only:pmpi_sizeof_character_r3
use mpl_mpif,only:pmpi_sizeof_character_r4
use mpl_mpif,only:pmpi_sizeof_character_r5
use mpl_mpif,only:pmpi_sizeof_character_r6
use mpl_mpif,only:pmpi_sizeof_character_r7
use mpl_mpif,only:pmpi_sizeof_character_r8
use mpl_mpif,only:pmpi_sizeof_character_r9
use mpl_mpif,only:pmpi_sizeof_character_r10
use mpl_mpif,only:pmpi_sizeof_character_r11
use mpl_mpif,only:pmpi_sizeof_character_r12
use mpl_mpif,only:pmpi_sizeof_character_r13
use mpl_mpif,only:pmpi_sizeof_character_r14
use mpl_mpif,only:pmpi_sizeof_character_r15
use mpl_mpif,only:pmpi_sizeof_complex128_scalar
use mpl_mpif,only:pmpi_sizeof_complex128_r1
use mpl_mpif,only:pmpi_sizeof_complex128_r2
use mpl_mpif,only:pmpi_sizeof_complex128_r3
use mpl_mpif,only:pmpi_sizeof_complex128_r4
use mpl_mpif,only:pmpi_sizeof_complex128_r5
use mpl_mpif,only:pmpi_sizeof_complex128_r6
use mpl_mpif,only:pmpi_sizeof_complex128_r7
use mpl_mpif,only:pmpi_sizeof_complex128_r8
use mpl_mpif,only:pmpi_sizeof_complex128_r9
use mpl_mpif,only:pmpi_sizeof_complex128_r10
use mpl_mpif,only:pmpi_sizeof_complex128_r11
use mpl_mpif,only:pmpi_sizeof_complex128_r12
use mpl_mpif,only:pmpi_sizeof_complex128_r13
use mpl_mpif,only:pmpi_sizeof_complex128_r14
use mpl_mpif,only:pmpi_sizeof_complex128_r15
use mpl_mpif,only:pmpi_sizeof_complex16_scalar
use mpl_mpif,only:pmpi_sizeof_complex16_r1
use mpl_mpif,only:pmpi_sizeof_complex16_r2
use mpl_mpif,only:pmpi_sizeof_complex16_r3
use mpl_mpif,only:pmpi_sizeof_complex16_r4
use mpl_mpif,only:pmpi_sizeof_complex16_r5
use mpl_mpif,only:pmpi_sizeof_complex16_r6
use mpl_mpif,only:pmpi_sizeof_complex16_r7
use mpl_mpif,only:pmpi_sizeof_complex16_r8
use mpl_mpif,only:pmpi_sizeof_complex16_r9
use mpl_mpif,only:pmpi_sizeof_complex16_r10
use mpl_mpif,only:pmpi_sizeof_complex16_r11
use mpl_mpif,only:pmpi_sizeof_complex16_r12
use mpl_mpif,only:pmpi_sizeof_complex16_r13
use mpl_mpif,only:pmpi_sizeof_complex16_r14
use mpl_mpif,only:pmpi_sizeof_complex16_r15
use mpl_mpif,only:pmpi_sizeof_complex32_scalar
use mpl_mpif,only:pmpi_sizeof_complex32_r1
use mpl_mpif,only:pmpi_sizeof_complex32_r2
use mpl_mpif,only:pmpi_sizeof_complex32_r3
use mpl_mpif,only:pmpi_sizeof_complex32_r4
use mpl_mpif,only:pmpi_sizeof_complex32_r5
use mpl_mpif,only:pmpi_sizeof_complex32_r6
use mpl_mpif,only:pmpi_sizeof_complex32_r7
use mpl_mpif,only:pmpi_sizeof_complex32_r8
use mpl_mpif,only:pmpi_sizeof_complex32_r9
use mpl_mpif,only:pmpi_sizeof_complex32_r10
use mpl_mpif,only:pmpi_sizeof_complex32_r11
use mpl_mpif,only:pmpi_sizeof_complex32_r12
use mpl_mpif,only:pmpi_sizeof_complex32_r13
use mpl_mpif,only:pmpi_sizeof_complex32_r14
use mpl_mpif,only:pmpi_sizeof_complex32_r15
use mpl_mpif,only:pmpi_sizeof_complex64_scalar
use mpl_mpif,only:pmpi_sizeof_complex64_r1
use mpl_mpif,only:pmpi_sizeof_complex64_r2
use mpl_mpif,only:pmpi_sizeof_complex64_r3
use mpl_mpif,only:pmpi_sizeof_complex64_r4
use mpl_mpif,only:pmpi_sizeof_complex64_r5
use mpl_mpif,only:pmpi_sizeof_complex64_r6
use mpl_mpif,only:pmpi_sizeof_complex64_r7
use mpl_mpif,only:pmpi_sizeof_complex64_r8
use mpl_mpif,only:pmpi_sizeof_complex64_r9
use mpl_mpif,only:pmpi_sizeof_complex64_r10
use mpl_mpif,only:pmpi_sizeof_complex64_r11
use mpl_mpif,only:pmpi_sizeof_complex64_r12
use mpl_mpif,only:pmpi_sizeof_complex64_r13
use mpl_mpif,only:pmpi_sizeof_complex64_r14
use mpl_mpif,only:pmpi_sizeof_complex64_r15
use mpl_mpif,only:pmpi_sizeof_int16_scalar
use mpl_mpif,only:pmpi_sizeof_int16_r1
use mpl_mpif,only:pmpi_sizeof_int16_r2
use mpl_mpif,only:pmpi_sizeof_int16_r3
use mpl_mpif,only:pmpi_sizeof_int16_r4
use mpl_mpif,only:pmpi_sizeof_int16_r5
use mpl_mpif,only:pmpi_sizeof_int16_r6
use mpl_mpif,only:pmpi_sizeof_int16_r7
use mpl_mpif,only:pmpi_sizeof_int16_r8
use mpl_mpif,only:pmpi_sizeof_int16_r9
use mpl_mpif,only:pmpi_sizeof_int16_r10
use mpl_mpif,only:pmpi_sizeof_int16_r11
use mpl_mpif,only:pmpi_sizeof_int16_r12
use mpl_mpif,only:pmpi_sizeof_int16_r13
use mpl_mpif,only:pmpi_sizeof_int16_r14
use mpl_mpif,only:pmpi_sizeof_int16_r15
use mpl_mpif,only:pmpi_sizeof_int32_scalar
use mpl_mpif,only:pmpi_sizeof_int32_r1
use mpl_mpif,only:pmpi_sizeof_int32_r2
use mpl_mpif,only:pmpi_sizeof_int32_r3
use mpl_mpif,only:pmpi_sizeof_int32_r4
use mpl_mpif,only:pmpi_sizeof_int32_r5
use mpl_mpif,only:pmpi_sizeof_int32_r6
use mpl_mpif,only:pmpi_sizeof_int32_r7
use mpl_mpif,only:pmpi_sizeof_int32_r8
use mpl_mpif,only:pmpi_sizeof_int32_r9
use mpl_mpif,only:pmpi_sizeof_int32_r10
use mpl_mpif,only:pmpi_sizeof_int32_r11
use mpl_mpif,only:pmpi_sizeof_int32_r12
use mpl_mpif,only:pmpi_sizeof_int32_r13
use mpl_mpif,only:pmpi_sizeof_int32_r14
use mpl_mpif,only:pmpi_sizeof_int32_r15
use mpl_mpif,only:pmpi_sizeof_int64_scalar
use mpl_mpif,only:pmpi_sizeof_int64_r1
use mpl_mpif,only:pmpi_sizeof_int64_r2
use mpl_mpif,only:pmpi_sizeof_int64_r3
use mpl_mpif,only:pmpi_sizeof_int64_r4
use mpl_mpif,only:pmpi_sizeof_int64_r5
use mpl_mpif,only:pmpi_sizeof_int64_r6
use mpl_mpif,only:pmpi_sizeof_int64_r7
use mpl_mpif,only:pmpi_sizeof_int64_r8
use mpl_mpif,only:pmpi_sizeof_int64_r9
use mpl_mpif,only:pmpi_sizeof_int64_r10
use mpl_mpif,only:pmpi_sizeof_int64_r11
use mpl_mpif,only:pmpi_sizeof_int64_r12
use mpl_mpif,only:pmpi_sizeof_int64_r13
use mpl_mpif,only:pmpi_sizeof_int64_r14
use mpl_mpif,only:pmpi_sizeof_int64_r15
use mpl_mpif,only:pmpi_sizeof_int8_scalar
use mpl_mpif,only:pmpi_sizeof_int8_r1
use mpl_mpif,only:pmpi_sizeof_int8_r2
use mpl_mpif,only:pmpi_sizeof_int8_r3
use mpl_mpif,only:pmpi_sizeof_int8_r4
use mpl_mpif,only:pmpi_sizeof_int8_r5
use mpl_mpif,only:pmpi_sizeof_int8_r6
use mpl_mpif,only:pmpi_sizeof_int8_r7
use mpl_mpif,only:pmpi_sizeof_int8_r8
use mpl_mpif,only:pmpi_sizeof_int8_r9
use mpl_mpif,only:pmpi_sizeof_int8_r10
use mpl_mpif,only:pmpi_sizeof_int8_r11
use mpl_mpif,only:pmpi_sizeof_int8_r12
use mpl_mpif,only:pmpi_sizeof_int8_r13
use mpl_mpif,only:pmpi_sizeof_int8_r14
use mpl_mpif,only:pmpi_sizeof_int8_r15
use mpl_mpif,only:pmpi_sizeof_logical_scalar
use mpl_mpif,only:pmpi_sizeof_logical_r1
use mpl_mpif,only:pmpi_sizeof_logical_r2
use mpl_mpif,only:pmpi_sizeof_logical_r3
use mpl_mpif,only:pmpi_sizeof_logical_r4
use mpl_mpif,only:pmpi_sizeof_logical_r5
use mpl_mpif,only:pmpi_sizeof_logical_r6
use mpl_mpif,only:pmpi_sizeof_logical_r7
use mpl_mpif,only:pmpi_sizeof_logical_r8
use mpl_mpif,only:pmpi_sizeof_logical_r9
use mpl_mpif,only:pmpi_sizeof_logical_r10
use mpl_mpif,only:pmpi_sizeof_logical_r11
use mpl_mpif,only:pmpi_sizeof_logical_r12
use mpl_mpif,only:pmpi_sizeof_logical_r13
use mpl_mpif,only:pmpi_sizeof_logical_r14
use mpl_mpif,only:pmpi_sizeof_logical_r15
use mpl_mpif,only:pmpi_sizeof_real128_scalar
use mpl_mpif,only:pmpi_sizeof_real128_r1
use mpl_mpif,only:pmpi_sizeof_real128_r2
use mpl_mpif,only:pmpi_sizeof_real128_r3
use mpl_mpif,only:pmpi_sizeof_real128_r4
use mpl_mpif,only:pmpi_sizeof_real128_r5
use mpl_mpif,only:pmpi_sizeof_real128_r6
use mpl_mpif,only:pmpi_sizeof_real128_r7
use mpl_mpif,only:pmpi_sizeof_real128_r8
use mpl_mpif,only:pmpi_sizeof_real128_r9
use mpl_mpif,only:pmpi_sizeof_real128_r10
use mpl_mpif,only:pmpi_sizeof_real128_r11
use mpl_mpif,only:pmpi_sizeof_real128_r12
use mpl_mpif,only:pmpi_sizeof_real128_r13
use mpl_mpif,only:pmpi_sizeof_real128_r14
use mpl_mpif,only:pmpi_sizeof_real128_r15
use mpl_mpif,only:pmpi_sizeof_real16_scalar
use mpl_mpif,only:pmpi_sizeof_real16_r1
use mpl_mpif,only:pmpi_sizeof_real16_r2
use mpl_mpif,only:pmpi_sizeof_real16_r3
use mpl_mpif,only:pmpi_sizeof_real16_r4
use mpl_mpif,only:pmpi_sizeof_real16_r5
use mpl_mpif,only:pmpi_sizeof_real16_r6
use mpl_mpif,only:pmpi_sizeof_real16_r7
use mpl_mpif,only:pmpi_sizeof_real16_r8
use mpl_mpif,only:pmpi_sizeof_real16_r9
use mpl_mpif,only:pmpi_sizeof_real16_r10
use mpl_mpif,only:pmpi_sizeof_real16_r11
use mpl_mpif,only:pmpi_sizeof_real16_r12
use mpl_mpif,only:pmpi_sizeof_real16_r13
use mpl_mpif,only:pmpi_sizeof_real16_r14
use mpl_mpif,only:pmpi_sizeof_real16_r15
use mpl_mpif,only:pmpi_sizeof_real32_scalar
use mpl_mpif,only:pmpi_sizeof_real32_r1
use mpl_mpif,only:pmpi_sizeof_real32_r2
use mpl_mpif,only:pmpi_sizeof_real32_r3
use mpl_mpif,only:pmpi_sizeof_real32_r4
use mpl_mpif,only:pmpi_sizeof_real32_r5
use mpl_mpif,only:pmpi_sizeof_real32_r6
use mpl_mpif,only:pmpi_sizeof_real32_r7
use mpl_mpif,only:pmpi_sizeof_real32_r8
use mpl_mpif,only:pmpi_sizeof_real32_r9
use mpl_mpif,only:pmpi_sizeof_real32_r10
use mpl_mpif,only:pmpi_sizeof_real32_r11
use mpl_mpif,only:pmpi_sizeof_real32_r12
use mpl_mpif,only:pmpi_sizeof_real32_r13
use mpl_mpif,only:pmpi_sizeof_real32_r14
use mpl_mpif,only:pmpi_sizeof_real32_r15
use mpl_mpif,only:pmpi_sizeof_real64_scalar
use mpl_mpif,only:pmpi_sizeof_real64_r1
use mpl_mpif,only:pmpi_sizeof_real64_r2
use mpl_mpif,only:pmpi_sizeof_real64_r3
use mpl_mpif,only:pmpi_sizeof_real64_r4
use mpl_mpif,only:pmpi_sizeof_real64_r5
use mpl_mpif,only:pmpi_sizeof_real64_r6
use mpl_mpif,only:pmpi_sizeof_real64_r7
use mpl_mpif,only:pmpi_sizeof_real64_r8
use mpl_mpif,only:pmpi_sizeof_real64_r9
use mpl_mpif,only:pmpi_sizeof_real64_r10
use mpl_mpif,only:pmpi_sizeof_real64_r11
use mpl_mpif,only:pmpi_sizeof_real64_r12
use mpl_mpif,only:pmpi_sizeof_real64_r13
use mpl_mpif,only:pmpi_sizeof_real64_r14
use mpl_mpif,only:pmpi_sizeof_real64_r15
use mpl_mpif,only:mpi_sizeof
use mpl_mpif,only:pmpi_sizeof
use mpl_mpif,only:mpi_bottom
use mpl_mpif,only:mpi_in_place
use mpl_mpif,only:mpi_argv_null
use mpl_mpif,only:mpi_argvs_null
use mpl_mpif,only:mpi_errcodes_ignore
use mpl_mpif,only:mpi_status_ignore
use mpl_mpif,only:mpi_statuses_ignore
use mpl_mpif,only:mpi_unweighted
use mpl_mpif,only:mpi_weights_empty
use mpl_data_module,only:mpl_method
use mpl_data_module,only:mpl_mbx_size
use mpl_data_module,only:mpl_unit
use mpl_data_module,only:mpl_output
use mpl_data_module,only:mpl_rank
use mpl_data_module,only:mpl_numproc
use mpl_data_module,only:mpl_errunit
use mpl_data_module,only:mpl_ids
use mpl_data_module,only:mpl_comm
use mpl_data_module,only:mpl_comm_oml
use mpl_data_module,only:mpl_opponent
use mpl_data_module,only:mpl_ncpu_per_node
use mpl_data_module,only:mpl_max_task_per_node
use mpl_data_module,only:mpl_task_per_node
use mpl_data_module,only:mpl_nnodes
use mpl_data_module,only:lfullnodes
use mpl_data_module,only:mpl_mynode
use mpl_data_module,only:mpl_node
use mpl_data_module,only:mpl_node_tasks
use mpl_data_module,only:mpl_attached_buffer
use mpl_data_module,only:lusehlmpi
use mpl_data_module,only:linitmpi_via_mpl
use mpl_data_module,only:lthsafempi
use mpl_data_module,only:jp_attached_buffer_bytes
use mpl_data_module,only:jp_blocking_standard
use mpl_data_module,only:jp_blocking_buffered
use mpl_data_module,only:jp_blocking_synchronous
use mpl_data_module,only:jp_blocking_ready
use mpl_data_module,only:jp_non_blocking_standard
use mpl_data_module,only:jp_non_blocking_buffered
use mpl_data_module,only:jp_non_blocking_synchronous
use mpl_data_module,only:jp_non_blocking_ready
use mpl_data_module,only:lmplusercomm
use mpl_data_module,only:mplusercomm
use mpl_data_module,only:mpl_send_count
use mpl_data_module,only:mpl_send_bytes
use mpl_data_module,only:mpl_recv_count
use mpl_data_module,only:mpl_recv_bytes
use mpl_data_module,only:mpl_world_rank
use mpl_data_module,only:mpl_world_size
use mpl_message_mod,only:mpl_message
use mpl_send_mod,only:mpl_send
use mpl_recv_mod,only:mpl_recv
use mpl_barrier_mod,only:mpl_barrier





































































































































































































































































































































































































































































































































































































































































































































































































































































integer(4),private::ir
integer(4),private::isendcount
integer(4),private::irecvcount
integer(4),private::icomm
integer(4),private::ierror
logical(4),private::llabort
integer(4),private::itag
logical(4),private::llbarrier
integer(4),private::imaxmsg
integer(4),private::jk
integer(4),private::imypair
integer(4),private::ichunks
integer(4),private::ists
integer(4),private::istr
integer(4),private::jmess
integer(4),private::ilens
integer(4),private::iens
integer(4),private::iount
integer(4),private::imp_type
integer(4),private::ilimit
integer(4),private::ibarrfreq
integer(4),private::idum
contains
subroutine mpl_allgather()
end
end
