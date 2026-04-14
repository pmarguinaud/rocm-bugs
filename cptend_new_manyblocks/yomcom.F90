!mod$ v1 sum:02926b5f7773f0fb
!need$ fe3180dd7f22d4c1 n parkind1
!need$ 99f7ec52259902ea n yomhook
module yomcom
use parkind1,only:jpim
use parkind1,only:jprb
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use yomhook,only:yomhook$yomhook$dr_hook_default8=>dr_hook_default8
type::tcom
integer(4)::nvcom
real(8),allocatable::omldth(:)
real(8),allocatable::gttlin(:)
real(8),allocatable::sstpre(:)
real(8),allocatable::sstmsk(:)
logical(4)::lomldth
real(8),allocatable::traflx(:)
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(tcom),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
