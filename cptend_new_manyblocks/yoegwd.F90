!mod$ v1 sum:bba8a44744d3068d
!need$ fe3180dd7f22d4c1 n parkind1
module yoegwd
use parkind1,only:jpim
use parkind1,only:jprb
type::tegwd
integer(4)::nktopg
integer(4)::ngwdlim
integer(4)::ngwdtop
integer(4)::ndiff_strato
real(8)::gfrcrit
real(8)::grcrit
real(8)::gkdrag
real(8)::gkwake
real(8)::gssec
real(8)::gtsec
real(8)::gvsec
real(8)::gtenlim
real(8)::grfplm
logical(4)::lrdiff_strato
logical(4)::ldiag_strato
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(tegwd),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
