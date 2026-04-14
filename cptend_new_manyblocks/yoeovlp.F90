!mod$ v1 sum:08cb5d29ff5f17e7
!need$ fe3180dd7f22d4c1 n parkind1
module yoeovlp
use parkind1,only:jprb
type::teovlp
real(8),allocatable::ra1ovlp(:)
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(teovlp),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
