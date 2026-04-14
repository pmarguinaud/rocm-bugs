!mod$ v1 sum:17d64803ce7bd0c9
!need$ fe3180dd7f22d4c1 n parkind1
module yomdimf
use parkind1,only:jpim
type::tdimf
integer(4)::nfther
integer(4)::nf3d
integer(4)::nfd2d
integer(4)::nfc2d
integer(4)::ns3d
integer(4)::ns2d
integer(4)::ns1d
integer(4),allocatable::ngrbsp3(:)
integer(4),allocatable::ngrbsp2(:)
logical(4)::lvor
logical(4)::lader
logical(4)::luvder
logical(4)::lspt
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(tdimf),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
