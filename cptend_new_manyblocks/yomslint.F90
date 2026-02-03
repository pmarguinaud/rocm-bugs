!mod$ v1 sum:919592922ff424a1
!need$ 7b7b5ccd995b7db6 n yomvsplip
!need$ ee3d24c14126f68a n yomvsleta
!need$ 26004f60c3ce20c6 n yomhslmer
!need$ fe3180dd7f22d4c1 n parkind1
module yomslint
use parkind1,only:jpim
use parkind1,only:jprb
use yomvsplip,only:tvsplip
use yomvsleta,only:tvsleta
use yomhslmer,only:thslmer
type::tslint
type(tvsplip)::yrvsplip
type(tvsleta)::yrvsleta
type(thslmer)::yrhslmer
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(tslint),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
