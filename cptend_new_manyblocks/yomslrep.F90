!mod$ v1 sum:b8f13d95ce619da7
!need$ fe3180dd7f22d4c1 n parkind1
module yomslrep
use parkind1,only:jpim
use parkind1,only:jprb
type::tslrep
integer(4)::ngptotad
integer(4),allocatable::nadmap(:)
integer(4),allocatable::nadcore(:)
logical(4),allocatable::ladcore(:)
real(8),allocatable::rsasign(:,:)
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(tslrep),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
