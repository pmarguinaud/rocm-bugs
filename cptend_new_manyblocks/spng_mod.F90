!mod$ v1 sum:fb563dd239907649
!need$ 63d2912c9610bc6f n yomcst
!need$ 99f7ec52259902ea n yomhook
!need$ f1674ee58737d9c7 n yomlun
!need$ fe3180dd7f22d4c1 n parkind1
module spng_mod
use parkind1,only:jpim
use parkind1,only:jprb
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use yomcst,only:rpi
use yomlun,only:nulnam
use yomlun,only:nulout
use yomhook,only:yomhook$yomhook$dr_hook_default8=>dr_hook_default8
type::tspng
logical(4)::lnsponge
real(8),allocatable::rspongf(:,:)
real(8),allocatable::zcoef(:)
real(8),allocatable::zcoefvor(:)
contains
procedure,pass::print=>print_configuration
end type
interface
subroutine posnam(kulnam,cdnaml)
integer(4),intent(in)::kulnam
character(*,1),intent(in)::cdnaml
end
end interface
contains
subroutine suspng(ydspng,ydrip,yddyna,ydlap,nflevg,nspec2,pstz)
use yomdyna,only:tdyna
use yomlap,only:tlap
use yomrip,only:trip
type(tspng),intent(inout),target::ydspng
type(trip),intent(inout)::ydrip
type(tdyna),intent(inout)::yddyna
type(tlap),intent(in)::ydlap
integer(4),intent(in)::nflevg
integer(4),intent(in)::nspec2
real(8),intent(in)::pstz(:)
end
subroutine print_configuration(self,kdepth,koutno)
class(tspng),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
