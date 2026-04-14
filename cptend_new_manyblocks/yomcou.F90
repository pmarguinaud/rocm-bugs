!mod$ v1 sum:45a7618d66faeafc
!need$ fe3180dd7f22d4c1 n parkind1
module yomcou
use parkind1,only:jpim
type::tcou
integer(4)::nculf(0_8:20_8)
integer(4)::npiat
integer(4)::nculmr
integer(4)::nculmw
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(tcou),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
