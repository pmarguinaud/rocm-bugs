!mod$ v1 sum:96a0ef8a7dbcf28b
!need$ fe3180dd7f22d4c1 n parkind1
module yomsrftlad
use parkind1,only:jprb
use parkind1,only:jpim
type::tsrftlad
real(8),allocatable::gptskin0(:,:,:)
real(8),allocatable::gptskin9(:,:,:)
integer(4)::ngskin
logical(4)::lregsf
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(tsrftlad),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
