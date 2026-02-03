!mod$ v1 sum:5ce08f7162cf570a
!need$ fe3180dd7f22d4c1 n parkind1
module yoecnd
use parkind1,only:jprb
type::tecnd
real(8)::repflm
real(8)::repqmi
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(tecnd),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
