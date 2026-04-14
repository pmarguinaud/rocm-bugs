!mod$ v1 sum:cbb4f5e49437129d
!need$ 34ba190e9962a54d n mpl_ioinit_mod
!need$ 2d97711792dc972b n ec_parkind
!need$ 14c904233f628ad5 n mpl_data_module
!need$ 594d9db76b447338 n mpl_message_mod
module mpl_close_mod
use ec_parkind,only:jpim
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
use mpl_message_mod,only:mpl_message
use mpl_ioinit_mod,only:mpl_numio
use mpl_ioinit_mod,only:mpl_iop
use mpl_ioinit_mod,only:mpl_comm_io
use mpl_ioinit_mod,only:mpl_ioinit
private::jpim
private::mpi_comm_world
private::mpl_method
private::mpl_mbx_size
private::mpl_unit
private::mpl_output
private::mpl_rank
private::mpl_numproc
private::mpl_errunit
private::mpl_ids
private::mpl_comm
private::mpl_comm_oml
private::mpl_opponent
private::mpl_ncpu_per_node
private::mpl_max_task_per_node
private::mpl_task_per_node
private::mpl_nnodes
private::lfullnodes
private::mpl_mynode
private::mpl_node
private::mpl_node_tasks
private::mpl_attached_buffer
private::lusehlmpi
private::linitmpi_via_mpl
private::lthsafempi
private::jp_attached_buffer_bytes
private::jp_blocking_standard
private::jp_blocking_buffered
private::jp_blocking_synchronous
private::jp_blocking_ready
private::jp_non_blocking_standard
private::jp_non_blocking_buffered
private::jp_non_blocking_synchronous
private::jp_non_blocking_ready
private::lmplusercomm
private::mplusercomm
private::mpl_send_count
private::mpl_send_bytes
private::mpl_recv_count
private::mpl_recv_bytes
private::mpl_world_rank
private::mpl_world_size
private::mpl_message
private::mpl_numio
private::mpl_iop
private::mpl_comm_io
private::mpl_ioinit
contains
subroutine mpl_close(kfptr,kerror)
integer(4),intent(in)::kfptr
integer(4),intent(out)::kerror
end
end
