!mod$ v1 sum:69d297284b6aadb1
!need$ fe3180dd7f22d4c1 n parkind1
module yoeaervol
use parkind1,only:jpim
use parkind1,only:jprb
type::teaervol
integer(4)::naervolc
integer(4)::naervole
integer(4)::ninterpt
integer(4)::ntvolc
integer(4)::nvolerup
integer(4)::nvolhomo
integer(4)::nvoloptp
integer(4)::nvoleruz(1_8:100_8)
integer(4)::nvoldats(1_8:100_8)
integer(4)::nvoldate(1_8:100_8)
real(8)::raervolc(1_8:100_8,1_8:8_8)
real(8)::raervole(1_8:100_8,1_8:8_8)
real(8)::rvoleruz(1_8:100_8)
real(8)::rvsedvol
real(8)::rvdepvol
real(8)::rwdepvol
contains
procedure,pass::print=>print_configuration
end type
type(teaervol),pointer::yreaervol
intrinsic::null
contains
subroutine print_configuration(self,kdepth,koutno)
class(teaervol),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
