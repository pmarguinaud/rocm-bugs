!mod$ v1 sum:0b314fe0762ddffb
!need$ fe3180dd7f22d4c1 n parkind1
module yemdim
use parkind1,only:jpim
type::tedim
integer(4)::nsecplg
integer(4)::nbzong
integer(4)::nbzonl
integer(4)::nbzonu
integer(4)::nnoextzg
integer(4)::nnoextzl
integer(4),pointer::nismax(:)=>NULL()
integer(4),pointer::nisnax(:)=>NULL()
logical(4)::lbipinci
integer(4)::nbipincix
integer(4)::nbipinciy
integer(4)::nedom
end type
intrinsic::null
end
