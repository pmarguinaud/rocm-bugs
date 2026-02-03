!mod$ v1 sum:422abaab84381ce9
!need$ fe3180dd7f22d4c1 n parkind1
module yomncl
use parkind1,only:jprb
type::tncl
logical(4)::lnclin
logical(4)::lregcl
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(tncl),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
