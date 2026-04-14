!mod$ v1 sum:5207f0e0dc4d6e12
!need$ fe3180dd7f22d4c1 n parkind1
!need$ 99f7ec52259902ea n yomhook
module yoerdi
use parkind1,only:jprb
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use yomhook,only:yomhook$yomhook$dr_hook_default8=>dr_hook_default8
type::terdi
real(8)::rrae
real(8)::rsundur
real(8)::rcardi
real(8)::rch4
real(8)::rn2o
real(8)::rno2
real(8)::ro3
real(8)::rccl4
real(8)::rcfc11
real(8)::rcfc12
real(8)::rcfc22
real(8)::repclc
real(8)::reph2o
real(8)::rcco2
real(8)::rcch4
real(8)::rcn2o
real(8)::rcno2
real(8)::rccfc11
real(8)::rccfc12
real(8)::rccfc22
real(8)::rcccl4
real(8)::rsolinc
real(8)::rsolarcyclemult
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(terdi),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
