!mod$ v1 sum:8e7d67711c50bb10
!need$ 728a2604fdd3f4c0 n yom_ygfl
!need$ fe3180dd7f22d4c1 n parkind1
module yomgfl
use parkind1,only:jprb
use parkind1,only:jpim
use yom_ygfl,only:type_gfld
type::tgfl
real(8),allocatable::gfl(:,:,:,:)
real(8),allocatable::gflt1(:,:,:,:)
real(8),allocatable::gflslp(:,:,:,:)
real(8),allocatable::gflpt(:,:,:,:)
real(8),allocatable::gflpc(:,:,:,:)
real(8),allocatable::gfl5(:,:,:,:)
real(8),allocatable::gflslp5(:,:,:,:)
real(8),allocatable::gfl_depart(:,:,:,:)
type(type_gfld),pointer::ygfl=>NULL()
logical(4)::lgflt1_init=.false._4
end type
intrinsic::null
real(8),allocatable::gfl_lhn(:)
interface
subroutine abor1(cdtext)
character(*,1),intent(in)::cdtext
end
end interface
interface
subroutine abor1fl(cdfile,klinenum,cdtext)
character(*,1),intent(in)::cdfile
integer(4),intent(in)::klinenum
character(*,1),intent(in)::cdtext
end
end interface
interface
subroutine abor1_exception_handler()
end
end interface
interface
subroutine set_abor1_exception_handler() bind(c,name="set_abor1_exception_handler")
end
end interface
contains
subroutine zero_yomgfl(self)
type(tgfl),intent(inout)::self
end
subroutine copy_yomgfl(self,rhs)
type(tgfl),intent(inout)::self
type(tgfl),intent(in)::rhs
end
subroutine mul_yomgfl(self,pz)
type(tgfl),intent(inout)::self
real(8),intent(in)::pz
end
subroutine axpby_yomgfl(self,pa,rhs,pb)
type(tgfl),intent(inout)::self
real(8),intent(in)::pa
type(tgfl),intent(in)::rhs
real(8),intent(in)::pb
end
subroutine diff_yomgfl(self,rhs)
type(tgfl),intent(inout)::self
type(tgfl),intent(in)::rhs
end
subroutine dot_prod_yomgfl(ydgeometry,fld1,fld2,pprod)
use geometry_mod,only:geometry
type(geometry),intent(in)::ydgeometry
type(tgfl),intent(in)::fld1
type(tgfl),intent(in)::fld2
real(8),intent(out)::pprod
end
subroutine random_yomgfl(self)
type(tgfl),intent(inout)::self
end
end
