!mod$ v1 sum:9b47f6781793c56a
!need$ 920192381ddd6d57 i omp_lib
!need$ 0bde2ac47243ead2 i iso_c_binding
!need$ fe3180dd7f22d4c1 n parkind1
module dev_alloc_module
use parkind1,only:jprm
use parkind1,only:jprd
use parkind1,only:jpim
use parkind1,only:jplm
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
interface
subroutine dev_malloc(siz,ptr) bind(c,name="dev_malloc")
import::c_ptr
integer(8),intent(in),value::siz
type(c_ptr),intent(out)::ptr
end
end interface
interface
subroutine dev_free(ptr) bind(c,name="dev_free")
import::c_ptr
type(c_ptr),intent(in),value::ptr
end
end interface
interface dev_allocate_hst
procedure::field_1rm_dev_allocate_hst
procedure::field_2rm_dev_allocate_hst
procedure::field_3rm_dev_allocate_hst
procedure::field_4rm_dev_allocate_hst
procedure::field_5rm_dev_allocate_hst
procedure::field_1rd_dev_allocate_hst
procedure::field_2rd_dev_allocate_hst
procedure::field_3rd_dev_allocate_hst
procedure::field_4rd_dev_allocate_hst
procedure::field_5rd_dev_allocate_hst
procedure::field_1im_dev_allocate_hst
procedure::field_2im_dev_allocate_hst
procedure::field_3im_dev_allocate_hst
procedure::field_4im_dev_allocate_hst
procedure::field_5im_dev_allocate_hst
procedure::field_1lm_dev_allocate_hst
procedure::field_2lm_dev_allocate_hst
procedure::field_3lm_dev_allocate_hst
procedure::field_4lm_dev_allocate_hst
procedure::field_5lm_dev_allocate_hst
end interface
interface dev_allocate_dim
procedure::field_1rm_dev_allocate_dim
procedure::field_2rm_dev_allocate_dim
procedure::field_3rm_dev_allocate_dim
procedure::field_4rm_dev_allocate_dim
procedure::field_5rm_dev_allocate_dim
procedure::field_1rd_dev_allocate_dim
procedure::field_2rd_dev_allocate_dim
procedure::field_3rd_dev_allocate_dim
procedure::field_4rd_dev_allocate_dim
procedure::field_5rd_dev_allocate_dim
procedure::field_1im_dev_allocate_dim
procedure::field_2im_dev_allocate_dim
procedure::field_3im_dev_allocate_dim
procedure::field_4im_dev_allocate_dim
procedure::field_5im_dev_allocate_dim
procedure::field_1lm_dev_allocate_dim
procedure::field_2lm_dev_allocate_dim
procedure::field_3lm_dev_allocate_dim
procedure::field_4lm_dev_allocate_dim
procedure::field_5lm_dev_allocate_dim
end interface
interface dev_deallocate
procedure::field_1rm_dev_deallocate
procedure::field_2rm_dev_deallocate
procedure::field_3rm_dev_deallocate
procedure::field_4rm_dev_deallocate
procedure::field_5rm_dev_deallocate
procedure::field_1rd_dev_deallocate
procedure::field_2rd_dev_deallocate
procedure::field_3rd_dev_deallocate
procedure::field_4rd_dev_deallocate
procedure::field_5rd_dev_deallocate
procedure::field_1im_dev_deallocate
procedure::field_2im_dev_deallocate
procedure::field_3im_dev_deallocate
procedure::field_4im_dev_deallocate
procedure::field_5im_dev_deallocate
procedure::field_1lm_dev_deallocate
procedure::field_2lm_dev_deallocate
procedure::field_3lm_dev_deallocate
procedure::field_4lm_dev_deallocate
procedure::field_5lm_dev_deallocate
end interface
contains
subroutine field_1rm_dev_allocate_hst(dev,hst,map_devptr)
real(4),pointer::dev(:)
real(4),pointer::hst(:)
logical(4),intent(in)::map_devptr
end
subroutine field_1rm_dev_allocate_dim(dev,ubounds,lbounds,map_devptr)
real(4),pointer::dev(:)
integer(4),intent(in)::ubounds(1_8:1_8)
integer(4),intent(in),optional::lbounds(1_8:1_8)
logical(4),intent(in)::map_devptr
end
subroutine field_1rm_dev_deallocate(dev,map_devptr)
real(4),pointer::dev(:)
logical(4),intent(in)::map_devptr
end
subroutine field_2rm_dev_allocate_hst(dev,hst,map_devptr)
real(4),pointer::dev(:,:)
real(4),pointer::hst(:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_2rm_dev_allocate_dim(dev,ubounds,lbounds,map_devptr)
real(4),pointer::dev(:,:)
integer(4),intent(in)::ubounds(1_8:2_8)
integer(4),intent(in),optional::lbounds(1_8:2_8)
logical(4),intent(in)::map_devptr
end
subroutine field_2rm_dev_deallocate(dev,map_devptr)
real(4),pointer::dev(:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_3rm_dev_allocate_hst(dev,hst,map_devptr)
real(4),pointer::dev(:,:,:)
real(4),pointer::hst(:,:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_3rm_dev_allocate_dim(dev,ubounds,lbounds,map_devptr)
real(4),pointer::dev(:,:,:)
integer(4),intent(in)::ubounds(1_8:3_8)
integer(4),intent(in),optional::lbounds(1_8:3_8)
logical(4),intent(in)::map_devptr
end
subroutine field_3rm_dev_deallocate(dev,map_devptr)
real(4),pointer::dev(:,:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_4rm_dev_allocate_hst(dev,hst,map_devptr)
real(4),pointer::dev(:,:,:,:)
real(4),pointer::hst(:,:,:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_4rm_dev_allocate_dim(dev,ubounds,lbounds,map_devptr)
real(4),pointer::dev(:,:,:,:)
integer(4),intent(in)::ubounds(1_8:4_8)
integer(4),intent(in),optional::lbounds(1_8:4_8)
logical(4),intent(in)::map_devptr
end
subroutine field_4rm_dev_deallocate(dev,map_devptr)
real(4),pointer::dev(:,:,:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_5rm_dev_allocate_hst(dev,hst,map_devptr)
real(4),pointer::dev(:,:,:,:,:)
real(4),pointer::hst(:,:,:,:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_5rm_dev_allocate_dim(dev,ubounds,lbounds,map_devptr)
real(4),pointer::dev(:,:,:,:,:)
integer(4),intent(in)::ubounds(1_8:5_8)
integer(4),intent(in),optional::lbounds(1_8:5_8)
logical(4),intent(in)::map_devptr
end
subroutine field_5rm_dev_deallocate(dev,map_devptr)
real(4),pointer::dev(:,:,:,:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_1rd_dev_allocate_hst(dev,hst,map_devptr)
real(8),pointer::dev(:)
real(8),pointer::hst(:)
logical(4),intent(in)::map_devptr
end
subroutine field_1rd_dev_allocate_dim(dev,ubounds,lbounds,map_devptr)
real(8),pointer::dev(:)
integer(4),intent(in)::ubounds(1_8:1_8)
integer(4),intent(in),optional::lbounds(1_8:1_8)
logical(4),intent(in)::map_devptr
end
subroutine field_1rd_dev_deallocate(dev,map_devptr)
real(8),pointer::dev(:)
logical(4),intent(in)::map_devptr
end
subroutine field_2rd_dev_allocate_hst(dev,hst,map_devptr)
real(8),pointer::dev(:,:)
real(8),pointer::hst(:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_2rd_dev_allocate_dim(dev,ubounds,lbounds,map_devptr)
real(8),pointer::dev(:,:)
integer(4),intent(in)::ubounds(1_8:2_8)
integer(4),intent(in),optional::lbounds(1_8:2_8)
logical(4),intent(in)::map_devptr
end
subroutine field_2rd_dev_deallocate(dev,map_devptr)
real(8),pointer::dev(:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_3rd_dev_allocate_hst(dev,hst,map_devptr)
real(8),pointer::dev(:,:,:)
real(8),pointer::hst(:,:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_3rd_dev_allocate_dim(dev,ubounds,lbounds,map_devptr)
real(8),pointer::dev(:,:,:)
integer(4),intent(in)::ubounds(1_8:3_8)
integer(4),intent(in),optional::lbounds(1_8:3_8)
logical(4),intent(in)::map_devptr
end
subroutine field_3rd_dev_deallocate(dev,map_devptr)
real(8),pointer::dev(:,:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_4rd_dev_allocate_hst(dev,hst,map_devptr)
real(8),pointer::dev(:,:,:,:)
real(8),pointer::hst(:,:,:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_4rd_dev_allocate_dim(dev,ubounds,lbounds,map_devptr)
real(8),pointer::dev(:,:,:,:)
integer(4),intent(in)::ubounds(1_8:4_8)
integer(4),intent(in),optional::lbounds(1_8:4_8)
logical(4),intent(in)::map_devptr
end
subroutine field_4rd_dev_deallocate(dev,map_devptr)
real(8),pointer::dev(:,:,:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_5rd_dev_allocate_hst(dev,hst,map_devptr)
real(8),pointer::dev(:,:,:,:,:)
real(8),pointer::hst(:,:,:,:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_5rd_dev_allocate_dim(dev,ubounds,lbounds,map_devptr)
real(8),pointer::dev(:,:,:,:,:)
integer(4),intent(in)::ubounds(1_8:5_8)
integer(4),intent(in),optional::lbounds(1_8:5_8)
logical(4),intent(in)::map_devptr
end
subroutine field_5rd_dev_deallocate(dev,map_devptr)
real(8),pointer::dev(:,:,:,:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_1im_dev_allocate_hst(dev,hst,map_devptr)
integer(4),pointer::dev(:)
integer(4),pointer::hst(:)
logical(4),intent(in)::map_devptr
end
subroutine field_1im_dev_allocate_dim(dev,ubounds,lbounds,map_devptr)
integer(4),pointer::dev(:)
integer(4),intent(in)::ubounds(1_8:1_8)
integer(4),intent(in),optional::lbounds(1_8:1_8)
logical(4),intent(in)::map_devptr
end
subroutine field_1im_dev_deallocate(dev,map_devptr)
integer(4),pointer::dev(:)
logical(4),intent(in)::map_devptr
end
subroutine field_2im_dev_allocate_hst(dev,hst,map_devptr)
integer(4),pointer::dev(:,:)
integer(4),pointer::hst(:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_2im_dev_allocate_dim(dev,ubounds,lbounds,map_devptr)
integer(4),pointer::dev(:,:)
integer(4),intent(in)::ubounds(1_8:2_8)
integer(4),intent(in),optional::lbounds(1_8:2_8)
logical(4),intent(in)::map_devptr
end
subroutine field_2im_dev_deallocate(dev,map_devptr)
integer(4),pointer::dev(:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_3im_dev_allocate_hst(dev,hst,map_devptr)
integer(4),pointer::dev(:,:,:)
integer(4),pointer::hst(:,:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_3im_dev_allocate_dim(dev,ubounds,lbounds,map_devptr)
integer(4),pointer::dev(:,:,:)
integer(4),intent(in)::ubounds(1_8:3_8)
integer(4),intent(in),optional::lbounds(1_8:3_8)
logical(4),intent(in)::map_devptr
end
subroutine field_3im_dev_deallocate(dev,map_devptr)
integer(4),pointer::dev(:,:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_4im_dev_allocate_hst(dev,hst,map_devptr)
integer(4),pointer::dev(:,:,:,:)
integer(4),pointer::hst(:,:,:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_4im_dev_allocate_dim(dev,ubounds,lbounds,map_devptr)
integer(4),pointer::dev(:,:,:,:)
integer(4),intent(in)::ubounds(1_8:4_8)
integer(4),intent(in),optional::lbounds(1_8:4_8)
logical(4),intent(in)::map_devptr
end
subroutine field_4im_dev_deallocate(dev,map_devptr)
integer(4),pointer::dev(:,:,:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_5im_dev_allocate_hst(dev,hst,map_devptr)
integer(4),pointer::dev(:,:,:,:,:)
integer(4),pointer::hst(:,:,:,:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_5im_dev_allocate_dim(dev,ubounds,lbounds,map_devptr)
integer(4),pointer::dev(:,:,:,:,:)
integer(4),intent(in)::ubounds(1_8:5_8)
integer(4),intent(in),optional::lbounds(1_8:5_8)
logical(4),intent(in)::map_devptr
end
subroutine field_5im_dev_deallocate(dev,map_devptr)
integer(4),pointer::dev(:,:,:,:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_1lm_dev_allocate_hst(dev,hst,map_devptr)
logical(4),pointer::dev(:)
logical(4),pointer::hst(:)
logical(4),intent(in)::map_devptr
end
subroutine field_1lm_dev_allocate_dim(dev,ubounds,lbounds,map_devptr)
logical(4),pointer::dev(:)
integer(4),intent(in)::ubounds(1_8:1_8)
integer(4),intent(in),optional::lbounds(1_8:1_8)
logical(4),intent(in)::map_devptr
end
subroutine field_1lm_dev_deallocate(dev,map_devptr)
logical(4),pointer::dev(:)
logical(4),intent(in)::map_devptr
end
subroutine field_2lm_dev_allocate_hst(dev,hst,map_devptr)
logical(4),pointer::dev(:,:)
logical(4),pointer::hst(:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_2lm_dev_allocate_dim(dev,ubounds,lbounds,map_devptr)
logical(4),pointer::dev(:,:)
integer(4),intent(in)::ubounds(1_8:2_8)
integer(4),intent(in),optional::lbounds(1_8:2_8)
logical(4),intent(in)::map_devptr
end
subroutine field_2lm_dev_deallocate(dev,map_devptr)
logical(4),pointer::dev(:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_3lm_dev_allocate_hst(dev,hst,map_devptr)
logical(4),pointer::dev(:,:,:)
logical(4),pointer::hst(:,:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_3lm_dev_allocate_dim(dev,ubounds,lbounds,map_devptr)
logical(4),pointer::dev(:,:,:)
integer(4),intent(in)::ubounds(1_8:3_8)
integer(4),intent(in),optional::lbounds(1_8:3_8)
logical(4),intent(in)::map_devptr
end
subroutine field_3lm_dev_deallocate(dev,map_devptr)
logical(4),pointer::dev(:,:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_4lm_dev_allocate_hst(dev,hst,map_devptr)
logical(4),pointer::dev(:,:,:,:)
logical(4),pointer::hst(:,:,:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_4lm_dev_allocate_dim(dev,ubounds,lbounds,map_devptr)
logical(4),pointer::dev(:,:,:,:)
integer(4),intent(in)::ubounds(1_8:4_8)
integer(4),intent(in),optional::lbounds(1_8:4_8)
logical(4),intent(in)::map_devptr
end
subroutine field_4lm_dev_deallocate(dev,map_devptr)
logical(4),pointer::dev(:,:,:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_5lm_dev_allocate_hst(dev,hst,map_devptr)
logical(4),pointer::dev(:,:,:,:,:)
logical(4),pointer::hst(:,:,:,:,:)
logical(4),intent(in)::map_devptr
end
subroutine field_5lm_dev_allocate_dim(dev,ubounds,lbounds,map_devptr)
logical(4),pointer::dev(:,:,:,:,:)
integer(4),intent(in)::ubounds(1_8:5_8)
integer(4),intent(in),optional::lbounds(1_8:5_8)
logical(4),intent(in)::map_devptr
end
subroutine field_5lm_dev_deallocate(dev,map_devptr)
logical(4),pointer::dev(:,:,:,:,:)
logical(4),intent(in)::map_devptr
end
end
