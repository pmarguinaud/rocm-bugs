!mod$ v1 sum:cb28c1a867fdda3f
!need$ fe3180dd7f22d4c1 n parkind1
module yoephli
use parkind1,only:jprb
type::tephli
logical(4)::ltlevol
logical(4)::lphylin
logical(4)::lphysfclin
logical(4)::lenopert
logical(4)::leppcfls
logical(4)::lraisanen
logical(4)::lopptwins
real(8)::rlptrc
real(8)::rlpal1
real(8)::rlpal2
real(8)::rlpbb
real(8)::rlpcc
real(8)::rlpdd
real(8)::rlpmixl
real(8)::rlpbeta
real(8)::rlpdrag
real(8)::rlpevap
real(8)::rlpp00
contains
procedure,pass::print=>print_configuration
end type
type(tephli),pointer::yrephli
intrinsic::null
contains
subroutine print_configuration(self,kdepth,koutno)
class(tephli),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
