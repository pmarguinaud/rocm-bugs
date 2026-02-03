!mod$ v1 sum:8d979ba0ee6418a7
!need$ fe3180dd7f22d4c1 n parkind1
module yomtnh
use parkind1,only:jpim
use parkind1,only:jprb
type::ttnh
integer(4)::nlennh95b
real(8),allocatable::trajnh(:,:)
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(ttnh),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
