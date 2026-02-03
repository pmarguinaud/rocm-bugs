!mod$ v1 sum:b87dcfa7e28b7728
!need$ fe3180dd7f22d4c1 n parkind1
module yoegwwms
use parkind1,only:jpim
use parkind1,only:jprb
type::tegwwms
logical(4)::lozpr
logical(4)::lgacalc
logical(4)::lgsatl
logical(4)::lgindl
integer(4)::nlaunchl(1_8:3_8)
integer(4)::nlaunchlev
integer(4)::nlaunch
integer(4)::nslope
integer(4)::ngauss
real(8)::gfluxlaunl(1_8:3_8)
real(8)::gfluxlaun
real(8)::gmstar_l(1_8:3_8)
real(8)::gcstar
real(8)::gptwo
real(8)::gtphygwwms
real(8)::ggaussa
real(8)::ggaussb(1_8:3_8)
real(8)::gcoeff
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(tegwwms),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
