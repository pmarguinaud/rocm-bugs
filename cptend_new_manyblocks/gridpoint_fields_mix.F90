!mod$ v1 sum:ece5604d32a3c302
!need$ 99f7ec52259902ea n yomhook
!need$ fe3180dd7f22d4c1 n parkind1
module gridpoint_fields_mix
use parkind1,only:jpim
use parkind1,only:jprb
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use yomhook,only:yomhook$yomhook$dr_hook_default8=>dr_hook_default8
private::jpim
private::jprb
private::lhook
private::dr_hook
private::jphook
type::gridpoint_field
real(8),pointer::gp3d(:,:,:,:)=>NULL()
real(8),pointer::gp2d(:,:,:)=>NULL()
integer(4)::ng3d
integer(4)::ng2d
integer(4)::nproma
integer(4)::ngpblks
integer(4)::nflevg
integer(4)::ngptot
integer(4)::ngptotg
integer(4),pointer::ngrib(:)=>NULL()
integer(4),pointer::ngrib2(:)=>NULL()
integer(4),pointer::ngrib3(:)=>NULL()
integer(4),pointer::nparamid(:)=>NULL()
integer(4),pointer::nparamid2(:)=>NULL()
integer(4),pointer::nparamid3(:)=>NULL()
real(8),pointer::div(:,:,:)=>NULL()
real(8),pointer::vor(:,:,:)=>NULL()
real(8),pointer::u(:,:,:)=>NULL()
real(8),pointer::v(:,:,:)=>NULL()
real(8),pointer::t(:,:,:)=>NULL()
real(8),pointer::q(:,:,:)=>NULL()
real(8),pointer::o3(:,:,:)=>NULL()
real(8),pointer::spr(:,:)=>NULL()
real(8),pointer::wind(:,:,:,:)=>NULL()
real(8),pointer::scal(:,:,:,:)=>NULL()
end type
intrinsic::null
private::null
private::abor1
interface
subroutine abor1(cdtext)
character(*,1),intent(in)::cdtext
end
end interface
private::abor1fl
interface
subroutine abor1fl(cdfile,klinenum,cdtext)
character(*,1),intent(in)::cdfile
integer(4),intent(in)::klinenum
character(*,1),intent(in)::cdtext
end
end interface
private::abor1_exception_handler
interface
subroutine abor1_exception_handler()
end
end interface
private::set_abor1_exception_handler
interface
subroutine set_abor1_exception_handler() bind(c,name="set_abor1_exception_handler")
end
end interface
private::assign_scalar_gp
private::assign_gp_gp
private::equiv_grid
private::nequiv_grid
private::self_add_gp
private::self_add_scal
private::dot_product_gp
private::self_axpy_gp
private::self_sub_gp
private::self_mul_gp
private::self_mul_scal
interface assignment(=)
procedure::assign_gp_gp
procedure::assign_scalar_gp
end interface
interface operator(.eqv.)
procedure::equiv_grid
end interface
private::operator(.eqv.)
interface operator(.neqv.)
procedure::nequiv_grid
end interface
private::operator(.neqv.)
interface self_add
procedure::self_add_gp
procedure::self_add_scal
end interface
interface self_sub
procedure::self_sub_gp
end interface
interface self_mul
procedure::self_mul_gp
procedure::self_mul_scal
end interface
interface self_axpy
procedure::self_axpy_gp
end interface
interface dot_product
procedure::dot_product_gp
end interface
contains
subroutine allocate_grid(ydgeometry,ydgrid,kg3d,kg2d,kgrib,kparamid)
use geometry_mod,only:geometry
type(geometry),intent(in)::ydgeometry
type(gridpoint_field),intent(out)::ydgrid
integer(4),intent(in)::kg3d
integer(4),intent(in)::kg2d
integer(4),intent(in)::kgrib(1_8:int(kg3d+kg2d,kind=8))
integer(4),intent(in),optional::kparamid(1_8:int(kg3d+kg2d,kind=8))
end
subroutine deallocate_grid(ydgrid)
type(gridpoint_field),intent(inout)::ydgrid
end
subroutine assign_scalar_gp(ydgrid,pscalar)
type(gridpoint_field),intent(inout)::ydgrid
real(8),intent(in)::pscalar
end
subroutine assign_gp_gp(ydgrid1,ydgrid2)
type(gridpoint_field),intent(inout)::ydgrid1
type(gridpoint_field),intent(in)::ydgrid2
end
function equiv_grid(ydgrid1,ydgrid2)
type(gridpoint_field),intent(in)::ydgrid1
type(gridpoint_field),intent(in)::ydgrid2
logical(4)::equiv_grid
end
function nequiv_grid(ydgrid1,ydgrid2)
type(gridpoint_field),intent(in)::ydgrid1
type(gridpoint_field),intent(in)::ydgrid2
logical(4)::nequiv_grid
end
subroutine hugify_endgrid(ydgrid)
type(gridpoint_field),intent(inout)::ydgrid
end
subroutine self_add_gp(yda,ydb)
type(gridpoint_field),intent(inout)::yda
type(gridpoint_field),intent(in)::ydb
end
subroutine self_add_scal(yda,pb)
type(gridpoint_field),intent(inout)::yda
real(8),intent(in)::pb
end
function dot_product_gp(yda,ydb)
type(gridpoint_field),intent(in)::yda
type(gridpoint_field),intent(in)::ydb
real(8)::dot_product_gp
end
subroutine self_axpy_gp(yda,ydb,pz)
type(gridpoint_field),intent(inout)::yda
type(gridpoint_field),intent(in)::ydb
real(8),intent(in)::pz
end
subroutine self_sub_gp(yda,ydb)
type(gridpoint_field),intent(inout)::yda
type(gridpoint_field),intent(in)::ydb
end
subroutine self_mul_gp(yda,ydb)
type(gridpoint_field),intent(inout)::yda
type(gridpoint_field),intent(in)::ydb
end
subroutine self_mul_scal(yda,pb)
type(gridpoint_field),intent(inout)::yda
real(8),intent(in)::pb
end
subroutine clip_grid(yda,pmin2d,pmax2d,pmin3d,pmax3d)
type(gridpoint_field),intent(inout)::yda
real(8),intent(in),optional::pmin2d(1_8:int(yda%ng2d,kind=8))
real(8),intent(in),optional::pmax2d(1_8:int(yda%ng2d,kind=8))
real(8),intent(in),optional::pmin3d(1_8:int(yda%nflevg,kind=8),1_8:int(yda%ng3d,kind=8))
real(8),intent(in),optional::pmax3d(1_8:int(yda%nflevg,kind=8),1_8:int(yda%ng3d,kind=8))
end
end
