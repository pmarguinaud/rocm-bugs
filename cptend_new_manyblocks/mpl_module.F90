!mod$ v1 sum:6126d106263900c3
!need$ 852dc44432d3937e n mpl_init_mod
!need$ a087aba83f445dd8 n mpl_buffer_method_mod
!need$ 65610c6db57fffbb n mpl_probe_mod
!need$ 03de218afb178e17 n mpl_end_mod
!need$ b000d4cda8587ad6 n mpl_abort_mod
!need$ a194ebbb84bc784a n mpl_comm_compare_mod
!need$ f02b4bc8fa775184 n mpl_comm_create_mod
!need$ ac187730f1575a37 n mpl_comm_free_mod
!need$ 0ca10cf20cb7c206 n mpl_comm_split_mod
!need$ fbe76b70ef101a35 n mpl_setdflt_comm_mod
!need$ 0bf408bba53a39f3 n mpl_allgather_mod
!need$ d79b2bd433060585 n mpl_nproc_mod
!need$ 6133ffad4cb06732 n mpl_open_mod
!need$ cbb4f5e49437129d n mpl_close_mod
!need$ ef5886bb0c8b6ff4 n mpl_read_mod
!need$ 6ce53e8026f2ad92 n mpl_write_mod
!need$ 3846e175a3e83e15 n mpl_allreduce_mod
!need$ f3d9acd6e71a88a2 n mpl_gatherv_mod
!need$ 1795afc0b508387c n mpl_mygatherv_mod
!need$ 288c3ecf8534bf5b n mpl_allgatherv_mod
!need$ 1763e3daa4d20f16 n mpl_alltoallv_mod
!need$ c366fc820715a2aa n mpl_scatterv_mod
!need$ ebbe941fb93f1c2a n mpl_groups
!need$ 58144665a467c17f n mpl_arg_mod
!need$ 55898cf6c6683fa6 n mpl_locomm_create_mod
!need$ fededf0d548dd27a n mpl_tour_table_mod
!need$ 722108f90d33fe57 n mpl_testsome_mod
!need$ 3e829ef30d0bf664 n mpl_waitany_mod
!need$ bab84b9799db0d1e n mpl_bytes_mod
!need$ 34ba190e9962a54d n mpl_ioinit_mod
!need$ 956cec35194aa2cc n mpl_broadcast_mod
!need$ c7710e3598d4961b n mpl_send_mod
!need$ 90b689daff3e3c45 n mpl_recv_mod
!need$ 9bd279974f1c69f5 n mpl_barrier_mod
!need$ 8e7433af418fbddb n mpl_wait_mod
!need$ 0c1b616bcfdcd81b n mpl_myrank_mod
!need$ 14c904233f628ad5 n mpl_data_module
!need$ 594d9db76b447338 n mpl_message_mod
module mpl_module
use mpl_data_module,only:mpi_comm_world
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
use mpl_init_mod,only:oml_mod$oml_mod$oml_max_threads
use mpl_init_mod,only:mpl_init
use mpl_message_mod,only:mpl_message
use mpl_abort_mod,only:mpl_abort
use mpl_buffer_method_mod,only:mpl_buffer_method
use mpl_tour_table_mod,only:mpl_tour_table
use mpl_locomm_create_mod,only:mpl_locomm_create
use mpl_arg_mod,only:mpl_arg_set_cl_terminate
use mpl_arg_mod,only:mpl_arg_get_cl_terminate
use mpl_arg_mod,only:mpl_getarg
use mpl_arg_mod,only:mpl_iargc
use mpl_send_mod,only:mpl_send
use mpl_nproc_mod,only:mpl_nproc
use mpl_recv_mod,only:mpl_recv
use mpl_wait_mod,only:mpl_wait
use mpl_barrier_mod,only:mpl_barrier
use mpl_broadcast_mod,only:mpl_broadcast
use mpl_myrank_mod,only:mpl_myrank
use mpl_probe_mod,only:mpl_probe
use mpl_end_mod,only:mpl_end
use mpl_comm_compare_mod,only:mpl_comm_compare
use mpl_comm_create_mod,only:mpl_comm_create
use mpl_comm_free_mod,only:mpl_comm_free
use mpl_comm_split_mod,only:mpl_comm_split
use mpl_setdflt_comm_mod,only:mpl_setdflt_comm
use mpl_allgather_mod,only:mpl_allgather
use mpl_ioinit_mod,only:mpl_numio
use mpl_ioinit_mod,only:mpl_iop
use mpl_ioinit_mod,only:mpl_comm_io
use mpl_ioinit_mod,only:mpl_ioinit
use mpl_open_mod,only:mpl_open
use mpl_close_mod,only:mpl_close
use mpl_read_mod,only:mpl_read
use mpl_write_mod,only:mpl_write
use mpl_allreduce_mod,only:mpl_allreduce
use mpl_gatherv_mod,only:mpl_gatherv
use mpl_mygatherv_mod,only:mpl_mygatherv
use mpl_allgatherv_mod,only:mpl_allgatherv
use mpl_alltoallv_mod,only:mpl_alltoallv
use mpl_scatterv_mod,only:mpl_scatterv
use mpl_groups,only:mpl_comm_grid
use mpl_groups,only:mpl_all_levs_comm
use mpl_groups,only:mpl_all_ms_comm
use mpl_groups,only:mpl_groups_create
use mpl_groups,only:mpl_cart_rank
use mpl_groups,only:mpl_cart_coords
use mpl_testsome_mod,only:mpl_testsome
use mpl_waitany_mod,only:mpl_waitany
use mpl_bytes_mod,only:mpl_bytes
end
