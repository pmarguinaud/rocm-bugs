!mod$ v1 sum:0bacb741609b8cf4
!need$ fe3180dd7f22d4c1 n parkind1
module yoe_uvrad
use parkind1,only:jpim
use parkind1,only:jprb
type::teuvrad
integer(4)::nraduv
integer(4)::nuvtim
integer(4)::ipuv(1_8:3000_8)
integer(4)::jcop(1_8:3000_8)
integer(4)::juvlam(1_8:3000_8)
logical(4)::luvproc
logical(4)::luvtdep
logical(4)::luvdbg
logical(4)::luvaerp
logical(4)::lo3_chem_uv
real(8)::rk250(1_8:3000_8)
real(8)::rtuv1(1_8:3000_8)
real(8)::rtuv2(1_8:3000_8)
real(8)::rsuvb0(1_8:3000_8)
real(8)::rayuvb(1_8:3000_8)
real(8)::rasa(1_8:4_8)
real(8)::rasb(1_8:4_8)
real(8)::rasc(1_8:4_8)
real(8)::rasd(1_8:4_8)
real(8)::rase(1_8:4_8)
real(8)::rasf(1_8:4_8)
real(8)::rfa0(1_8:4_8)
real(8)::rfa1(1_8:4_8)
real(8)::rfb0(1_8:4_8)
real(8)::rfb1(1_8:4_8)
real(8)::rfb2(1_8:4_8)
real(8)::rfb3(1_8:4_8)
real(8)::rfc0(1_8:4_8)
real(8)::rfc1(1_8:4_8)
real(8)::rfc2(1_8:4_8)
real(8)::rfc3(1_8:4_8)
real(8)::rfd0(1_8:4_8)
real(8)::rfd1(1_8:4_8)
real(8)::rfd2(1_8:4_8)
real(8)::rfd3(1_8:4_8)
real(8)::rtauva(1_8:4_8,1_8:6_8)
real(8)::rpiuva(1_8:4_8,1_8:6_8)
real(8)::rcguva(1_8:4_8,1_8:6_8)
real(8)::rxpo(1_8:3_8)
real(8)::rxpl(1_8:3_8)
real(8)::rcieas(1_8:3000_8)
real(8)::rsuvb(1_8:3000_8)
real(8)::ruvlam(1_8:3000_8)
real(8)::rfcaer
real(8)::rmuzuv
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(teuvrad),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
