!mod$ v1 sum:a560e3066561dbf2
!need$ fe3180dd7f22d4c1 n parkind1
module yoeaermap
use parkind1,only:jpim
use parkind1,only:jprb
type::teaermap
integer(4)::ndusrcp(1_8:50_8)
real(8)::rdduaer(1_8:50_8)
real(8)::rdusrcp(1_8:10_8,1_8:2_8)
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(teaermap),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
