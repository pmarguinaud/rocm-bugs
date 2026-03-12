!mod$ v1 sum:6001be3656890dfb
!need$ fac01a461819e988 n spectral_fields_data
!need$ 6126d106263900c3 n mpl_module
!need$ fe3180dd7f22d4c1 n parkind1
!need$ 3846e175a3e83e15 n mpl_allreduce_mod
!need$ 288c3ecf8534bf5b n mpl_allgatherv_mod
!need$ 99f7ec52259902ea n yomhook
module spectral_fields_para_mod
use parkind1,only:jprb
use parkind1,only:jpim
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use spectral_fields_data,only:spectral_field
use spectral_fields_data,only:nprtrv
use spectral_fields_data,only:nprtrw
use spectral_fields_data,only:lelam
use spectral_fields_data,only:nulout
use mpl_module,only:mpi_comm_world
use mpl_module,only:mpl_method
use mpl_module,only:mpl_mbx_size
use mpl_module,only:mpl_unit
use mpl_module,only:mpl_output
use mpl_module,only:mpl_rank
use mpl_module,only:mpl_numproc
use mpl_module,only:mpl_errunit
use mpl_module,only:mpl_ids
use mpl_module,only:mpl_comm
use mpl_module,only:mpl_comm_oml
use mpl_module,only:mpl_opponent
use mpl_module,only:mpl_ncpu_per_node
use mpl_module,only:mpl_max_task_per_node
use mpl_module,only:mpl_task_per_node
use mpl_module,only:mpl_nnodes
use mpl_module,only:lfullnodes
use mpl_module,only:mpl_mynode
use mpl_module,only:mpl_node
use mpl_module,only:mpl_node_tasks
use mpl_module,only:mpl_attached_buffer
use mpl_module,only:lusehlmpi
use mpl_module,only:linitmpi_via_mpl
use mpl_module,only:lthsafempi
use mpl_module,only:jp_attached_buffer_bytes
use mpl_module,only:jp_blocking_standard
use mpl_module,only:jp_blocking_buffered
use mpl_module,only:jp_blocking_synchronous
use mpl_module,only:jp_blocking_ready
use mpl_module,only:jp_non_blocking_standard
use mpl_module,only:jp_non_blocking_buffered
use mpl_module,only:jp_non_blocking_synchronous
use mpl_module,only:jp_non_blocking_ready
use mpl_module,only:lmplusercomm
use mpl_module,only:mplusercomm
use mpl_module,only:mpl_send_count
use mpl_module,only:mpl_send_bytes
use mpl_module,only:mpl_recv_count
use mpl_module,only:mpl_recv_bytes
use mpl_module,only:mpl_world_rank
use mpl_module,only:mpl_world_size
use mpl_module
use mpl_module,only:mpl_init
use mpl_module,only:mpl_message
use mpl_module,only:mpl_abort
use mpl_module,only:mpl_buffer_method
use mpl_module,only:mpl_tour_table
use mpl_module,only:mpl_locomm_create
use mpl_module,only:mpl_arg_set_cl_terminate
use mpl_module,only:mpl_arg_get_cl_terminate
use mpl_module,only:mpl_getarg
use mpl_module,only:mpl_iargc
use mpl_module,only:mpl_send
use mpl_module,only:mpl_nproc
use mpl_module,only:mpl_recv
use mpl_module,only:mpl_wait
use mpl_module,only:mpl_barrier
use mpl_module,only:mpl_broadcast
use mpl_module,only:mpl_myrank
use mpl_module,only:mpl_probe
use mpl_module,only:mpl_end
use mpl_module,only:mpl_comm_compare
use mpl_module,only:mpl_comm_create
use mpl_module,only:mpl_comm_free
use mpl_module,only:mpl_comm_split
use mpl_module,only:mpl_setdflt_comm
use mpl_module,only:mpl_allgather
use mpl_module,only:mpl_numio
use mpl_module,only:mpl_iop
use mpl_module,only:mpl_comm_io
use mpl_module,only:mpl_ioinit
use mpl_module,only:mpl_open
use mpl_module,only:mpl_close
use mpl_module,only:mpl_read
use mpl_module,only:mpl_write
use mpl_module,only:mpl_allreduce
use mpl_module,only:mpl_gatherv
use mpl_module,only:mpl_mygatherv
use mpl_module,only:mpl_allgatherv
use mpl_module,only:mpl_alltoallv
use mpl_module,only:mpl_scatterv
use mpl_module,only:mpl_comm_grid
use mpl_module,only:mpl_all_levs_comm
use mpl_module,only:mpl_all_ms_comm
use mpl_module,only:mpl_groups_create
use mpl_module,only:mpl_cart_rank
use mpl_module,only:mpl_cart_coords
use mpl_module,only:mpl_testsome
use mpl_module,only:mpl_waitany
use mpl_module,only:mpl_bytes
use mpl_allgatherv_mod
use mpl_allreduce_mod
use yomhook
















































































































interface dot_product
procedure::dot_product_spec
end interface
interface spectral_norm
procedure::specnorm_prt
procedure::specnorm_array
procedure::specnorm_arrprt
end interface
interface spectral_norm_levs
procedure::specnorm_prt_lev
procedure::specnorm_array_lev
end interface
interface spectral_max_levs
procedure::specmax_prt_lev
procedure::specmax_array_lev
end interface
contains
function dot_product_spec(ydsp1,ydsp2,ldweight)
type(spectral_field),intent(in)::ydsp1
type(spectral_field),intent(in)::ydsp2
logical(4),intent(in),optional::ldweight
real(8)::dot_product_spec
end
subroutine dot_prod_waves(ydsp1,ydsp2,prodsp,ldweight)
type(spectral_field),intent(in)::ydsp1
type(spectral_field),intent(in)::ydsp2
real(8),intent(out)::prodsp(:)
logical(4),intent(in)::ldweight
end
subroutine specnorm_prt(ydspec,cdgrep)
type(spectral_field),intent(in)::ydspec
character(*,1),intent(in)::cdgrep
end
subroutine specnorm_array(ydspec,pnorms)
type(spectral_field),intent(in)::ydspec
real(8),intent(out)::pnorms(:)
end
subroutine specnorm_arrprt(ydspec,cdgrep,pnorms)
type(spectral_field),intent(in)::ydspec
character(*,1),intent(in)::cdgrep
real(8),intent(out)::pnorms(:)
end
subroutine specnorm_prt_lev(ydspec,cdgrep)
type(spectral_field),intent(in)::ydspec
character(*,1),intent(in)::cdgrep
end
subroutine specnorm(ydspec,prod3,prod2)
type(spectral_field),intent(in)::ydspec
real(8),intent(out)::prod3(:)
real(8),intent(out)::prod2(:)
end
subroutine specnorm_array_lev(ydspec,prod3,prod2)
type(spectral_field),intent(in)::ydspec
real(8),intent(out)::prod3(:,:)
real(8),intent(out)::prod2(:)
end
subroutine specmax_prt_lev(ydspec,cdgrep)
type(spectral_field),intent(in)::ydspec
character(*,1),intent(in)::cdgrep
end
subroutine specmax_array_lev(ydspec,prod3,prod2)
type(spectral_field),intent(in)::ydspec
real(8),intent(out)::prod3(:,:)
real(8),intent(out)::prod2(:)
end
end
