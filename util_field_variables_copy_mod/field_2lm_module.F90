!mod$ v1 sum:53c6faf76d256e60
!need$ d6b0ed10c6360817 n oml_mod
!need$ 6a3ebd0a7d9e04dd i ieee_arithmetic
!need$ 68d55a4911fee962 n host_alloc_module
!need$ 4e2a44beb0d018bd n field_basic_module
!need$ 2366fb6125eb49d5 n field_defaults_module
!need$ f70e24cb900c1a50 n field_2lm_data_module
!need$ 6452a2ebf864efca n dev_alloc_module
!need$ 1a95e331e288a574 n field_constants_module
module field_2lm_module
use oml_mod,only:oml_max_threads
use oml_mod,only:oml_my_thread
use,intrinsic::ieee_arithmetic,only:ieee_signaling_nan
use field_2lm_data_module,only:field_2lm_copy_intf
use dev_alloc_module,only:jprm
use dev_alloc_module,only:jprd
use dev_alloc_module,only:jpim
use dev_alloc_module,only:jplm
use dev_alloc_module,only:omp_integer_kind
use dev_alloc_module,only:omp_logical_kind
use dev_alloc_module,only:omp_real_kind
use dev_alloc_module,only:kmp_double_kind
use dev_alloc_module,only:omp_lock_kind
use dev_alloc_module,only:omp_nest_lock_kind
use dev_alloc_module,only:omp_sched_kind
use dev_alloc_module,only:omp_proc_bind_kind
use dev_alloc_module,only:kmp_pointer_kind
use dev_alloc_module,only:kmp_size_t_kind
use dev_alloc_module,only:kmp_affinity_mask_kind
use dev_alloc_module,only:kmp_cancel_kind
use dev_alloc_module,only:omp_sync_hint_kind
use dev_alloc_module,only:omp_lock_hint_kind
use dev_alloc_module,only:omp_control_tool_kind
use dev_alloc_module,only:omp_control_tool_result_kind
use dev_alloc_module,only:omp_allocator_handle_kind
use dev_alloc_module,only:omp_memspace_handle_kind
use dev_alloc_module,only:omp_alloctrait_key_kind
use dev_alloc_module,only:omp_alloctrait_val_kind
use dev_alloc_module,only:omp_interop_kind
use dev_alloc_module,only:omp_interop_fr_kind
use dev_alloc_module,only:omp_alloctrait
use dev_alloc_module,only:omp_pause_resource_kind
use dev_alloc_module,only:omp_depend_kind
use dev_alloc_module,only:omp_event_handle_kind
use dev_alloc_module,only:openmp_version
use dev_alloc_module,only:kmp_version_major
use dev_alloc_module,only:kmp_version_minor
use dev_alloc_module,only:kmp_version_build
use dev_alloc_module,only:omp_sched_static
use dev_alloc_module,only:omp_sched_dynamic
use dev_alloc_module,only:omp_sched_guided
use dev_alloc_module,only:omp_sched_auto
use dev_alloc_module,only:omp_sched_monotonic
use dev_alloc_module,only:omp_proc_bind_false
use dev_alloc_module,only:omp_proc_bind_true
use dev_alloc_module,only:omp_proc_bind_master
use dev_alloc_module,only:omp_proc_bind_close
use dev_alloc_module,only:omp_proc_bind_spread
use dev_alloc_module,only:kmp_cancel_parallel
use dev_alloc_module,only:kmp_cancel_loop
use dev_alloc_module,only:kmp_cancel_sections
use dev_alloc_module,only:kmp_cancel_taskgroup
use dev_alloc_module,only:omp_sync_hint_none
use dev_alloc_module,only:omp_sync_hint_uncontended
use dev_alloc_module,only:omp_sync_hint_contended
use dev_alloc_module,only:omp_sync_hint_nonspeculative
use dev_alloc_module,only:omp_sync_hint_speculative
use dev_alloc_module,only:omp_lock_hint_none
use dev_alloc_module,only:omp_lock_hint_uncontended
use dev_alloc_module,only:omp_lock_hint_contended
use dev_alloc_module,only:omp_lock_hint_nonspeculative
use dev_alloc_module,only:omp_lock_hint_speculative
use dev_alloc_module,only:kmp_lock_hint_hle
use dev_alloc_module,only:kmp_lock_hint_rtm
use dev_alloc_module,only:kmp_lock_hint_adaptive
use dev_alloc_module,only:omp_control_tool_start
use dev_alloc_module,only:omp_control_tool_pause
use dev_alloc_module,only:omp_control_tool_flush
use dev_alloc_module,only:omp_control_tool_end
use dev_alloc_module,only:omp_control_tool_notool
use dev_alloc_module,only:omp_control_tool_nocallback
use dev_alloc_module,only:omp_control_tool_success
use dev_alloc_module,only:omp_control_tool_ignored
use dev_alloc_module,only:omp_atk_sync_hint
use dev_alloc_module,only:omp_atk_alignment
use dev_alloc_module,only:omp_atk_access
use dev_alloc_module,only:omp_atk_pool_size
use dev_alloc_module,only:omp_atk_fallback
use dev_alloc_module,only:omp_atk_fb_data
use dev_alloc_module,only:omp_atk_pinned
use dev_alloc_module,only:omp_atk_partition
use dev_alloc_module,only:omp_atk_pin_device
use dev_alloc_module,only:omp_atk_preferred_device
use dev_alloc_module,only:omp_atk_device_access
use dev_alloc_module,only:omp_atk_target_access
use dev_alloc_module,only:omp_atk_atomic_scope
use dev_alloc_module,only:omp_atk_part_size
use dev_alloc_module,only:omp_atv_default
use dev_alloc_module,only:omp_atv_false
use dev_alloc_module,only:omp_atv_true
use dev_alloc_module,only:omp_atv_contended
use dev_alloc_module,only:omp_atv_uncontended
use dev_alloc_module,only:omp_atv_serialized
use dev_alloc_module,only:omp_atv_sequential
use dev_alloc_module,only:omp_atv_private
use dev_alloc_module,only:omp_atv_device
use dev_alloc_module,only:omp_atv_thread
use dev_alloc_module,only:omp_atv_pteam
use dev_alloc_module,only:omp_atv_cgroup
use dev_alloc_module,only:omp_atv_default_mem_fb
use dev_alloc_module,only:omp_atv_null_fb
use dev_alloc_module,only:omp_atv_abort_fb
use dev_alloc_module,only:omp_atv_allocator_fb
use dev_alloc_module,only:omp_atv_environment
use dev_alloc_module,only:omp_atv_nearest
use dev_alloc_module,only:omp_atv_blocked
use dev_alloc_module,only:omp_atv_interleaved
use dev_alloc_module,only:omp_atv_all
use dev_alloc_module,only:omp_atv_single
use dev_alloc_module,only:omp_atv_multiple
use dev_alloc_module,only:omp_atv_memspace
use dev_alloc_module,only:omp_null_allocator
use dev_alloc_module,only:omp_default_mem_alloc
use dev_alloc_module,only:omp_large_cap_mem_alloc
use dev_alloc_module,only:omp_const_mem_alloc
use dev_alloc_module,only:omp_high_bw_mem_alloc
use dev_alloc_module,only:omp_low_lat_mem_alloc
use dev_alloc_module,only:omp_cgroup_mem_alloc
use dev_alloc_module,only:omp_pteam_mem_alloc
use dev_alloc_module,only:omp_thread_mem_alloc
use dev_alloc_module,only:llvm_omp_target_host_mem_alloc
use dev_alloc_module,only:llvm_omp_target_shared_mem_alloc
use dev_alloc_module,only:llvm_omp_target_device_mem_alloc
use dev_alloc_module,only:omp_null_mem_space
use dev_alloc_module,only:omp_default_mem_space
use dev_alloc_module,only:omp_large_cap_mem_space
use dev_alloc_module,only:omp_const_mem_space
use dev_alloc_module,only:omp_high_bw_mem_space
use dev_alloc_module,only:omp_low_lat_mem_space
use dev_alloc_module,only:llvm_omp_target_host_mem_space
use dev_alloc_module,only:llvm_omp_target_shared_mem_space
use dev_alloc_module,only:llvm_omp_target_device_mem_space
use dev_alloc_module,only:omp_pause_resume
use dev_alloc_module,only:omp_pause_soft
use dev_alloc_module,only:omp_pause_hard
use dev_alloc_module,only:omp_pause_stop_tool
use dev_alloc_module,only:omp_ifr_cuda
use dev_alloc_module,only:omp_ifr_cuda_driver
use dev_alloc_module,only:omp_ifr_opencl
use dev_alloc_module,only:omp_ifr_sycl
use dev_alloc_module,only:omp_ifr_hip
use dev_alloc_module,only:omp_ifr_level_zero
use dev_alloc_module,only:omp_ifr_last
use dev_alloc_module,only:omp_interop_none
use dev_alloc_module,only:omp_set_num_threads
use dev_alloc_module,only:omp_set_dynamic
use dev_alloc_module,only:omp_set_nested
use dev_alloc_module,only:omp_get_num_threads
use dev_alloc_module,only:omp_get_max_threads
use dev_alloc_module,only:omp_get_thread_num
use dev_alloc_module,only:omp_get_num_procs
use dev_alloc_module,only:omp_in_parallel
use dev_alloc_module,only:omp_in_final
use dev_alloc_module,only:omp_get_dynamic
use dev_alloc_module,only:omp_get_nested
use dev_alloc_module,only:omp_get_thread_limit
use dev_alloc_module,only:omp_set_max_active_levels
use dev_alloc_module,only:omp_get_max_active_levels
use dev_alloc_module,only:omp_get_level
use dev_alloc_module,only:omp_get_active_level
use dev_alloc_module,only:omp_get_ancestor_thread_num
use dev_alloc_module,only:omp_get_team_size
use dev_alloc_module,only:omp_set_schedule
use dev_alloc_module,only:omp_get_schedule
use dev_alloc_module,only:omp_get_proc_bind
use dev_alloc_module,only:omp_get_num_places
use dev_alloc_module,only:omp_get_place_num_procs
use dev_alloc_module,only:omp_get_place_proc_ids
use dev_alloc_module,only:omp_get_place_num
use dev_alloc_module,only:omp_get_partition_num_places
use dev_alloc_module,only:omp_get_partition_place_nums
use dev_alloc_module,only:omp_get_wtime
use dev_alloc_module,only:omp_get_wtick
use dev_alloc_module,only:omp_get_default_device
use dev_alloc_module,only:omp_set_default_device
use dev_alloc_module,only:omp_get_num_devices
use dev_alloc_module,only:omp_get_num_teams
use dev_alloc_module,only:omp_get_team_num
use dev_alloc_module,only:omp_get_cancellation
use dev_alloc_module,only:omp_is_initial_device
use dev_alloc_module,only:omp_get_initial_device
use dev_alloc_module,only:omp_get_device_num
use dev_alloc_module,only:omp_pause_resource
use dev_alloc_module,only:omp_pause_resource_all
use dev_alloc_module,only:omp_get_supported_active_levels
use dev_alloc_module,only:omp_fulfill_event
use dev_alloc_module,only:omp_init_lock
use dev_alloc_module,only:omp_destroy_lock
use dev_alloc_module,only:omp_set_lock
use dev_alloc_module,only:omp_unset_lock
use dev_alloc_module,only:omp_test_lock
use dev_alloc_module,only:omp_init_nest_lock
use dev_alloc_module,only:omp_destroy_nest_lock
use dev_alloc_module,only:omp_set_nest_lock
use dev_alloc_module,only:omp_unset_nest_lock
use dev_alloc_module,only:omp_test_nest_lock
use dev_alloc_module,only:omp_get_max_task_priority
use dev_alloc_module,only:omp_init_lock_with_hint
use dev_alloc_module,only:omp_init_nest_lock_with_hint
use dev_alloc_module,only:omp_control_tool
use dev_alloc_module,only:omp_init_allocator
use dev_alloc_module,only:omp_destroy_allocator
use dev_alloc_module,only:omp_set_default_allocator
use dev_alloc_module,only:omp_get_default_allocator
use dev_alloc_module,only:omp_set_affinity_format
use dev_alloc_module,only:omp_get_affinity_format
use dev_alloc_module,only:omp_display_affinity
use dev_alloc_module,only:omp_capture_affinity
use dev_alloc_module,only:omp_set_num_teams
use dev_alloc_module,only:omp_get_max_teams
use dev_alloc_module,only:omp_set_teams_thread_limit
use dev_alloc_module,only:omp_get_teams_thread_limit
use dev_alloc_module,only:omp_display_env
use dev_alloc_module,only:omp_target_alloc
use dev_alloc_module,only:omp_target_free
use dev_alloc_module,only:omp_target_is_present
use dev_alloc_module,only:omp_target_memcpy
use dev_alloc_module,only:omp_target_memcpy_rect
use dev_alloc_module,only:omp_target_memcpy_async
use dev_alloc_module,only:omp_target_memcpy_rect_async
use dev_alloc_module,only:omp_target_memset
use dev_alloc_module,only:omp_target_memset_async
use dev_alloc_module,only:omp_target_associate_ptr
use dev_alloc_module,only:omp_get_mapped_ptr
use dev_alloc_module,only:omp_target_disassociate_ptr
use dev_alloc_module,only:omp_target_is_accessible
use dev_alloc_module,only:omp_alloc
use dev_alloc_module,only:omp_aligned_alloc
use dev_alloc_module,only:omp_calloc
use dev_alloc_module,only:omp_aligned_calloc
use dev_alloc_module,only:omp_realloc
use dev_alloc_module,only:omp_free
use dev_alloc_module,only:omp_in_explicit_task
use dev_alloc_module,only:kmp_set_stacksize
use dev_alloc_module,only:kmp_set_stacksize_s
use dev_alloc_module,only:kmp_set_blocktime
use dev_alloc_module,only:kmp_set_library_serial
use dev_alloc_module,only:kmp_set_library_turnaround
use dev_alloc_module,only:kmp_set_library_throughput
use dev_alloc_module,only:kmp_set_library
use dev_alloc_module,only:kmp_set_defaults
use dev_alloc_module,only:kmp_get_stacksize
use dev_alloc_module,only:kmp_get_stacksize_s
use dev_alloc_module,only:kmp_get_blocktime
use dev_alloc_module,only:kmp_get_library
use dev_alloc_module,only:kmp_set_disp_num_buffers
use dev_alloc_module,only:kmp_set_affinity
use dev_alloc_module,only:kmp_get_affinity
use dev_alloc_module,only:kmp_get_affinity_max_proc
use dev_alloc_module,only:kmp_create_affinity_mask
use dev_alloc_module,only:kmp_destroy_affinity_mask
use dev_alloc_module,only:kmp_set_affinity_mask_proc
use dev_alloc_module,only:kmp_unset_affinity_mask_proc
use dev_alloc_module,only:kmp_get_affinity_mask_proc
use dev_alloc_module,only:kmp_malloc
use dev_alloc_module,only:kmp_aligned_malloc
use dev_alloc_module,only:kmp_calloc
use dev_alloc_module,only:kmp_realloc
use dev_alloc_module,only:kmp_free
use dev_alloc_module,only:kmp_set_warnings_on
use dev_alloc_module,only:kmp_set_warnings_off
use dev_alloc_module,only:kmp_get_cancellation_status
use dev_alloc_module,only:c_associated
use dev_alloc_module,only:c_funloc
use dev_alloc_module,only:c_funptr
use dev_alloc_module,only:c_f_pointer
use dev_alloc_module,only:c_loc
use dev_alloc_module,only:c_null_funptr
use dev_alloc_module,only:c_null_ptr
use dev_alloc_module,only:c_ptr
use dev_alloc_module,only:c_sizeof
use dev_alloc_module,only:operator(==)
use dev_alloc_module,only:operator(/=)
use dev_alloc_module,only:c_int8_t
use dev_alloc_module,only:c_int16_t
use dev_alloc_module,only:c_int32_t
use dev_alloc_module,only:c_int64_t
use dev_alloc_module,only:c_int128_t
use dev_alloc_module,only:c_int
use dev_alloc_module,only:c_short
use dev_alloc_module,only:c_long
use dev_alloc_module,only:c_long_long
use dev_alloc_module,only:c_signed_char
use dev_alloc_module,only:c_size_t
use dev_alloc_module,only:c_intmax_t
use dev_alloc_module,only:c_intptr_t
use dev_alloc_module,only:c_ptrdiff_t
use dev_alloc_module,only:c_int_least8_t
use dev_alloc_module,only:c_int_fast8_t
use dev_alloc_module,only:c_int_least16_t
use dev_alloc_module,only:c_int_fast16_t
use dev_alloc_module,only:c_int_least32_t
use dev_alloc_module,only:c_int_fast32_t
use dev_alloc_module,only:c_int_least64_t
use dev_alloc_module,only:c_int_fast64_t
use dev_alloc_module,only:c_int_least128_t
use dev_alloc_module,only:c_int_fast128_t
use dev_alloc_module,only:c_float
use dev_alloc_module,only:c_double
use dev_alloc_module,only:c_long_double
use dev_alloc_module,only:c_float_complex
use dev_alloc_module,only:c_double_complex
use dev_alloc_module,only:c_long_double_complex
use dev_alloc_module,only:c_bool
use dev_alloc_module,only:c_char
use dev_alloc_module,only:c_null_char
use dev_alloc_module,only:c_alert
use dev_alloc_module,only:c_backspace
use dev_alloc_module,only:c_form_feed
use dev_alloc_module,only:c_new_line
use dev_alloc_module,only:c_carriage_return
use dev_alloc_module,only:c_horizontal_tab
use dev_alloc_module,only:c_vertical_tab
use dev_alloc_module,only:c_float128
use dev_alloc_module,only:c_float128_complex
use dev_alloc_module,only:c_uint8_t
use dev_alloc_module,only:c_uint16_t
use dev_alloc_module,only:c_uint32_t
use dev_alloc_module,only:c_uint64_t
use dev_alloc_module,only:c_uint128_t
use dev_alloc_module,only:c_unsigned_char
use dev_alloc_module,only:c_unsigned_short
use dev_alloc_module,only:c_unsigned
use dev_alloc_module,only:c_unsigned_long
use dev_alloc_module,only:c_unsigned_long_long
use dev_alloc_module,only:c_uintmax_t
use dev_alloc_module,only:c_uint_fast8_t
use dev_alloc_module,only:c_uint_fast16_t
use dev_alloc_module,only:c_uint_fast32_t
use dev_alloc_module,only:c_uint_fast64_t
use dev_alloc_module,only:c_uint_fast128_t
use dev_alloc_module,only:c_uint_least8_t
use dev_alloc_module,only:c_uint_least16_t
use dev_alloc_module,only:c_uint_least32_t
use dev_alloc_module,only:c_uint_least64_t
use dev_alloc_module,only:c_uint_least128_t
use dev_alloc_module,only:c_f_procpointer
use dev_alloc_module,only:dev_malloc
use dev_alloc_module,only:dev_free
use dev_alloc_module,only:dev_allocate_hst
use dev_alloc_module,only:dev_allocate_dim
use dev_alloc_module,only:dev_deallocate
use dev_alloc_module,only:field_1rm_dev_allocate_hst
use dev_alloc_module,only:field_1rm_dev_allocate_dim
use dev_alloc_module,only:field_1rm_dev_deallocate
use dev_alloc_module,only:field_2rm_dev_allocate_hst
use dev_alloc_module,only:field_2rm_dev_allocate_dim
use dev_alloc_module,only:field_2rm_dev_deallocate
use dev_alloc_module,only:field_3rm_dev_allocate_hst
use dev_alloc_module,only:field_3rm_dev_allocate_dim
use dev_alloc_module,only:field_3rm_dev_deallocate
use dev_alloc_module,only:field_4rm_dev_allocate_hst
use dev_alloc_module,only:field_4rm_dev_allocate_dim
use dev_alloc_module,only:field_4rm_dev_deallocate
use dev_alloc_module,only:field_5rm_dev_allocate_hst
use dev_alloc_module,only:field_5rm_dev_allocate_dim
use dev_alloc_module,only:field_5rm_dev_deallocate
use dev_alloc_module,only:field_1rd_dev_allocate_hst
use dev_alloc_module,only:field_1rd_dev_allocate_dim
use dev_alloc_module,only:field_1rd_dev_deallocate
use dev_alloc_module,only:field_2rd_dev_allocate_hst
use dev_alloc_module,only:field_2rd_dev_allocate_dim
use dev_alloc_module,only:field_2rd_dev_deallocate
use dev_alloc_module,only:field_3rd_dev_allocate_hst
use dev_alloc_module,only:field_3rd_dev_allocate_dim
use dev_alloc_module,only:field_3rd_dev_deallocate
use dev_alloc_module,only:field_4rd_dev_allocate_hst
use dev_alloc_module,only:field_4rd_dev_allocate_dim
use dev_alloc_module,only:field_4rd_dev_deallocate
use dev_alloc_module,only:field_5rd_dev_allocate_hst
use dev_alloc_module,only:field_5rd_dev_allocate_dim
use dev_alloc_module,only:field_5rd_dev_deallocate
use dev_alloc_module,only:field_1im_dev_allocate_hst
use dev_alloc_module,only:field_1im_dev_allocate_dim
use dev_alloc_module,only:field_1im_dev_deallocate
use dev_alloc_module,only:field_2im_dev_allocate_hst
use dev_alloc_module,only:field_2im_dev_allocate_dim
use dev_alloc_module,only:field_2im_dev_deallocate
use dev_alloc_module,only:field_3im_dev_allocate_hst
use dev_alloc_module,only:field_3im_dev_allocate_dim
use dev_alloc_module,only:field_3im_dev_deallocate
use dev_alloc_module,only:field_4im_dev_allocate_hst
use dev_alloc_module,only:field_4im_dev_allocate_dim
use dev_alloc_module,only:field_4im_dev_deallocate
use dev_alloc_module,only:field_5im_dev_allocate_hst
use dev_alloc_module,only:field_5im_dev_allocate_dim
use dev_alloc_module,only:field_5im_dev_deallocate
use dev_alloc_module,only:field_1lm_dev_allocate_hst
use dev_alloc_module,only:field_1lm_dev_allocate_dim
use dev_alloc_module,only:field_1lm_dev_deallocate
use dev_alloc_module,only:field_2lm_dev_allocate_hst
use dev_alloc_module,only:field_2lm_dev_allocate_dim
use dev_alloc_module,only:field_2lm_dev_deallocate
use dev_alloc_module,only:field_3lm_dev_allocate_hst
use dev_alloc_module,only:field_3lm_dev_allocate_dim
use dev_alloc_module,only:field_3lm_dev_deallocate
use dev_alloc_module,only:field_4lm_dev_allocate_hst
use dev_alloc_module,only:field_4lm_dev_allocate_dim
use dev_alloc_module,only:field_4lm_dev_deallocate
use dev_alloc_module,only:field_5lm_dev_allocate_hst
use dev_alloc_module,only:field_5lm_dev_allocate_dim
use dev_alloc_module,only:field_5lm_dev_deallocate
use host_alloc_module,only:host_pool
use host_alloc_module,only:host_alloc
use host_alloc_module,only:host_alloc_pooled
use host_alloc_module,only:host_dealloc
use host_alloc_module,only:host_dealloc_pooled
use field_defaults_module,only:int64
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
use field_basic_module,only:field_basic
use field_basic_module,only:field_basic_sync
use field_constants_module,only:ndevfresh
use field_constants_module,only:int
use field_constants_module,only:nhstfresh
use field_constants_module,only:unallocated
use field_constants_module,only:uninitialized
use field_constants_module,only:nh2d
use field_constants_module,only:nd2h
use field_constants_module,only:nrd
use field_constants_module,only:nwr
use field_constants_module,only:nf2l
use field_constants_module,only:nl2f
use host_alloc_module,only:host_alloc_module$host_alloc_module$field_2lm_host_alloc=>field_2lm_host_alloc
use host_alloc_module,only:host_alloc_module$host_alloc_module$field_2lm_host_alloc_pooled=>field_2lm_host_alloc_pooled
use host_alloc_module,only:host_alloc_module$host_alloc_module$field_2lm_host_dealloc=>field_2lm_host_dealloc
use host_alloc_module,only:host_alloc_module$host_alloc_module$field_2lm_host_dealloc_pooled=>field_2lm_host_dealloc_pooled
private::oml_max_threads
private::oml_my_thread
private::ieee_signaling_nan
private::field_2lm_copy_intf
private::jprm
private::jprd
private::jpim
private::jplm
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
private::dev_malloc
private::dev_free
private::dev_allocate_hst
private::dev_allocate_dim
private::dev_deallocate
private::field_1rm_dev_allocate_hst
private::field_1rm_dev_allocate_dim
private::field_1rm_dev_deallocate
private::field_2rm_dev_allocate_hst
private::field_2rm_dev_allocate_dim
private::field_2rm_dev_deallocate
private::field_3rm_dev_allocate_hst
private::field_3rm_dev_allocate_dim
private::field_3rm_dev_deallocate
private::field_4rm_dev_allocate_hst
private::field_4rm_dev_allocate_dim
private::field_4rm_dev_deallocate
private::field_5rm_dev_allocate_hst
private::field_5rm_dev_allocate_dim
private::field_5rm_dev_deallocate
private::field_1rd_dev_allocate_hst
private::field_1rd_dev_allocate_dim
private::field_1rd_dev_deallocate
private::field_2rd_dev_allocate_hst
private::field_2rd_dev_allocate_dim
private::field_2rd_dev_deallocate
private::field_3rd_dev_allocate_hst
private::field_3rd_dev_allocate_dim
private::field_3rd_dev_deallocate
private::field_4rd_dev_allocate_hst
private::field_4rd_dev_allocate_dim
private::field_4rd_dev_deallocate
private::field_5rd_dev_allocate_hst
private::field_5rd_dev_allocate_dim
private::field_5rd_dev_deallocate
private::field_1im_dev_allocate_hst
private::field_1im_dev_allocate_dim
private::field_1im_dev_deallocate
private::field_2im_dev_allocate_hst
private::field_2im_dev_allocate_dim
private::field_2im_dev_deallocate
private::field_3im_dev_allocate_hst
private::field_3im_dev_allocate_dim
private::field_3im_dev_deallocate
private::field_4im_dev_allocate_hst
private::field_4im_dev_allocate_dim
private::field_4im_dev_deallocate
private::field_5im_dev_allocate_hst
private::field_5im_dev_allocate_dim
private::field_5im_dev_deallocate
private::field_1lm_dev_allocate_hst
private::field_1lm_dev_allocate_dim
private::field_1lm_dev_deallocate
private::field_2lm_dev_allocate_hst
private::field_2lm_dev_allocate_dim
private::field_2lm_dev_deallocate
private::field_3lm_dev_allocate_hst
private::field_3lm_dev_allocate_dim
private::field_3lm_dev_deallocate
private::field_4lm_dev_allocate_hst
private::field_4lm_dev_allocate_dim
private::field_4lm_dev_deallocate
private::field_5lm_dev_allocate_hst
private::field_5lm_dev_allocate_dim
private::field_5lm_dev_deallocate
private::host_pool
private::host_alloc
private::host_alloc_pooled
private::host_dealloc
private::host_dealloc_pooled
private::int64
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
private::field_basic
private::field_basic_sync
private::ndevfresh
private::int
private::nhstfresh
private::unallocated
private::uninitialized
private::nh2d
private::nd2h
private::nrd
private::nwr
private::nf2l
private::nl2f
private::host_alloc_module$host_alloc_module$field_2lm_host_alloc
private::host_alloc_module$host_alloc_module$field_2lm_host_alloc_pooled
private::host_alloc_module$host_alloc_module$field_2lm_host_dealloc
private::host_alloc_module$host_alloc_module$field_2lm_host_dealloc_pooled
type,abstract,extends(field_basic)::field_2lm
logical(4),pointer::ptr(:,:)=>NULL()
logical(4),pointer::devptr(:,:)=>NULL()
procedure(field_2lm_copy_intf),nopass,pointer::copy_func=>NULL()
contains
procedure::final=>field_2lm_final
procedure::field_2lm_final
procedure::delete_device_data=>field_2lm_delete_device_data
procedure::get_view=>field_2lm_get_view
procedure::get_device_data_rdonly=>field_2lm_get_device_data_rdonly
procedure::get_device_data_wronly=>field_2lm_get_device_data_wronly
procedure::get_device_data_rdwr=>field_2lm_get_device_data_rdwr
procedure::get_host_data_rdonly=>field_2lm_get_host_data_rdonly
procedure::get_host_data_rdwr=>field_2lm_get_host_data_rdwr
procedure::sync_host_rdwr=>field_2lm_sync_host_rdwr
procedure::sync_host_rdonly=>field_2lm_sync_host_rdonly
procedure::sync_device_rdwr=>field_2lm_sync_device_rdwr
procedure::sync_device_rdonly=>field_2lm_sync_device_rdonly
procedure::copy_object=>field_2lm_copy_object
procedure::wipe_object=>field_2lm_wipe_object
procedure(get_dims),deferred::get_dims
procedure(resize),deferred::resize
procedure::get_device_data=>field_2lm_get_device_data
procedure::get_host_data=>field_2lm_get_host_data
procedure,private::field_2lm_get_host_data
procedure,private::field_2lm_get_device_data
procedure,private::copy_data=>field_2lm_copy_data
procedure::create_device_data=>field_2lm_create_device_data
procedure::crc64=>field_2lm_crc64
end type
intrinsic::null
private::null
private::get_dims
abstract interface
subroutine get_dims(self,lbounds,ubounds)
import::field_2lm
class(field_2lm),intent(in)::self
integer(4),intent(out),optional::lbounds(1_8:2_8)
integer(4),intent(out),optional::ubounds(1_8:2_8)
end
end interface
private::resize
abstract interface
subroutine resize(self,ubounds,lbounds,persistent)
import::field_2lm
class(field_2lm),intent(in)::self
integer(4),intent(in)::ubounds(1_8:2_8)
integer(4),intent(in),optional::lbounds(1_8:2_8)
logical(4),intent(in),optional::persistent
end
end interface
type,extends(field_2lm)::field_2lm_wrapper
logical(4)::sync_on_final=.true._4
contains
procedure::init=>field_2lm_wrapper_init
procedure::final=>field_2lm_wrapper_final
procedure::get_dims=>field_2lm_wrapper_get_dims
procedure::resize=>field_2lm_wrapper_resize
end type
type,extends(field_2lm)::field_2lm_owner
integer(4)::lbounds(1_8:2_8)
integer(4)::ubounds(1_8:2_8)
logical(4)::has_init_value=.false._4
logical(4)::pinned=.false._4
logical(4)::pooled=.false._4
logical(4)::init_value
contains
procedure::init=>field_2lm_owner_init
procedure::final=>field_2lm_owner_final
procedure,private::create_host_data=>field_2lm_owner_create_host_data
procedure::get_host_data=>field_2lm_owner_get_host_data
procedure::get_device_data=>field_2lm_owner_get_device_data
procedure::get_dims=>field_2lm_owner_get_dims
procedure::resize=>field_2lm_owner_resize
end type
type::field_2lm_ptr
class(field_2lm),pointer::ptr=>NULL()
end type
type::field_2lm_view
logical(4),pointer::p(:)=>NULL()
end type
private::field_2lm_wrapper_init
private::field_2lm_owner_init
private::field_2lm_owner_create_host_data
private::field_2lm_get_view
private::field_2lm_delete_device_data
private::field_2lm_final
private::field_2lm_wrapper_final
private::field_2lm_owner_final
private::field_2lm_copy_object
private::field_2lm_wipe_object
private::field_2lm_copy_data
private::field_2lm_get_host_data
private::field_2lm_owner_get_host_data
private::field_2lm_get_host_data_rdonly
private::field_2lm_sync_host_rdonly
private::field_2lm_get_host_data_rdwr
private::field_2lm_sync_host_rdwr
private::field_2lm_create_device_data
private::field_2lm_get_device_data
private::field_2lm_crc64
private::field_2lm_owner_get_device_data
private::field_2lm_get_device_data_rdonly
private::field_2lm_get_device_data_wronly
private::field_2lm_sync_device_rdonly
private::field_2lm_get_device_data_rdwr
private::field_2lm_sync_device_rdwr
private::field_2lm_wrapper_get_dims
private::field_2lm_owner_get_dims
private::field_2lm_wrapper_resize
private::field_2lm_owner_resize
contains
subroutine field_2lm_wrapper_init(self,data,persistent,lbounds,map_devptr,sync_on_final,initialized)
class(field_2lm_wrapper)::self
logical(4),intent(in),target::data(:,:)
logical(4),intent(in),optional::persistent
integer(4),intent(in),optional::lbounds(1_8:2_8)
logical(4),intent(in),optional::map_devptr
logical(4),intent(in),optional::sync_on_final
logical(4),intent(in),optional::initialized
end
subroutine field_2lm_owner_init(self,lbounds,ubounds,persistent,delayed,init_value,pinned,map_devptr,pooled)
class(field_2lm_owner)::self
integer(4),intent(in),optional::lbounds(1_8:2_8)
integer(4),intent(in)::ubounds(1_8:2_8)
logical(4),intent(in),optional::persistent
logical(4),intent(in),optional::delayed
logical(4),intent(in),optional::init_value
logical(4),intent(in),optional::pinned
logical(4),intent(in),optional::map_devptr
logical(4),intent(in),optional::pooled
end
subroutine field_2lm_owner_create_host_data(self)
class(field_2lm_owner)::self
end
function field_2lm_get_view(self,block_index,zero) result(view_ptr)
class(field_2lm)::self
integer(4),intent(in)::block_index
logical(4),intent(in),optional::zero
logical(4),pointer::view_ptr(:)
end
subroutine field_2lm_delete_device_data(self)
class(field_2lm)::self
end
subroutine field_2lm_final(self)
class(field_2lm)::self
end
subroutine field_2lm_wrapper_final(self)
class(field_2lm_wrapper)::self
end
subroutine field_2lm_owner_final(self)
class(field_2lm_owner)::self
end
subroutine field_2lm_copy_object(self,ldcreated)
class(field_2lm)::self
logical(4),intent(in),optional::ldcreated
end
subroutine field_2lm_wipe_object(self,lddeleted)
class(field_2lm)::self
logical(4),intent(in),optional::lddeleted
end
subroutine field_2lm_copy_data(self,kdir,queue)
class(field_2lm)::self
integer(4),intent(in)::kdir
integer(4),intent(in),optional::queue
end
subroutine field_2lm_get_host_data(self,mode,ptr,queue)
class(field_2lm)::self
integer(4),intent(in)::mode
logical(4),intent(inout),pointer::ptr(:,:)
integer(4),intent(in),optional::queue
end
subroutine field_2lm_owner_get_host_data(self,mode,ptr,queue)
class(field_2lm_owner)::self
integer(4),intent(in)::mode
logical(4),intent(inout),pointer::ptr(:,:)
integer(4),intent(in),optional::queue
end
subroutine field_2lm_get_host_data_rdonly(self,pptr,queue)
class(field_2lm)::self
logical(4),intent(inout),pointer::pptr(:,:)
integer(4),intent(in),optional::queue
end
subroutine field_2lm_sync_host_rdonly(self,queue)
class(field_2lm)::self
integer(4),intent(in),optional::queue
end
subroutine field_2lm_get_host_data_rdwr(self,pptr,queue)
class(field_2lm)::self
logical(4),intent(inout),pointer::pptr(:,:)
integer(4),intent(in),optional::queue
end
subroutine field_2lm_sync_host_rdwr(self,queue)
class(field_2lm)::self
integer(4),intent(in),optional::queue
end
subroutine field_2lm_create_device_data(self)
class(field_2lm)::self
end
subroutine field_2lm_get_device_data(self,mode,ptr,queue)
class(field_2lm)::self
integer(4),intent(in)::mode
logical(4),intent(inout),pointer::ptr(:,:)
integer(4),intent(in),optional::queue
end
function field_2lm_crc64(self) result(icrc)
class(field_2lm)::self
integer(8)::icrc
end
subroutine field_2lm_owner_get_device_data(self,mode,ptr,queue)
class(field_2lm_owner)::self
integer(4),intent(in)::mode
logical(4),intent(inout),pointer::ptr(:,:)
integer(4),intent(in),optional::queue
end
subroutine field_2lm_get_device_data_rdonly(self,pptr,queue)
class(field_2lm)::self
logical(4),intent(inout),pointer::pptr(:,:)
integer(4),intent(in),optional::queue
end
subroutine field_2lm_get_device_data_wronly(self,pptr,queue)
class(field_2lm)::self
logical(4),intent(inout),pointer::pptr(:,:)
integer(4),intent(in),optional::queue
end
subroutine field_2lm_sync_device_rdonly(self,queue)
class(field_2lm)::self
integer(4),intent(in),optional::queue
end
subroutine field_2lm_get_device_data_rdwr(self,pptr,queue)
class(field_2lm)::self
logical(4),intent(inout),pointer::pptr(:,:)
integer(4),intent(in),optional::queue
end
subroutine field_2lm_sync_device_rdwr(self,queue)
class(field_2lm)::self
integer(4),intent(in),optional::queue
end
subroutine field_2lm_wrapper_get_dims(self,lbounds,ubounds)
class(field_2lm_wrapper),intent(in)::self
integer(4),intent(out),optional::lbounds(1_8:2_8)
integer(4),intent(out),optional::ubounds(1_8:2_8)
end
subroutine field_2lm_owner_get_dims(self,lbounds,ubounds)
class(field_2lm_owner),intent(in)::self
integer(4),intent(out),optional::lbounds(1_8:2_8)
integer(4),intent(out),optional::ubounds(1_8:2_8)
end
subroutine field_2lm_wrapper_resize(self,ubounds,lbounds,persistent)
class(field_2lm_wrapper),intent(in)::self
integer(4),intent(in)::ubounds(1_8:2_8)
integer(4),intent(in),optional::lbounds(1_8:2_8)
logical(4),intent(in),optional::persistent
end
subroutine field_2lm_owner_resize(self,ubounds,lbounds,persistent)
class(field_2lm_owner),intent(in)::self
integer(4),intent(in)::ubounds(1_8:2_8)
integer(4),intent(in),optional::lbounds(1_8:2_8)
logical(4),intent(in),optional::persistent
end
end
