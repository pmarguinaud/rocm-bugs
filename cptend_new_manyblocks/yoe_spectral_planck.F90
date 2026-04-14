!mod$ v1 sum:2a836d50ed9d2ca0
!need$ 99f7ec52259902ea n yomhook
!need$ fe3180dd7f22d4c1 n parkind1
module yoe_spectral_planck
use parkind1,only:jprb
use parkind1,only:jprd
use parkind1,only:jpim
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use yomhook,only:yomhook$yomhook$dr_hook_default8=>dr_hook_default8
type::tspectralplanck
integer(4)::nintervals
integer(4)::ntemps
real(8)::temp1
real(8)::dtemp
real(8),allocatable::planck_lut(:,:)
real(8),allocatable::wavlen_bound(:)
integer(4),allocatable::interval_map(:)
contains
procedure::init
procedure::calc
procedure::print=>print_spectral_planck
procedure::free=>free_spectral_planck
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
subroutine init(self,kintervals,pwavlen_bound,kinterval_map)
class(tspectralplanck),intent(inout)::self
integer(4),intent(in)::kintervals
real(8),intent(in)::pwavlen_bound(:)
integer(4),intent(in)::kinterval_map(:)
end
subroutine calc(self,kidia,kfdia,klon,ptemperature,pplanck)
class(tspectralplanck),intent(in)::self
integer(4),intent(in)::kidia
integer(4),intent(in)::kfdia
integer(4),intent(in)::klon
real(8),intent(in)::ptemperature(1_8:int(klon,kind=8))
real(8),intent(out)::pplanck(1_8:int(klon,kind=8),1_8:int(self%nintervals,kind=8))
end
subroutine print_spectral_planck(self,iunit)
class(tspectralplanck),intent(in)::self
integer(4),intent(in)::iunit
end
subroutine free_spectral_planck(self)
class(tspectralplanck),intent(inout)::self
end
end
