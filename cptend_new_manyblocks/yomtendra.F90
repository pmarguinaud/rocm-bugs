!mod$ v1 sum:e0aa65167f0b313a
!need$ fe3180dd7f22d4c1 n parkind1
module yomtendra
use parkind1,only:jpim
type::ttendra
integer(4)::q
integer(4)::l
integer(4)::r
integer(4)::i
integer(4)::s
integer(4)::g
integer(4)::h
logical(4)::lhail
contains
procedure::setup=>setup_tendra
end type
contains
subroutine setup_tendra(self,lhail)
class(ttendra),intent(out)::self
logical(4),intent(in)::lhail
end
end
