!mod$ v1 sum:98425d71c736f6d3
!need$ fe3180dd7f22d4c1 n parkind1
module yoeaerlid
use parkind1,only:jpim
use parkind1,only:jprb
type::teaerlid
integer(4)::naelid
integer(4)::nwlid
integer(4)::naerlisi
integer(4)::jwlid(1_8:3_8)
real(8)::rwlid(1_8:3_8)
real(8)::rlico2(1_8:6_8)
real(8)::rlio2(1_8:6_8)
real(8)::rlino2(1_8:5_8,1_8:3_8)
real(8)::rlio3(1_8:5_8,1_8:3_8)
real(8)::rlicls
real(8)::rlidelt
real(8)::rlins
real(8)::rlipref
real(8)::rlitref
real(8)::rlit0
real(8)::rliddz
contains
procedure,pass::print=>print_configuration
end type
type(teaerlid),pointer::yreaerlid
intrinsic::null
contains
subroutine print_configuration(self,kdepth,koutno)
class(teaerlid),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
