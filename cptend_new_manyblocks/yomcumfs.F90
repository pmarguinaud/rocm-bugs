!mod$ v1 sum:a93b8bf0f88cfaac
!need$ fe3180dd7f22d4c1 n parkind1
!need$ 99f7ec52259902ea n yomhook
module yomcumfs
use parkind1,only:jprb
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use yomhook,only:yomhook$yomhook$dr_hook_default8=>dr_hook_default8
type::tcumfs
logical(4)::lecumfs
logical(4)::lregcv
logical(4)::lmfcfl2_shstep
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(tcumfs),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
