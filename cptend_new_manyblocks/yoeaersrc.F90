!mod$ v1 sum:66a4f84b0672838b
!need$ fe3180dd7f22d4c1 n parkind1
module yoeaersrc
use parkind1,only:jpim
use parkind1,only:jprb
type::teaersrc
integer(4)::nddust
integer(4)::nssalt
integer(4)::naerwnd
integer(4)::ndmso
integer(4)::npist
integer(4)::nso4scheme
integer(4)::isize_dd
integer(4)::inats_dd
integer(4)::insoil_dd
integer(4)::insoilmode_dd
logical(4)::lepaero
logical(4)::laeromin
logical(4)::locndms
logical(4)::ldust_sfxsoil
real(8)::rgelav
real(8)::rgemuv
real(8)::rdglav
real(8)::rdgmuv
real(8)::rclonv
real(8)::rslonv
real(8)::rdclonv
real(8)::rdslonv
real(8)::rlatvol
real(8)::rlonvol
real(8)::rfctdu
real(8)::rfctss
real(8)::rfctdur
real(8)::rfctssr
real(8)::raerdub
real(8)::rdmsmin
real(8)::rcodeca
real(8)::rsideca
real(8)::rcovsra
real(8)::rsivsra
real(8)::rcoefdust
real(8)::rssflx(1_8:9_8)
real(8)::rddusrc(1_8:9_8)
real(8)::rmmd_soil(1_8:3_8,1_8:12_8)
real(8)::rpcent_soil(1_8:3_8,1_8:12_8)
real(8)::rsigma_soil(1_8:3_8,1_8:12_8)
real(8)::rtrsize_dd(1_8:10_8)
real(8)::raerosize_dd(1_8:13_8)
real(8)::rz0sal
real(8)::repsdd
real(8)::rcv_kok
real(8)::rlambda_kok
real(8)::rsigmas_kok
real(8)::rds_kok
contains
procedure,pass::print=>print_configuration
end type
type(teaersrc),pointer::yreaersrc
intrinsic::null
contains
subroutine print_configuration(self,kdepth,koutno)
class(teaersrc),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
