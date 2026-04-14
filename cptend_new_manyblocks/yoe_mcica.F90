!mod$ v1 sum:18bd375b2daf1e89
!need$ fe3180dd7f22d4c1 n parkind1
module yoe_mcica
use parkind1,only:jprd
use parkind1,only:jpim
use parkind1,only:jprb
type::temcica
real(8)::xcw(1_8:1000_8,1_8:140_8)
real(8)::xcw_d(1_8:1000_8,1_8:140_8)
integer(4)::nmci1
integer(4)::nmci2
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(temcica),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
