!mod$ v1 sum:c0260fbf4afc8adc
!need$ fe3180dd7f22d4c1 n parkind1
module yophlc
use parkind1,only:jprb
type::tphlc
real(8)::alpha
real(8)::ah0
real(8)::ustarl
real(8)::ustars
real(8)::alandz0
real(8)::aseaz0
logical(4)::lsphlc
logical(4)::lvdflc
logical(4)::lsdrlc
logical(4)::lzmcon
logical(4)::lkexp
logical(4)::lvdfds
logical(4)::lsdrds
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(tphlc),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
