!mod$ v1 sum:d9863b2992cbe6fc
!need$ a2e6578609e7d21a n type_gmvs
!need$ fe3180dd7f22d4c1 n parkind1
!need$ f1674ee58737d9c7 n yomlun
module yomgmv
use parkind1,only:jpim
use parkind1,only:jprb
use type_gmvs,only:type_t0
use type_gmvs,only:type_t9
use type_gmvs,only:type_t1
use type_gmvs,only:type_ph9
use type_gmvs,only:type_gp
use yomlun,only:nulerr
type::tgmv
real(8),allocatable::gmv(:,:,:,:)
real(8),allocatable::gmvs(:,:,:)
real(8),allocatable::gmvt1(:,:,:,:)
real(8),allocatable::gmvt1s(:,:,:)
real(8),allocatable::gmv5(:,:,:,:)
real(8),allocatable::gmv5s(:,:,:)
real(8),allocatable::gmv_depart(:,:,:,:)
real(8),allocatable::gmvs_depart(:,:,:)
integer(4)::ndimgmv
integer(4)::ndimgmvs
type(type_t0)::yt0
type(type_t9)::yt9
type(type_t1)::yt1
type(type_ph9)::yph9
type(type_gp)::ygp
type(type_t0)::yt5
logical(4)::lgmvt1_init=.false._4
logical(4)::lgmvt1s_init=.false._4
end type
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
subroutine zero_yomgmv(self)
type(tgmv),intent(inout)::self
end
subroutine copy_yomgmv(self,rhs)
type(tgmv),intent(inout)::self
type(tgmv),intent(in)::rhs
end
subroutine mul_yomgmv(self,pz)
type(tgmv),intent(inout)::self
real(8),intent(in)::pz
end
subroutine axpby_yomgmv(self,pa,rhs,pb)
type(tgmv),intent(inout)::self
real(8),intent(in)::pa
type(tgmv),intent(in)::rhs
real(8),intent(in)::pb
end
subroutine diff_yomgmv(self,rhs)
type(tgmv),intent(inout)::self
type(tgmv),intent(in)::rhs
end
subroutine dot_prod_yomgmv(ydgeometry,fld1,fld2,pprod)
use geometry_mod,only:geometry
type(geometry),intent(in)::ydgeometry
type(tgmv),intent(in)::fld1
type(tgmv),intent(in)::fld2
real(8),intent(out)::pprod
end
subroutine random_yomgmv(self)
type(tgmv),intent(inout)::self
end
end
