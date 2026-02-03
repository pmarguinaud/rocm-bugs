!mod$ v1 sum:507c078dbe4be540
!need$ fe3180dd7f22d4c1 n parkind1
module yomcape
use parkind1,only:jpim
use parkind1,only:jprb
type::tcape
integer(4)::ncapeiter
integer(4)::netapes
integer(4)::ncapepsd
real(8)::gcaperet
real(8)::gcapepsd
real(8)::gmiscinv
real(8)::gcapemin
real(8)::gcinmax
real(8)::gcinmin
logical(4)::ladae
logical(4)::lmcapea
end type
type(tcape),target::yrcape
end
