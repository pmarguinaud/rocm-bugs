!mod$ v1 sum:14c904233f628ad5
!need$ 436476a209f4d978 n mpl_mpif
!need$ 2d97711792dc972b n ec_parkind
module mpl_data_module
use mpl_mpif,only:mpi_comm_world
use ec_parkind,only:jpim
private::jpim
integer(4)::mpl_method
integer(4)::mpl_mbx_size
integer(4)::mpl_unit
integer(4)::mpl_output
integer(4)::mpl_rank
integer(4)::mpl_numproc
integer(4)::mpl_errunit
integer(4),allocatable::mpl_ids(:)
integer(4)::mpl_comm
integer(4),allocatable::mpl_comm_oml(:)
integer(4),allocatable::mpl_opponent(:)
integer(4)::mpl_ncpu_per_node
integer(4)::mpl_max_task_per_node
integer(4),allocatable::mpl_task_per_node(:)
integer(4)::mpl_nnodes
logical(4)::lfullnodes
integer(4)::mpl_mynode
integer(4),allocatable::mpl_node(:)
integer(4),allocatable::mpl_node_tasks(:,:)
integer(4),allocatable,target::mpl_attached_buffer(:)
logical(4)::lusehlmpi
logical(4)::linitmpi_via_mpl
logical(4)::lthsafempi
integer(4),parameter::jp_attached_buffer_bytes=4_4
integer(4),parameter::jp_blocking_standard=1_4
integer(4),parameter::jp_blocking_buffered=2_4
integer(4),parameter::jp_blocking_synchronous=3_4
integer(4),parameter::jp_blocking_ready=4_4
integer(4),parameter::jp_non_blocking_standard=5_4
integer(4),parameter::jp_non_blocking_buffered=6_4
integer(4),parameter::jp_non_blocking_synchronous=7_4
integer(4),parameter::jp_non_blocking_ready=8_4
logical(4)::lmplusercomm
integer(4)::mplusercomm
integer(4)::mpl_send_count
integer(4)::mpl_send_bytes
integer(4)::mpl_recv_count
integer(4)::mpl_recv_bytes
integer(4)::mpl_world_rank
integer(4)::mpl_world_size
end
