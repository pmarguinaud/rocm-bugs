!mod$ v1 sum:3afe3bcdfbf0d5dd
!need$ fe3180dd7f22d4c1 n parkind1
module yomrcoef
use parkind1,only:jpim
use parkind1,only:jprb
type::trcoef
logical(4)::lrcoef
logical(4)::ltladdia
logical(4)::lglobrad
integer(4)::ng3sr
integer(4)::ngmtr
integer(4)::nlatwr
integer(4)::nlatrd
integer(4)::nlengsrb
integer(4)::nlengtrb
real(8),allocatable::solrad(:)
real(8),allocatable::therrad(:,:)
real(8),allocatable::trweight(:,:)
real(8),allocatable::trmatsum(:,:)
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(trcoef),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
