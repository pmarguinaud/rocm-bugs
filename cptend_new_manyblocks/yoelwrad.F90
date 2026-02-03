!mod$ v1 sum:88efe337ffb2a340
!need$ fe3180dd7f22d4c1 n parkind1
module yoelwrad
use parkind1,only:jpim
use parkind1,only:jprb
type::telwrad
integer(4)::nlevlwc
integer(4)::nlwfr
integer(4)::nlooplw
integer(4)::nlooplwo
integer(4)::npromalw
integer(4)::nlastlw
logical(4)::loptlwpr
logical(4)::lwlclhr
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(telwrad),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
