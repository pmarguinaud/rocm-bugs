!mod$ v1 sum:6b828a5828583e97
!need$ 9b47f6781793c56a n dev_alloc_module
!need$ 1a95e331e288a574 n field_constants_module
module field_basic_module
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

























































































































































































































































































































































































































type,private::gpu_stats
integer(4)::transfer_cpu_to_gpu=0_4
integer(4)::transfer_gpu_to_cpu=0_4
real(4)::total_time_transfer_cpu_to_gpu=0._4
real(4)::total_time_transfer_gpu_to_cpu=0._4
contains
procedure::inc_cpu_to_gpu_transfer
procedure::inc_gpu_to_cpu_transfer
end type
type,abstract::field_basic
logical(4)::thread_buffer=.false._4
integer(4)::istatus=0_4
type(gpu_stats)::stats
logical(4)::lobject_copied=.false._4
logical(4)::map_devptr=.true._4
integer(4)::blkid=0_4
contains
procedure(field_basic_sync),deferred::sync_host_rdwr
procedure(field_basic_sync),deferred::sync_host_rdonly
procedure(field_basic_sync),deferred::sync_device_rdwr
procedure(field_basic_sync),deferred::sync_device_rdonly
procedure(field_basic_delete_device_data),deferred::delete_device_data
procedure(field_basic_create_device_data),deferred::create_device_data
procedure(field_basic_crc64),deferred::crc64
procedure::set_children_devptr=>field_basic_set_children_devptr
procedure::set_device_dirty=>field_basic_set_device_dirty
procedure::set_status=>field_basic_set_status
procedure::get_status=>field_basic_get_status
end type
abstract interface
subroutine field_basic_sync(self,queue)
import::field_basic
class(field_basic)::self
integer(4),intent(in),optional::queue
end
end interface

abstract interface
subroutine field_basic_delete_device_data(self)
import::field_basic
class(field_basic)::self
end
end interface

abstract interface
subroutine field_basic_create_device_data(self)
import::field_basic
class(field_basic)::self
end
end interface

abstract interface
function field_basic_crc64(self)
import::field_basic
class(field_basic)::self
integer(8)::field_basic_crc64
end
end interface






contains
subroutine inc_cpu_to_gpu_transfer(self,start,finish)
class(gpu_stats),intent(inout)::self
real(4),intent(in)::start
real(4),intent(in)::finish
end
subroutine inc_gpu_to_cpu_transfer(self,start,finish)
class(gpu_stats),intent(inout)::self
real(4),intent(in)::start
real(4),intent(in)::finish
end
subroutine field_basic_set_children_devptr(self)
class(field_basic)::self
end
subroutine field_basic_set_device_dirty(self)
class(field_basic)::self
end
subroutine field_basic_set_status(self,kstatus)
class(field_basic)::self
integer(4),intent(in)::kstatus
end
function field_basic_get_status(self)
class(field_basic)::self
integer(4)::field_basic_get_status
end
end
