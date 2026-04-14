!mod$ v1 sum:c68bc841e3e91772
!need$ fe3180dd7f22d4c1 n parkind1
module yoegwdwms
use parkind1,only:jprb
type::tegwdwms
logical(4)::lregwwms
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(tegwdwms),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
