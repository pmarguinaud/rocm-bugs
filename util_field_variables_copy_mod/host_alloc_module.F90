!mod$ v1 sum:68d55a4911fee962
!need$ 2366fb6125eb49d5 n field_defaults_module
!need$ 15a9af6ad75951f1 n field_statistics_module
!need$ 6d1a91c03e08cb34 n field_abort_module
!need$ d87827573c3ccd37 i omp_lib
!need$ f1768b83d01573f2 i __fortran_builtins
!need$ 29c9cb4205006d99 i iso_fortran_env
!need$ fe3180dd7f22d4c1 n parkind1
!need$ fc1ab5ddb0e0d965 i iso_c_binding
module host_alloc_module
use,intrinsic::__fortran_builtins,only:__builtin_c_ptr
use parkind1,only:jprm
use parkind1,only:jprd
use parkind1,only:jpim
use parkind1,only:jplm
use,intrinsic::iso_fortran_env,only:int64
use,intrinsic::iso_c_binding,only:c_associated
use,intrinsic::iso_c_binding,only:c_funloc
use,intrinsic::iso_c_binding,only:c_funptr
use,intrinsic::iso_c_binding,only:c_f_pointer
use,intrinsic::iso_c_binding,only:c_loc
use,intrinsic::iso_c_binding,only:c_null_funptr
use,intrinsic::iso_c_binding,only:c_null_ptr
use,intrinsic::iso_c_binding,only:c_ptr
use,intrinsic::iso_c_binding,only:c_sizeof
use,intrinsic::iso_c_binding,only:operator(==)
use,intrinsic::iso_c_binding,only:operator(/=)
use,intrinsic::iso_c_binding,only:c_int8_t
use,intrinsic::iso_c_binding,only:c_int16_t
use,intrinsic::iso_c_binding,only:c_int32_t
use,intrinsic::iso_c_binding,only:c_int64_t
use,intrinsic::iso_c_binding,only:c_int128_t
use,intrinsic::iso_c_binding,only:c_int
use,intrinsic::iso_c_binding,only:c_short
use,intrinsic::iso_c_binding,only:c_long
use,intrinsic::iso_c_binding,only:c_long_long
use,intrinsic::iso_c_binding,only:c_signed_char
use,intrinsic::iso_c_binding,only:c_size_t
use,intrinsic::iso_c_binding,only:c_intmax_t
use,intrinsic::iso_c_binding,only:c_intptr_t
use,intrinsic::iso_c_binding,only:c_ptrdiff_t
use,intrinsic::iso_c_binding,only:c_int_least8_t
use,intrinsic::iso_c_binding,only:c_int_fast8_t
use,intrinsic::iso_c_binding,only:c_int_least16_t
use,intrinsic::iso_c_binding,only:c_int_fast16_t
use,intrinsic::iso_c_binding,only:c_int_least32_t
use,intrinsic::iso_c_binding,only:c_int_fast32_t
use,intrinsic::iso_c_binding,only:c_int_least64_t
use,intrinsic::iso_c_binding,only:c_int_fast64_t
use,intrinsic::iso_c_binding,only:c_int_least128_t
use,intrinsic::iso_c_binding,only:c_int_fast128_t
use,intrinsic::iso_c_binding,only:c_float
use,intrinsic::iso_c_binding,only:c_double
use,intrinsic::iso_c_binding,only:c_long_double
use,intrinsic::iso_c_binding,only:c_float_complex
use,intrinsic::iso_c_binding,only:c_double_complex
use,intrinsic::iso_c_binding,only:c_long_double_complex
use,intrinsic::iso_c_binding,only:c_bool
use,intrinsic::iso_c_binding,only:c_char
use,intrinsic::iso_c_binding,only:c_null_char
use,intrinsic::iso_c_binding,only:c_alert
use,intrinsic::iso_c_binding,only:c_backspace
use,intrinsic::iso_c_binding,only:c_form_feed
use,intrinsic::iso_c_binding,only:c_new_line
use,intrinsic::iso_c_binding,only:c_carriage_return
use,intrinsic::iso_c_binding,only:c_horizontal_tab
use,intrinsic::iso_c_binding,only:c_vertical_tab
use,intrinsic::iso_c_binding,only:c_float128
use,intrinsic::iso_c_binding,only:c_float128_complex
use,intrinsic::iso_c_binding,only:c_uint8_t
use,intrinsic::iso_c_binding,only:c_uint16_t
use,intrinsic::iso_c_binding,only:c_uint32_t
use,intrinsic::iso_c_binding,only:c_uint64_t
use,intrinsic::iso_c_binding,only:c_uint128_t
use,intrinsic::iso_c_binding,only:c_unsigned_char
use,intrinsic::iso_c_binding,only:c_unsigned_short
use,intrinsic::iso_c_binding,only:c_unsigned
use,intrinsic::iso_c_binding,only:c_unsigned_long
use,intrinsic::iso_c_binding,only:c_unsigned_long_long
use,intrinsic::iso_c_binding,only:c_uintmax_t
use,intrinsic::iso_c_binding,only:c_uint_fast8_t
use,intrinsic::iso_c_binding,only:c_uint_fast16_t
use,intrinsic::iso_c_binding,only:c_uint_fast32_t
use,intrinsic::iso_c_binding,only:c_uint_fast64_t
use,intrinsic::iso_c_binding,only:c_uint_fast128_t
use,intrinsic::iso_c_binding,only:c_uint_least8_t
use,intrinsic::iso_c_binding,only:c_uint_least16_t
use,intrinsic::iso_c_binding,only:c_uint_least32_t
use,intrinsic::iso_c_binding,only:c_uint_least64_t
use,intrinsic::iso_c_binding,only:c_uint_least128_t
use,intrinsic::iso_c_binding,only:c_f_procpointer
use field_defaults_module,only:jpit
use field_defaults_module,only:selected_int_kind
use field_defaults_module,only:jpis
use field_defaults_module,only:jpib
use field_defaults_module,only:jpia
use field_defaults_module,only:jprt
use field_defaults_module,only:selected_real_kind
use field_defaults_module,only:jprs
use field_defaults_module,only:jprb
use field_defaults_module,only:use_init_debug_value
use field_defaults_module,only:init_debug_value_jprm
use field_defaults_module,only:init_debug_value_jprb
use field_defaults_module,only:init_debug_value_jprd
use field_defaults_module,only:init_debug_value_jpim
use field_defaults_module,only:init_debug_value_jplm
use field_defaults_module,only:get_debug_print_crc
use field_defaults_module,only:get_debug_print_location
use field_defaults_module,only:init_pinned_value
use field_defaults_module,only:init_sync_on_final
use field_defaults_module,only:init_initialized
use field_defaults_module,only:init_map_devptr
use field_defaults_module,only:get_debug_print_location_depth
use field_defaults_module,only:pool_owned_fields
use field_defaults_module,only:pool_alloc_padding_factor
use field_defaults_module,only:pool_block_size
use field_defaults_module,only:num_async_queues
use field_defaults_module,only:namfield_api
use field_statistics_module,only:field_statistics_type
use field_statistics_module,only:field_statistics_enable
use field_statistics_module,only:field_statistics
use field_statistics_module,only:field_statistics_new
use field_statistics_module,only:field_statistics_delete
use field_statistics_module,only:field_statistics_host_allocate
use field_statistics_module,only:field_statistics_host_deallocate
use field_statistics_module,only:field_statistics_device_allocate
use field_statistics_module,only:field_statistics_device_deallocate
use field_abort_module,only:field_abort_func
use field_abort_module,only:field_abort
use,intrinsic::omp_lib,only:omp_integer_kind
use,intrinsic::omp_lib,only:omp_logical_kind
use,intrinsic::omp_lib,only:omp_real_kind
use,intrinsic::omp_lib,only:kmp_double_kind
use,intrinsic::omp_lib,only:omp_lock_kind
use,intrinsic::omp_lib,only:omp_nest_lock_kind
use,intrinsic::omp_lib,only:omp_sched_kind
use,intrinsic::omp_lib,only:omp_proc_bind_kind
use,intrinsic::omp_lib,only:kmp_pointer_kind
use,intrinsic::omp_lib,only:kmp_size_t_kind
use,intrinsic::omp_lib,only:kmp_affinity_mask_kind
use,intrinsic::omp_lib,only:kmp_cancel_kind
use,intrinsic::omp_lib,only:omp_sync_hint_kind
use,intrinsic::omp_lib,only:omp_lock_hint_kind
use,intrinsic::omp_lib,only:omp_control_tool_kind
use,intrinsic::omp_lib,only:omp_control_tool_result_kind
use,intrinsic::omp_lib,only:omp_allocator_handle_kind
use,intrinsic::omp_lib,only:omp_memspace_handle_kind
use,intrinsic::omp_lib,only:omp_alloctrait_key_kind
use,intrinsic::omp_lib,only:omp_alloctrait_val_kind
use,intrinsic::omp_lib,only:omp_interop_kind
use,intrinsic::omp_lib,only:omp_interop_fr_kind
use,intrinsic::omp_lib,only:omp_alloctrait
use,intrinsic::omp_lib,only:omp_pause_resource_kind
use,intrinsic::omp_lib,only:omp_depend_kind
use,intrinsic::omp_lib,only:omp_event_handle_kind
use,intrinsic::omp_lib,only:openmp_version
use,intrinsic::omp_lib,only:kmp_version_major
use,intrinsic::omp_lib,only:kmp_version_minor
use,intrinsic::omp_lib,only:kmp_version_build
use,intrinsic::omp_lib,only:omp_sched_static
use,intrinsic::omp_lib,only:omp_sched_dynamic
use,intrinsic::omp_lib,only:omp_sched_guided
use,intrinsic::omp_lib,only:omp_sched_auto
use,intrinsic::omp_lib,only:omp_sched_monotonic
use,intrinsic::omp_lib,only:omp_proc_bind_false
use,intrinsic::omp_lib,only:omp_proc_bind_true
use,intrinsic::omp_lib,only:omp_proc_bind_master
use,intrinsic::omp_lib,only:omp_proc_bind_close
use,intrinsic::omp_lib,only:omp_proc_bind_spread
use,intrinsic::omp_lib,only:kmp_cancel_parallel
use,intrinsic::omp_lib,only:kmp_cancel_loop
use,intrinsic::omp_lib,only:kmp_cancel_sections
use,intrinsic::omp_lib,only:kmp_cancel_taskgroup
use,intrinsic::omp_lib,only:omp_sync_hint_none
use,intrinsic::omp_lib,only:omp_sync_hint_uncontended
use,intrinsic::omp_lib,only:omp_sync_hint_contended
use,intrinsic::omp_lib,only:omp_sync_hint_nonspeculative
use,intrinsic::omp_lib,only:omp_sync_hint_speculative
use,intrinsic::omp_lib,only:omp_lock_hint_none
use,intrinsic::omp_lib,only:omp_lock_hint_uncontended
use,intrinsic::omp_lib,only:omp_lock_hint_contended
use,intrinsic::omp_lib,only:omp_lock_hint_nonspeculative
use,intrinsic::omp_lib,only:omp_lock_hint_speculative
use,intrinsic::omp_lib,only:kmp_lock_hint_hle
use,intrinsic::omp_lib,only:kmp_lock_hint_rtm
use,intrinsic::omp_lib,only:kmp_lock_hint_adaptive
use,intrinsic::omp_lib,only:omp_control_tool_start
use,intrinsic::omp_lib,only:omp_control_tool_pause
use,intrinsic::omp_lib,only:omp_control_tool_flush
use,intrinsic::omp_lib,only:omp_control_tool_end
use,intrinsic::omp_lib,only:omp_control_tool_notool
use,intrinsic::omp_lib,only:omp_control_tool_nocallback
use,intrinsic::omp_lib,only:omp_control_tool_success
use,intrinsic::omp_lib,only:omp_control_tool_ignored
use,intrinsic::omp_lib,only:omp_atk_sync_hint
use,intrinsic::omp_lib,only:omp_atk_alignment
use,intrinsic::omp_lib,only:omp_atk_access
use,intrinsic::omp_lib,only:omp_atk_pool_size
use,intrinsic::omp_lib,only:omp_atk_fallback
use,intrinsic::omp_lib,only:omp_atk_fb_data
use,intrinsic::omp_lib,only:omp_atk_pinned
use,intrinsic::omp_lib,only:omp_atk_partition
use,intrinsic::omp_lib,only:omp_atk_pin_device
use,intrinsic::omp_lib,only:omp_atk_preferred_device
use,intrinsic::omp_lib,only:omp_atk_device_access
use,intrinsic::omp_lib,only:omp_atk_target_access
use,intrinsic::omp_lib,only:omp_atk_atomic_scope
use,intrinsic::omp_lib,only:omp_atk_part_size
use,intrinsic::omp_lib,only:omp_atv_default
use,intrinsic::omp_lib,only:omp_atv_false
use,intrinsic::omp_lib,only:omp_atv_true
use,intrinsic::omp_lib,only:omp_atv_contended
use,intrinsic::omp_lib,only:omp_atv_uncontended
use,intrinsic::omp_lib,only:omp_atv_serialized
use,intrinsic::omp_lib,only:omp_atv_sequential
use,intrinsic::omp_lib,only:omp_atv_private
use,intrinsic::omp_lib,only:omp_atv_device
use,intrinsic::omp_lib,only:omp_atv_thread
use,intrinsic::omp_lib,only:omp_atv_pteam
use,intrinsic::omp_lib,only:omp_atv_cgroup
use,intrinsic::omp_lib,only:omp_atv_default_mem_fb
use,intrinsic::omp_lib,only:omp_atv_null_fb
use,intrinsic::omp_lib,only:omp_atv_abort_fb
use,intrinsic::omp_lib,only:omp_atv_allocator_fb
use,intrinsic::omp_lib,only:omp_atv_environment
use,intrinsic::omp_lib,only:omp_atv_nearest
use,intrinsic::omp_lib,only:omp_atv_blocked
use,intrinsic::omp_lib,only:omp_atv_interleaved
use,intrinsic::omp_lib,only:omp_atv_all
use,intrinsic::omp_lib,only:omp_atv_single
use,intrinsic::omp_lib,only:omp_atv_multiple
use,intrinsic::omp_lib,only:omp_atv_memspace
use,intrinsic::omp_lib,only:omp_null_allocator
use,intrinsic::omp_lib,only:omp_default_mem_alloc
use,intrinsic::omp_lib,only:omp_large_cap_mem_alloc
use,intrinsic::omp_lib,only:omp_const_mem_alloc
use,intrinsic::omp_lib,only:omp_high_bw_mem_alloc
use,intrinsic::omp_lib,only:omp_low_lat_mem_alloc
use,intrinsic::omp_lib,only:omp_cgroup_mem_alloc
use,intrinsic::omp_lib,only:omp_pteam_mem_alloc
use,intrinsic::omp_lib,only:omp_thread_mem_alloc
use,intrinsic::omp_lib,only:llvm_omp_target_host_mem_alloc
use,intrinsic::omp_lib,only:llvm_omp_target_shared_mem_alloc
use,intrinsic::omp_lib,only:llvm_omp_target_device_mem_alloc
use,intrinsic::omp_lib,only:omp_null_mem_space
use,intrinsic::omp_lib,only:omp_default_mem_space
use,intrinsic::omp_lib,only:omp_large_cap_mem_space
use,intrinsic::omp_lib,only:omp_const_mem_space
use,intrinsic::omp_lib,only:omp_high_bw_mem_space
use,intrinsic::omp_lib,only:omp_low_lat_mem_space
use,intrinsic::omp_lib,only:llvm_omp_target_host_mem_space
use,intrinsic::omp_lib,only:llvm_omp_target_shared_mem_space
use,intrinsic::omp_lib,only:llvm_omp_target_device_mem_space
use,intrinsic::omp_lib,only:omp_pause_resume
use,intrinsic::omp_lib,only:omp_pause_soft
use,intrinsic::omp_lib,only:omp_pause_hard
use,intrinsic::omp_lib,only:omp_pause_stop_tool
use,intrinsic::omp_lib,only:omp_ifr_cuda
use,intrinsic::omp_lib,only:omp_ifr_cuda_driver
use,intrinsic::omp_lib,only:omp_ifr_opencl
use,intrinsic::omp_lib,only:omp_ifr_sycl
use,intrinsic::omp_lib,only:omp_ifr_hip
use,intrinsic::omp_lib,only:omp_ifr_level_zero
use,intrinsic::omp_lib,only:omp_ifr_last
use,intrinsic::omp_lib,only:omp_interop_none
use,intrinsic::omp_lib,only:omp_set_num_threads
use,intrinsic::omp_lib,only:omp_set_dynamic
use,intrinsic::omp_lib,only:omp_set_nested
use,intrinsic::omp_lib,only:omp_get_num_threads
use,intrinsic::omp_lib,only:omp_get_max_threads
use,intrinsic::omp_lib,only:omp_get_thread_num
use,intrinsic::omp_lib,only:omp_get_num_procs
use,intrinsic::omp_lib,only:omp_in_parallel
use,intrinsic::omp_lib,only:omp_in_final
use,intrinsic::omp_lib,only:omp_get_dynamic
use,intrinsic::omp_lib,only:omp_get_nested
use,intrinsic::omp_lib,only:omp_get_thread_limit
use,intrinsic::omp_lib,only:omp_set_max_active_levels
use,intrinsic::omp_lib,only:omp_get_max_active_levels
use,intrinsic::omp_lib,only:omp_get_level
use,intrinsic::omp_lib,only:omp_get_active_level
use,intrinsic::omp_lib,only:omp_get_ancestor_thread_num
use,intrinsic::omp_lib,only:omp_get_team_size
use,intrinsic::omp_lib,only:omp_set_schedule
use,intrinsic::omp_lib,only:omp_get_schedule
use,intrinsic::omp_lib,only:omp_get_proc_bind
use,intrinsic::omp_lib,only:omp_get_num_places
use,intrinsic::omp_lib,only:omp_get_place_num_procs
use,intrinsic::omp_lib,only:omp_get_place_proc_ids
use,intrinsic::omp_lib,only:omp_get_place_num
use,intrinsic::omp_lib,only:omp_get_partition_num_places
use,intrinsic::omp_lib,only:omp_get_partition_place_nums
use,intrinsic::omp_lib,only:omp_get_wtime
use,intrinsic::omp_lib,only:omp_get_wtick
use,intrinsic::omp_lib,only:omp_get_default_device
use,intrinsic::omp_lib,only:omp_set_default_device
use,intrinsic::omp_lib,only:omp_get_num_devices
use,intrinsic::omp_lib,only:omp_get_num_teams
use,intrinsic::omp_lib,only:omp_get_team_num
use,intrinsic::omp_lib,only:omp_get_cancellation
use,intrinsic::omp_lib,only:omp_is_initial_device
use,intrinsic::omp_lib,only:omp_get_initial_device
use,intrinsic::omp_lib,only:omp_get_device_num
use,intrinsic::omp_lib,only:omp_pause_resource
use,intrinsic::omp_lib,only:omp_pause_resource_all
use,intrinsic::omp_lib,only:omp_get_supported_active_levels
use,intrinsic::omp_lib,only:omp_fulfill_event
use,intrinsic::omp_lib,only:omp_init_lock
use,intrinsic::omp_lib,only:omp_destroy_lock
use,intrinsic::omp_lib,only:omp_set_lock
use,intrinsic::omp_lib,only:omp_unset_lock
use,intrinsic::omp_lib,only:omp_test_lock
use,intrinsic::omp_lib,only:omp_init_nest_lock
use,intrinsic::omp_lib,only:omp_destroy_nest_lock
use,intrinsic::omp_lib,only:omp_set_nest_lock
use,intrinsic::omp_lib,only:omp_unset_nest_lock
use,intrinsic::omp_lib,only:omp_test_nest_lock
use,intrinsic::omp_lib,only:omp_get_max_task_priority
use,intrinsic::omp_lib,only:omp_init_lock_with_hint
use,intrinsic::omp_lib,only:omp_init_nest_lock_with_hint
use,intrinsic::omp_lib,only:omp_control_tool
use,intrinsic::omp_lib,only:omp_init_allocator
use,intrinsic::omp_lib,only:omp_destroy_allocator
use,intrinsic::omp_lib,only:omp_set_default_allocator
use,intrinsic::omp_lib,only:omp_get_default_allocator
use,intrinsic::omp_lib,only:omp_set_affinity_format
use,intrinsic::omp_lib,only:omp_get_affinity_format
use,intrinsic::omp_lib,only:omp_display_affinity
use,intrinsic::omp_lib,only:omp_capture_affinity
use,intrinsic::omp_lib,only:omp_set_num_teams
use,intrinsic::omp_lib,only:omp_get_max_teams
use,intrinsic::omp_lib,only:omp_set_teams_thread_limit
use,intrinsic::omp_lib,only:omp_get_teams_thread_limit
use,intrinsic::omp_lib,only:omp_display_env
use,intrinsic::omp_lib,only:omp_target_alloc
use,intrinsic::omp_lib,only:omp_target_free
use,intrinsic::omp_lib,only:omp_target_is_present
use,intrinsic::omp_lib,only:omp_target_memcpy
use,intrinsic::omp_lib,only:omp_target_memcpy_rect
use,intrinsic::omp_lib,only:omp_target_memcpy_async
use,intrinsic::omp_lib,only:omp_target_memcpy_rect_async
use,intrinsic::omp_lib,only:omp_target_memset
use,intrinsic::omp_lib,only:omp_target_memset_async
use,intrinsic::omp_lib,only:omp_target_associate_ptr
use,intrinsic::omp_lib,only:omp_get_mapped_ptr
use,intrinsic::omp_lib,only:omp_target_disassociate_ptr
use,intrinsic::omp_lib,only:omp_target_is_accessible
use,intrinsic::omp_lib,only:omp_alloc
use,intrinsic::omp_lib,only:omp_aligned_alloc
use,intrinsic::omp_lib,only:omp_calloc
use,intrinsic::omp_lib,only:omp_aligned_calloc
use,intrinsic::omp_lib,only:omp_realloc
use,intrinsic::omp_lib,only:omp_free
use,intrinsic::omp_lib,only:omp_in_explicit_task
use,intrinsic::omp_lib,only:kmp_set_stacksize
use,intrinsic::omp_lib,only:kmp_set_stacksize_s
use,intrinsic::omp_lib,only:kmp_set_blocktime
use,intrinsic::omp_lib,only:kmp_set_library_serial
use,intrinsic::omp_lib,only:kmp_set_library_turnaround
use,intrinsic::omp_lib,only:kmp_set_library_throughput
use,intrinsic::omp_lib,only:kmp_set_library
use,intrinsic::omp_lib,only:kmp_set_defaults
use,intrinsic::omp_lib,only:kmp_get_stacksize
use,intrinsic::omp_lib,only:kmp_get_stacksize_s
use,intrinsic::omp_lib,only:kmp_get_blocktime
use,intrinsic::omp_lib,only:kmp_get_library
use,intrinsic::omp_lib,only:kmp_set_disp_num_buffers
use,intrinsic::omp_lib,only:kmp_set_affinity
use,intrinsic::omp_lib,only:kmp_get_affinity
use,intrinsic::omp_lib,only:kmp_get_affinity_max_proc
use,intrinsic::omp_lib,only:kmp_create_affinity_mask
use,intrinsic::omp_lib,only:kmp_destroy_affinity_mask
use,intrinsic::omp_lib,only:kmp_set_affinity_mask_proc
use,intrinsic::omp_lib,only:kmp_unset_affinity_mask_proc
use,intrinsic::omp_lib,only:kmp_get_affinity_mask_proc
use,intrinsic::omp_lib,only:kmp_malloc
use,intrinsic::omp_lib,only:kmp_aligned_malloc
use,intrinsic::omp_lib,only:kmp_calloc
use,intrinsic::omp_lib,only:kmp_realloc
use,intrinsic::omp_lib,only:kmp_free
use,intrinsic::omp_lib,only:kmp_set_warnings_on
use,intrinsic::omp_lib,only:kmp_set_warnings_off
use,intrinsic::omp_lib,only:kmp_get_cancellation_status
use,intrinsic::__fortran_builtins,only:iso_c_binding$__fortran_builtins$c_associated_c_ptr=>c_associated_c_ptr
private::__builtin_c_ptr
private::jprm
private::jprd
private::jpim
private::jplm
private::int64
private::c_associated
private::c_funloc
private::c_funptr
private::c_f_pointer
private::c_loc
private::c_null_funptr
private::c_null_ptr
private::c_ptr
private::c_sizeof
private::operator(==)
private::operator(/=)
private::c_int8_t
private::c_int16_t
private::c_int32_t
private::c_int64_t
private::c_int128_t
private::c_int
private::c_short
private::c_long
private::c_long_long
private::c_signed_char
private::c_size_t
private::c_intmax_t
private::c_intptr_t
private::c_ptrdiff_t
private::c_int_least8_t
private::c_int_fast8_t
private::c_int_least16_t
private::c_int_fast16_t
private::c_int_least32_t
private::c_int_fast32_t
private::c_int_least64_t
private::c_int_fast64_t
private::c_int_least128_t
private::c_int_fast128_t
private::c_float
private::c_double
private::c_long_double
private::c_float_complex
private::c_double_complex
private::c_long_double_complex
private::c_bool
private::c_char
private::c_null_char
private::c_alert
private::c_backspace
private::c_form_feed
private::c_new_line
private::c_carriage_return
private::c_horizontal_tab
private::c_vertical_tab
private::c_float128
private::c_float128_complex
private::c_uint8_t
private::c_uint16_t
private::c_uint32_t
private::c_uint64_t
private::c_uint128_t
private::c_unsigned_char
private::c_unsigned_short
private::c_unsigned
private::c_unsigned_long
private::c_unsigned_long_long
private::c_uintmax_t
private::c_uint_fast8_t
private::c_uint_fast16_t
private::c_uint_fast32_t
private::c_uint_fast64_t
private::c_uint_fast128_t
private::c_uint_least8_t
private::c_uint_least16_t
private::c_uint_least32_t
private::c_uint_least64_t
private::c_uint_least128_t
private::c_f_procpointer
private::jpit
private::selected_int_kind
private::jpis
private::jpib
private::jpia
private::jprt
private::selected_real_kind
private::jprs
private::jprb
private::use_init_debug_value
private::init_debug_value_jprm
private::init_debug_value_jprb
private::init_debug_value_jprd
private::init_debug_value_jpim
private::init_debug_value_jplm
private::get_debug_print_crc
private::get_debug_print_location
private::init_pinned_value
private::init_sync_on_final
private::init_initialized
private::init_map_devptr
private::get_debug_print_location_depth
private::pool_owned_fields
private::pool_alloc_padding_factor
private::pool_block_size
private::num_async_queues
private::namfield_api
private::field_statistics_type
private::field_statistics_enable
private::field_statistics
private::field_statistics_new
private::field_statistics_delete
private::field_statistics_host_allocate
private::field_statistics_host_deallocate
private::field_statistics_device_allocate
private::field_statistics_device_deallocate
private::field_abort_func
private::field_abort
private::omp_integer_kind
private::omp_logical_kind
private::omp_real_kind
private::kmp_double_kind
private::omp_lock_kind
private::omp_nest_lock_kind
private::omp_sched_kind
private::omp_proc_bind_kind
private::kmp_pointer_kind
private::kmp_size_t_kind
private::kmp_affinity_mask_kind
private::kmp_cancel_kind
private::omp_sync_hint_kind
private::omp_lock_hint_kind
private::omp_control_tool_kind
private::omp_control_tool_result_kind
private::omp_allocator_handle_kind
private::omp_memspace_handle_kind
private::omp_alloctrait_key_kind
private::omp_alloctrait_val_kind
private::omp_interop_kind
private::omp_interop_fr_kind
private::omp_alloctrait
private::omp_pause_resource_kind
private::omp_depend_kind
private::omp_event_handle_kind
private::openmp_version
private::kmp_version_major
private::kmp_version_minor
private::kmp_version_build
private::omp_sched_static
private::omp_sched_dynamic
private::omp_sched_guided
private::omp_sched_auto
private::omp_sched_monotonic
private::omp_proc_bind_false
private::omp_proc_bind_true
private::omp_proc_bind_master
private::omp_proc_bind_close
private::omp_proc_bind_spread
private::kmp_cancel_parallel
private::kmp_cancel_loop
private::kmp_cancel_sections
private::kmp_cancel_taskgroup
private::omp_sync_hint_none
private::omp_sync_hint_uncontended
private::omp_sync_hint_contended
private::omp_sync_hint_nonspeculative
private::omp_sync_hint_speculative
private::omp_lock_hint_none
private::omp_lock_hint_uncontended
private::omp_lock_hint_contended
private::omp_lock_hint_nonspeculative
private::omp_lock_hint_speculative
private::kmp_lock_hint_hle
private::kmp_lock_hint_rtm
private::kmp_lock_hint_adaptive
private::omp_control_tool_start
private::omp_control_tool_pause
private::omp_control_tool_flush
private::omp_control_tool_end
private::omp_control_tool_notool
private::omp_control_tool_nocallback
private::omp_control_tool_success
private::omp_control_tool_ignored
private::omp_atk_sync_hint
private::omp_atk_alignment
private::omp_atk_access
private::omp_atk_pool_size
private::omp_atk_fallback
private::omp_atk_fb_data
private::omp_atk_pinned
private::omp_atk_partition
private::omp_atk_pin_device
private::omp_atk_preferred_device
private::omp_atk_device_access
private::omp_atk_target_access
private::omp_atk_atomic_scope
private::omp_atk_part_size
private::omp_atv_default
private::omp_atv_false
private::omp_atv_true
private::omp_atv_contended
private::omp_atv_uncontended
private::omp_atv_serialized
private::omp_atv_sequential
private::omp_atv_private
private::omp_atv_device
private::omp_atv_thread
private::omp_atv_pteam
private::omp_atv_cgroup
private::omp_atv_default_mem_fb
private::omp_atv_null_fb
private::omp_atv_abort_fb
private::omp_atv_allocator_fb
private::omp_atv_environment
private::omp_atv_nearest
private::omp_atv_blocked
private::omp_atv_interleaved
private::omp_atv_all
private::omp_atv_single
private::omp_atv_multiple
private::omp_atv_memspace
private::omp_null_allocator
private::omp_default_mem_alloc
private::omp_large_cap_mem_alloc
private::omp_const_mem_alloc
private::omp_high_bw_mem_alloc
private::omp_low_lat_mem_alloc
private::omp_cgroup_mem_alloc
private::omp_pteam_mem_alloc
private::omp_thread_mem_alloc
private::llvm_omp_target_host_mem_alloc
private::llvm_omp_target_shared_mem_alloc
private::llvm_omp_target_device_mem_alloc
private::omp_null_mem_space
private::omp_default_mem_space
private::omp_large_cap_mem_space
private::omp_const_mem_space
private::omp_high_bw_mem_space
private::omp_low_lat_mem_space
private::llvm_omp_target_host_mem_space
private::llvm_omp_target_shared_mem_space
private::llvm_omp_target_device_mem_space
private::omp_pause_resume
private::omp_pause_soft
private::omp_pause_hard
private::omp_pause_stop_tool
private::omp_ifr_cuda
private::omp_ifr_cuda_driver
private::omp_ifr_opencl
private::omp_ifr_sycl
private::omp_ifr_hip
private::omp_ifr_level_zero
private::omp_ifr_last
private::omp_interop_none
private::omp_set_num_threads
private::omp_set_dynamic
private::omp_set_nested
private::omp_get_num_threads
private::omp_get_max_threads
private::omp_get_thread_num
private::omp_get_num_procs
private::omp_in_parallel
private::omp_in_final
private::omp_get_dynamic
private::omp_get_nested
private::omp_get_thread_limit
private::omp_set_max_active_levels
private::omp_get_max_active_levels
private::omp_get_level
private::omp_get_active_level
private::omp_get_ancestor_thread_num
private::omp_get_team_size
private::omp_set_schedule
private::omp_get_schedule
private::omp_get_proc_bind
private::omp_get_num_places
private::omp_get_place_num_procs
private::omp_get_place_proc_ids
private::omp_get_place_num
private::omp_get_partition_num_places
private::omp_get_partition_place_nums
private::omp_get_wtime
private::omp_get_wtick
private::omp_get_default_device
private::omp_set_default_device
private::omp_get_num_devices
private::omp_get_num_teams
private::omp_get_team_num
private::omp_get_cancellation
private::omp_is_initial_device
private::omp_get_initial_device
private::omp_get_device_num
private::omp_pause_resource
private::omp_pause_resource_all
private::omp_get_supported_active_levels
private::omp_fulfill_event
private::omp_init_lock
private::omp_destroy_lock
private::omp_set_lock
private::omp_unset_lock
private::omp_test_lock
private::omp_init_nest_lock
private::omp_destroy_nest_lock
private::omp_set_nest_lock
private::omp_unset_nest_lock
private::omp_test_nest_lock
private::omp_get_max_task_priority
private::omp_init_lock_with_hint
private::omp_init_nest_lock_with_hint
private::omp_control_tool
private::omp_init_allocator
private::omp_destroy_allocator
private::omp_set_default_allocator
private::omp_get_default_allocator
private::omp_set_affinity_format
private::omp_get_affinity_format
private::omp_display_affinity
private::omp_capture_affinity
private::omp_set_num_teams
private::omp_get_max_teams
private::omp_set_teams_thread_limit
private::omp_get_teams_thread_limit
private::omp_display_env
private::omp_target_alloc
private::omp_target_free
private::omp_target_is_present
private::omp_target_memcpy
private::omp_target_memcpy_rect
private::omp_target_memcpy_async
private::omp_target_memcpy_rect_async
private::omp_target_memset
private::omp_target_memset_async
private::omp_target_associate_ptr
private::omp_get_mapped_ptr
private::omp_target_disassociate_ptr
private::omp_target_is_accessible
private::omp_alloc
private::omp_aligned_alloc
private::omp_calloc
private::omp_aligned_calloc
private::omp_realloc
private::omp_free
private::omp_in_explicit_task
private::kmp_set_stacksize
private::kmp_set_stacksize_s
private::kmp_set_blocktime
private::kmp_set_library_serial
private::kmp_set_library_turnaround
private::kmp_set_library_throughput
private::kmp_set_library
private::kmp_set_defaults
private::kmp_get_stacksize
private::kmp_get_stacksize_s
private::kmp_get_blocktime
private::kmp_get_library
private::kmp_set_disp_num_buffers
private::kmp_set_affinity
private::kmp_get_affinity
private::kmp_get_affinity_max_proc
private::kmp_create_affinity_mask
private::kmp_destroy_affinity_mask
private::kmp_set_affinity_mask_proc
private::kmp_unset_affinity_mask_proc
private::kmp_get_affinity_mask_proc
private::kmp_malloc
private::kmp_aligned_malloc
private::kmp_calloc
private::kmp_realloc
private::kmp_free
private::kmp_set_warnings_on
private::kmp_set_warnings_off
private::kmp_get_cancellation_status
private::iso_c_binding$__fortran_builtins$c_associated_c_ptr
private::c_malloc
interface
subroutine c_malloc(siz,ptr) bind(c,name="c_malloc")
import::c_ptr
integer(8),intent(in),value::siz
type(c_ptr),intent(out)::ptr
end
end interface
private::c_free
interface
subroutine c_free(ptr) bind(c,name="c_free")
import::c_ptr
type(c_ptr),intent(in),value::ptr
end
end interface
private::c_ptr_incr
interface
subroutine c_ptr_incr(siz,ptr,data) bind(c,name="c_ptr_incr")
import::c_ptr
integer(8),intent(in),value::siz
type(c_ptr),intent(in)::ptr
type(c_ptr),intent(out)::data
end
end interface
type,private::mem_block
type(c_ptr)::data=__builtin_c_ptr(__address=0_8)
integer(8)::pos=0_8
integer(8)::size=0_8
integer(4)::numflds=0_4
type(mem_block),pointer::next=>NULL()
contains
procedure::init=>mem_block_init
procedure::final=>mem_block_final
procedure::alloc=>mem_block_alloc
procedure::dealloc=>mem_block_dealloc
end type
intrinsic::null
private::null
type,private::mem_pool
type(mem_block),pointer::start_blk=>NULL()
contains
procedure::alloc=>mem_pool_alloc
procedure::dealloc=>mem_pool_dealloc
procedure::request_mem=>mem_pool_request_mem
procedure::request_free=>mem_pool_request_free
procedure::final=>mem_pool_final
procedure,private::mem_free=>mem_pool_mem_free
end type
type(mem_pool)::host_pool
private::mem_block_init
private::mem_block_alloc
private::mem_block_dealloc
private::mem_block_final
private::mem_pool_final
private::mem_pool_mem_free
private::mem_pool_alloc
private::mem_pool_dealloc
private::mem_pool_request_free
private::mem_pool_request_mem
private::field_1rm_host_alloc_pooled
private::field_1rm_host_alloc
private::field_1rm_host_dealloc
private::field_1rm_host_dealloc_pooled
private::field_2rm_host_alloc_pooled
private::field_2rm_host_alloc
private::field_2rm_host_dealloc
private::field_2rm_host_dealloc_pooled
private::field_3rm_host_alloc_pooled
private::field_3rm_host_alloc
private::field_3rm_host_dealloc
private::field_3rm_host_dealloc_pooled
private::field_4rm_host_alloc_pooled
private::field_4rm_host_alloc
private::field_4rm_host_dealloc
private::field_4rm_host_dealloc_pooled
private::field_5rm_host_alloc_pooled
private::field_5rm_host_alloc
private::field_5rm_host_dealloc
private::field_5rm_host_dealloc_pooled
private::field_1rd_host_alloc_pooled
private::field_1rd_host_alloc
private::field_1rd_host_dealloc
private::field_1rd_host_dealloc_pooled
private::field_2rd_host_alloc_pooled
private::field_2rd_host_alloc
private::field_2rd_host_dealloc
private::field_2rd_host_dealloc_pooled
private::field_3rd_host_alloc_pooled
private::field_3rd_host_alloc
private::field_3rd_host_dealloc
private::field_3rd_host_dealloc_pooled
private::field_4rd_host_alloc_pooled
private::field_4rd_host_alloc
private::field_4rd_host_dealloc
private::field_4rd_host_dealloc_pooled
private::field_5rd_host_alloc_pooled
private::field_5rd_host_alloc
private::field_5rd_host_dealloc
private::field_5rd_host_dealloc_pooled
private::field_1im_host_alloc_pooled
private::field_1im_host_alloc
private::field_1im_host_dealloc
private::field_1im_host_dealloc_pooled
private::field_2im_host_alloc_pooled
private::field_2im_host_alloc
private::field_2im_host_dealloc
private::field_2im_host_dealloc_pooled
private::field_3im_host_alloc_pooled
private::field_3im_host_alloc
private::field_3im_host_dealloc
private::field_3im_host_dealloc_pooled
private::field_4im_host_alloc_pooled
private::field_4im_host_alloc
private::field_4im_host_dealloc
private::field_4im_host_dealloc_pooled
private::field_5im_host_alloc_pooled
private::field_5im_host_alloc
private::field_5im_host_dealloc
private::field_5im_host_dealloc_pooled
private::field_1lm_host_alloc_pooled
private::field_1lm_host_alloc
private::field_1lm_host_dealloc
private::field_1lm_host_dealloc_pooled
private::field_2lm_host_alloc_pooled
private::field_2lm_host_alloc
private::field_2lm_host_dealloc
private::field_2lm_host_dealloc_pooled
private::field_3lm_host_alloc_pooled
private::field_3lm_host_alloc
private::field_3lm_host_dealloc
private::field_3lm_host_dealloc_pooled
private::field_4lm_host_alloc_pooled
private::field_4lm_host_alloc
private::field_4lm_host_dealloc
private::field_4lm_host_dealloc_pooled
private::field_5lm_host_alloc_pooled
private::field_5lm_host_alloc
private::field_5lm_host_dealloc
private::field_5lm_host_dealloc_pooled
interface host_alloc
procedure::field_1rm_host_alloc
procedure::field_2rm_host_alloc
procedure::field_3rm_host_alloc
procedure::field_4rm_host_alloc
procedure::field_5rm_host_alloc
procedure::field_1rd_host_alloc
procedure::field_2rd_host_alloc
procedure::field_3rd_host_alloc
procedure::field_4rd_host_alloc
procedure::field_5rd_host_alloc
procedure::field_1im_host_alloc
procedure::field_2im_host_alloc
procedure::field_3im_host_alloc
procedure::field_4im_host_alloc
procedure::field_5im_host_alloc
procedure::field_1lm_host_alloc
procedure::field_2lm_host_alloc
procedure::field_3lm_host_alloc
procedure::field_4lm_host_alloc
procedure::field_5lm_host_alloc
end interface
interface host_alloc_pooled
procedure::field_1rm_host_alloc_pooled
procedure::field_2rm_host_alloc_pooled
procedure::field_3rm_host_alloc_pooled
procedure::field_4rm_host_alloc_pooled
procedure::field_5rm_host_alloc_pooled
procedure::field_1rd_host_alloc_pooled
procedure::field_2rd_host_alloc_pooled
procedure::field_3rd_host_alloc_pooled
procedure::field_4rd_host_alloc_pooled
procedure::field_5rd_host_alloc_pooled
procedure::field_1im_host_alloc_pooled
procedure::field_2im_host_alloc_pooled
procedure::field_3im_host_alloc_pooled
procedure::field_4im_host_alloc_pooled
procedure::field_5im_host_alloc_pooled
procedure::field_1lm_host_alloc_pooled
procedure::field_2lm_host_alloc_pooled
procedure::field_3lm_host_alloc_pooled
procedure::field_4lm_host_alloc_pooled
procedure::field_5lm_host_alloc_pooled
end interface
interface host_dealloc
procedure::field_1rm_host_dealloc
procedure::field_2rm_host_dealloc
procedure::field_3rm_host_dealloc
procedure::field_4rm_host_dealloc
procedure::field_5rm_host_dealloc
procedure::field_1rd_host_dealloc
procedure::field_2rd_host_dealloc
procedure::field_3rd_host_dealloc
procedure::field_4rd_host_dealloc
procedure::field_5rd_host_dealloc
procedure::field_1im_host_dealloc
procedure::field_2im_host_dealloc
procedure::field_3im_host_dealloc
procedure::field_4im_host_dealloc
procedure::field_5im_host_dealloc
procedure::field_1lm_host_dealloc
procedure::field_2lm_host_dealloc
procedure::field_3lm_host_dealloc
procedure::field_4lm_host_dealloc
procedure::field_5lm_host_dealloc
end interface
interface host_dealloc_pooled
procedure::field_1rm_host_dealloc_pooled
procedure::field_2rm_host_dealloc_pooled
procedure::field_3rm_host_dealloc_pooled
procedure::field_4rm_host_dealloc_pooled
procedure::field_5rm_host_dealloc_pooled
procedure::field_1rd_host_dealloc_pooled
procedure::field_2rd_host_dealloc_pooled
procedure::field_3rd_host_dealloc_pooled
procedure::field_4rd_host_dealloc_pooled
procedure::field_5rd_host_dealloc_pooled
procedure::field_1im_host_dealloc_pooled
procedure::field_2im_host_dealloc_pooled
procedure::field_3im_host_dealloc_pooled
procedure::field_4im_host_dealloc_pooled
procedure::field_5im_host_dealloc_pooled
procedure::field_1lm_host_dealloc_pooled
procedure::field_2lm_host_dealloc_pooled
procedure::field_3lm_host_dealloc_pooled
procedure::field_4lm_host_dealloc_pooled
procedure::field_5lm_host_dealloc_pooled
end interface
contains
subroutine mem_block_init(self)
class(mem_block)::self
end
subroutine mem_block_alloc(self,alloc_size,data)
class(mem_block)::self
integer(8),intent(in)::alloc_size
type(c_ptr),intent(out)::data
end
subroutine mem_block_dealloc(self)
class(mem_block)::self
end
subroutine mem_block_final(self)
class(mem_block)::self
end
subroutine mem_pool_final(self)
class(mem_pool)::self
end
subroutine mem_pool_mem_free(self,blk)
class(mem_pool)::self
type(mem_block),intent(inout),pointer::blk
end
subroutine mem_pool_alloc(self,arr_size,blkid,data)
class(mem_pool)::self
integer(8),intent(in)::arr_size
integer(4),intent(inout)::blkid
type(c_ptr),intent(out)::data
end
subroutine mem_pool_dealloc(self,field_blkid)
class(mem_pool)::self
integer(4),intent(in)::field_blkid
end
subroutine mem_pool_request_free(self,field_blkid,blk,blkid)
class(mem_pool)::self
integer(4),intent(in)::field_blkid
type(mem_block),intent(inout),pointer::blk
integer(4),intent(inout)::blkid
end
subroutine mem_pool_request_mem(self,alloc_size,blk,data,blkid)
class(mem_pool)::self
integer(8),intent(in)::alloc_size
type(mem_block),intent(inout),pointer::blk
type(c_ptr),intent(out)::data
integer(4),intent(inout)::blkid
end
subroutine field_1rm_host_alloc_pooled(hst,lbounds,ubounds,blkid)
real(4),intent(out),pointer::hst(:)
integer(4),intent(in)::lbounds(1_8:1_8)
integer(4),intent(in)::ubounds(1_8:1_8)
integer(4),intent(inout)::blkid
end
subroutine field_1rm_host_alloc(hst,lbounds,ubounds,pinned)
real(4),intent(out),pointer::hst(:)
integer(4),intent(in)::lbounds(1_8:1_8)
integer(4),intent(in)::ubounds(1_8:1_8)
logical(4),intent(in)::pinned
end
subroutine field_1rm_host_dealloc(hst,pinned)
real(4),intent(inout),pointer::hst(:)
logical(4),intent(in)::pinned
end
subroutine field_1rm_host_dealloc_pooled(hst,blkid)
real(4),intent(inout),pointer::hst(:)
integer(4),intent(in)::blkid
end
subroutine field_2rm_host_alloc_pooled(hst,lbounds,ubounds,blkid)
real(4),intent(out),pointer::hst(:,:)
integer(4),intent(in)::lbounds(1_8:2_8)
integer(4),intent(in)::ubounds(1_8:2_8)
integer(4),intent(inout)::blkid
end
subroutine field_2rm_host_alloc(hst,lbounds,ubounds,pinned)
real(4),intent(out),pointer::hst(:,:)
integer(4),intent(in)::lbounds(1_8:2_8)
integer(4),intent(in)::ubounds(1_8:2_8)
logical(4),intent(in)::pinned
end
subroutine field_2rm_host_dealloc(hst,pinned)
real(4),intent(inout),pointer::hst(:,:)
logical(4),intent(in)::pinned
end
subroutine field_2rm_host_dealloc_pooled(hst,blkid)
real(4),intent(inout),pointer::hst(:,:)
integer(4),intent(in)::blkid
end
subroutine field_3rm_host_alloc_pooled(hst,lbounds,ubounds,blkid)
real(4),intent(out),pointer::hst(:,:,:)
integer(4),intent(in)::lbounds(1_8:3_8)
integer(4),intent(in)::ubounds(1_8:3_8)
integer(4),intent(inout)::blkid
end
subroutine field_3rm_host_alloc(hst,lbounds,ubounds,pinned)
real(4),intent(out),pointer::hst(:,:,:)
integer(4),intent(in)::lbounds(1_8:3_8)
integer(4),intent(in)::ubounds(1_8:3_8)
logical(4),intent(in)::pinned
end
subroutine field_3rm_host_dealloc(hst,pinned)
real(4),intent(inout),pointer::hst(:,:,:)
logical(4),intent(in)::pinned
end
subroutine field_3rm_host_dealloc_pooled(hst,blkid)
real(4),intent(inout),pointer::hst(:,:,:)
integer(4),intent(in)::blkid
end
subroutine field_4rm_host_alloc_pooled(hst,lbounds,ubounds,blkid)
real(4),intent(out),pointer::hst(:,:,:,:)
integer(4),intent(in)::lbounds(1_8:4_8)
integer(4),intent(in)::ubounds(1_8:4_8)
integer(4),intent(inout)::blkid
end
subroutine field_4rm_host_alloc(hst,lbounds,ubounds,pinned)
real(4),intent(out),pointer::hst(:,:,:,:)
integer(4),intent(in)::lbounds(1_8:4_8)
integer(4),intent(in)::ubounds(1_8:4_8)
logical(4),intent(in)::pinned
end
subroutine field_4rm_host_dealloc(hst,pinned)
real(4),intent(inout),pointer::hst(:,:,:,:)
logical(4),intent(in)::pinned
end
subroutine field_4rm_host_dealloc_pooled(hst,blkid)
real(4),intent(inout),pointer::hst(:,:,:,:)
integer(4),intent(in)::blkid
end
subroutine field_5rm_host_alloc_pooled(hst,lbounds,ubounds,blkid)
real(4),intent(out),pointer::hst(:,:,:,:,:)
integer(4),intent(in)::lbounds(1_8:5_8)
integer(4),intent(in)::ubounds(1_8:5_8)
integer(4),intent(inout)::blkid
end
subroutine field_5rm_host_alloc(hst,lbounds,ubounds,pinned)
real(4),intent(out),pointer::hst(:,:,:,:,:)
integer(4),intent(in)::lbounds(1_8:5_8)
integer(4),intent(in)::ubounds(1_8:5_8)
logical(4),intent(in)::pinned
end
subroutine field_5rm_host_dealloc(hst,pinned)
real(4),intent(inout),pointer::hst(:,:,:,:,:)
logical(4),intent(in)::pinned
end
subroutine field_5rm_host_dealloc_pooled(hst,blkid)
real(4),intent(inout),pointer::hst(:,:,:,:,:)
integer(4),intent(in)::blkid
end
subroutine field_1rd_host_alloc_pooled(hst,lbounds,ubounds,blkid)
real(8),intent(out),pointer::hst(:)
integer(4),intent(in)::lbounds(1_8:1_8)
integer(4),intent(in)::ubounds(1_8:1_8)
integer(4),intent(inout)::blkid
end
subroutine field_1rd_host_alloc(hst,lbounds,ubounds,pinned)
real(8),intent(out),pointer::hst(:)
integer(4),intent(in)::lbounds(1_8:1_8)
integer(4),intent(in)::ubounds(1_8:1_8)
logical(4),intent(in)::pinned
end
subroutine field_1rd_host_dealloc(hst,pinned)
real(8),intent(inout),pointer::hst(:)
logical(4),intent(in)::pinned
end
subroutine field_1rd_host_dealloc_pooled(hst,blkid)
real(8),intent(inout),pointer::hst(:)
integer(4),intent(in)::blkid
end
subroutine field_2rd_host_alloc_pooled(hst,lbounds,ubounds,blkid)
real(8),intent(out),pointer::hst(:,:)
integer(4),intent(in)::lbounds(1_8:2_8)
integer(4),intent(in)::ubounds(1_8:2_8)
integer(4),intent(inout)::blkid
end
subroutine field_2rd_host_alloc(hst,lbounds,ubounds,pinned)
real(8),intent(out),pointer::hst(:,:)
integer(4),intent(in)::lbounds(1_8:2_8)
integer(4),intent(in)::ubounds(1_8:2_8)
logical(4),intent(in)::pinned
end
subroutine field_2rd_host_dealloc(hst,pinned)
real(8),intent(inout),pointer::hst(:,:)
logical(4),intent(in)::pinned
end
subroutine field_2rd_host_dealloc_pooled(hst,blkid)
real(8),intent(inout),pointer::hst(:,:)
integer(4),intent(in)::blkid
end
subroutine field_3rd_host_alloc_pooled(hst,lbounds,ubounds,blkid)
real(8),intent(out),pointer::hst(:,:,:)
integer(4),intent(in)::lbounds(1_8:3_8)
integer(4),intent(in)::ubounds(1_8:3_8)
integer(4),intent(inout)::blkid
end
subroutine field_3rd_host_alloc(hst,lbounds,ubounds,pinned)
real(8),intent(out),pointer::hst(:,:,:)
integer(4),intent(in)::lbounds(1_8:3_8)
integer(4),intent(in)::ubounds(1_8:3_8)
logical(4),intent(in)::pinned
end
subroutine field_3rd_host_dealloc(hst,pinned)
real(8),intent(inout),pointer::hst(:,:,:)
logical(4),intent(in)::pinned
end
subroutine field_3rd_host_dealloc_pooled(hst,blkid)
real(8),intent(inout),pointer::hst(:,:,:)
integer(4),intent(in)::blkid
end
subroutine field_4rd_host_alloc_pooled(hst,lbounds,ubounds,blkid)
real(8),intent(out),pointer::hst(:,:,:,:)
integer(4),intent(in)::lbounds(1_8:4_8)
integer(4),intent(in)::ubounds(1_8:4_8)
integer(4),intent(inout)::blkid
end
subroutine field_4rd_host_alloc(hst,lbounds,ubounds,pinned)
real(8),intent(out),pointer::hst(:,:,:,:)
integer(4),intent(in)::lbounds(1_8:4_8)
integer(4),intent(in)::ubounds(1_8:4_8)
logical(4),intent(in)::pinned
end
subroutine field_4rd_host_dealloc(hst,pinned)
real(8),intent(inout),pointer::hst(:,:,:,:)
logical(4),intent(in)::pinned
end
subroutine field_4rd_host_dealloc_pooled(hst,blkid)
real(8),intent(inout),pointer::hst(:,:,:,:)
integer(4),intent(in)::blkid
end
subroutine field_5rd_host_alloc_pooled(hst,lbounds,ubounds,blkid)
real(8),intent(out),pointer::hst(:,:,:,:,:)
integer(4),intent(in)::lbounds(1_8:5_8)
integer(4),intent(in)::ubounds(1_8:5_8)
integer(4),intent(inout)::blkid
end
subroutine field_5rd_host_alloc(hst,lbounds,ubounds,pinned)
real(8),intent(out),pointer::hst(:,:,:,:,:)
integer(4),intent(in)::lbounds(1_8:5_8)
integer(4),intent(in)::ubounds(1_8:5_8)
logical(4),intent(in)::pinned
end
subroutine field_5rd_host_dealloc(hst,pinned)
real(8),intent(inout),pointer::hst(:,:,:,:,:)
logical(4),intent(in)::pinned
end
subroutine field_5rd_host_dealloc_pooled(hst,blkid)
real(8),intent(inout),pointer::hst(:,:,:,:,:)
integer(4),intent(in)::blkid
end
subroutine field_1im_host_alloc_pooled(hst,lbounds,ubounds,blkid)
integer(4),intent(out),pointer::hst(:)
integer(4),intent(in)::lbounds(1_8:1_8)
integer(4),intent(in)::ubounds(1_8:1_8)
integer(4),intent(inout)::blkid
end
subroutine field_1im_host_alloc(hst,lbounds,ubounds,pinned)
integer(4),intent(out),pointer::hst(:)
integer(4),intent(in)::lbounds(1_8:1_8)
integer(4),intent(in)::ubounds(1_8:1_8)
logical(4),intent(in)::pinned
end
subroutine field_1im_host_dealloc(hst,pinned)
integer(4),intent(inout),pointer::hst(:)
logical(4),intent(in)::pinned
end
subroutine field_1im_host_dealloc_pooled(hst,blkid)
integer(4),intent(inout),pointer::hst(:)
integer(4),intent(in)::blkid
end
subroutine field_2im_host_alloc_pooled(hst,lbounds,ubounds,blkid)
integer(4),intent(out),pointer::hst(:,:)
integer(4),intent(in)::lbounds(1_8:2_8)
integer(4),intent(in)::ubounds(1_8:2_8)
integer(4),intent(inout)::blkid
end
subroutine field_2im_host_alloc(hst,lbounds,ubounds,pinned)
integer(4),intent(out),pointer::hst(:,:)
integer(4),intent(in)::lbounds(1_8:2_8)
integer(4),intent(in)::ubounds(1_8:2_8)
logical(4),intent(in)::pinned
end
subroutine field_2im_host_dealloc(hst,pinned)
integer(4),intent(inout),pointer::hst(:,:)
logical(4),intent(in)::pinned
end
subroutine field_2im_host_dealloc_pooled(hst,blkid)
integer(4),intent(inout),pointer::hst(:,:)
integer(4),intent(in)::blkid
end
subroutine field_3im_host_alloc_pooled(hst,lbounds,ubounds,blkid)
integer(4),intent(out),pointer::hst(:,:,:)
integer(4),intent(in)::lbounds(1_8:3_8)
integer(4),intent(in)::ubounds(1_8:3_8)
integer(4),intent(inout)::blkid
end
subroutine field_3im_host_alloc(hst,lbounds,ubounds,pinned)
integer(4),intent(out),pointer::hst(:,:,:)
integer(4),intent(in)::lbounds(1_8:3_8)
integer(4),intent(in)::ubounds(1_8:3_8)
logical(4),intent(in)::pinned
end
subroutine field_3im_host_dealloc(hst,pinned)
integer(4),intent(inout),pointer::hst(:,:,:)
logical(4),intent(in)::pinned
end
subroutine field_3im_host_dealloc_pooled(hst,blkid)
integer(4),intent(inout),pointer::hst(:,:,:)
integer(4),intent(in)::blkid
end
subroutine field_4im_host_alloc_pooled(hst,lbounds,ubounds,blkid)
integer(4),intent(out),pointer::hst(:,:,:,:)
integer(4),intent(in)::lbounds(1_8:4_8)
integer(4),intent(in)::ubounds(1_8:4_8)
integer(4),intent(inout)::blkid
end
subroutine field_4im_host_alloc(hst,lbounds,ubounds,pinned)
integer(4),intent(out),pointer::hst(:,:,:,:)
integer(4),intent(in)::lbounds(1_8:4_8)
integer(4),intent(in)::ubounds(1_8:4_8)
logical(4),intent(in)::pinned
end
subroutine field_4im_host_dealloc(hst,pinned)
integer(4),intent(inout),pointer::hst(:,:,:,:)
logical(4),intent(in)::pinned
end
subroutine field_4im_host_dealloc_pooled(hst,blkid)
integer(4),intent(inout),pointer::hst(:,:,:,:)
integer(4),intent(in)::blkid
end
subroutine field_5im_host_alloc_pooled(hst,lbounds,ubounds,blkid)
integer(4),intent(out),pointer::hst(:,:,:,:,:)
integer(4),intent(in)::lbounds(1_8:5_8)
integer(4),intent(in)::ubounds(1_8:5_8)
integer(4),intent(inout)::blkid
end
subroutine field_5im_host_alloc(hst,lbounds,ubounds,pinned)
integer(4),intent(out),pointer::hst(:,:,:,:,:)
integer(4),intent(in)::lbounds(1_8:5_8)
integer(4),intent(in)::ubounds(1_8:5_8)
logical(4),intent(in)::pinned
end
subroutine field_5im_host_dealloc(hst,pinned)
integer(4),intent(inout),pointer::hst(:,:,:,:,:)
logical(4),intent(in)::pinned
end
subroutine field_5im_host_dealloc_pooled(hst,blkid)
integer(4),intent(inout),pointer::hst(:,:,:,:,:)
integer(4),intent(in)::blkid
end
subroutine field_1lm_host_alloc_pooled(hst,lbounds,ubounds,blkid)
logical(4),intent(out),pointer::hst(:)
integer(4),intent(in)::lbounds(1_8:1_8)
integer(4),intent(in)::ubounds(1_8:1_8)
integer(4),intent(inout)::blkid
end
subroutine field_1lm_host_alloc(hst,lbounds,ubounds,pinned)
logical(4),intent(out),pointer::hst(:)
integer(4),intent(in)::lbounds(1_8:1_8)
integer(4),intent(in)::ubounds(1_8:1_8)
logical(4),intent(in)::pinned
end
subroutine field_1lm_host_dealloc(hst,pinned)
logical(4),intent(inout),pointer::hst(:)
logical(4),intent(in)::pinned
end
subroutine field_1lm_host_dealloc_pooled(hst,blkid)
logical(4),intent(inout),pointer::hst(:)
integer(4),intent(in)::blkid
end
subroutine field_2lm_host_alloc_pooled(hst,lbounds,ubounds,blkid)
logical(4),intent(out),pointer::hst(:,:)
integer(4),intent(in)::lbounds(1_8:2_8)
integer(4),intent(in)::ubounds(1_8:2_8)
integer(4),intent(inout)::blkid
end
subroutine field_2lm_host_alloc(hst,lbounds,ubounds,pinned)
logical(4),intent(out),pointer::hst(:,:)
integer(4),intent(in)::lbounds(1_8:2_8)
integer(4),intent(in)::ubounds(1_8:2_8)
logical(4),intent(in)::pinned
end
subroutine field_2lm_host_dealloc(hst,pinned)
logical(4),intent(inout),pointer::hst(:,:)
logical(4),intent(in)::pinned
end
subroutine field_2lm_host_dealloc_pooled(hst,blkid)
logical(4),intent(inout),pointer::hst(:,:)
integer(4),intent(in)::blkid
end
subroutine field_3lm_host_alloc_pooled(hst,lbounds,ubounds,blkid)
logical(4),intent(out),pointer::hst(:,:,:)
integer(4),intent(in)::lbounds(1_8:3_8)
integer(4),intent(in)::ubounds(1_8:3_8)
integer(4),intent(inout)::blkid
end
subroutine field_3lm_host_alloc(hst,lbounds,ubounds,pinned)
logical(4),intent(out),pointer::hst(:,:,:)
integer(4),intent(in)::lbounds(1_8:3_8)
integer(4),intent(in)::ubounds(1_8:3_8)
logical(4),intent(in)::pinned
end
subroutine field_3lm_host_dealloc(hst,pinned)
logical(4),intent(inout),pointer::hst(:,:,:)
logical(4),intent(in)::pinned
end
subroutine field_3lm_host_dealloc_pooled(hst,blkid)
logical(4),intent(inout),pointer::hst(:,:,:)
integer(4),intent(in)::blkid
end
subroutine field_4lm_host_alloc_pooled(hst,lbounds,ubounds,blkid)
logical(4),intent(out),pointer::hst(:,:,:,:)
integer(4),intent(in)::lbounds(1_8:4_8)
integer(4),intent(in)::ubounds(1_8:4_8)
integer(4),intent(inout)::blkid
end
subroutine field_4lm_host_alloc(hst,lbounds,ubounds,pinned)
logical(4),intent(out),pointer::hst(:,:,:,:)
integer(4),intent(in)::lbounds(1_8:4_8)
integer(4),intent(in)::ubounds(1_8:4_8)
logical(4),intent(in)::pinned
end
subroutine field_4lm_host_dealloc(hst,pinned)
logical(4),intent(inout),pointer::hst(:,:,:,:)
logical(4),intent(in)::pinned
end
subroutine field_4lm_host_dealloc_pooled(hst,blkid)
logical(4),intent(inout),pointer::hst(:,:,:,:)
integer(4),intent(in)::blkid
end
subroutine field_5lm_host_alloc_pooled(hst,lbounds,ubounds,blkid)
logical(4),intent(out),pointer::hst(:,:,:,:,:)
integer(4),intent(in)::lbounds(1_8:5_8)
integer(4),intent(in)::ubounds(1_8:5_8)
integer(4),intent(inout)::blkid
end
subroutine field_5lm_host_alloc(hst,lbounds,ubounds,pinned)
logical(4),intent(out),pointer::hst(:,:,:,:,:)
integer(4),intent(in)::lbounds(1_8:5_8)
integer(4),intent(in)::ubounds(1_8:5_8)
logical(4),intent(in)::pinned
end
subroutine field_5lm_host_dealloc(hst,pinned)
logical(4),intent(inout),pointer::hst(:,:,:,:,:)
logical(4),intent(in)::pinned
end
subroutine field_5lm_host_dealloc_pooled(hst,blkid)
logical(4),intent(inout),pointer::hst(:,:,:,:,:)
integer(4),intent(in)::blkid
end
end
