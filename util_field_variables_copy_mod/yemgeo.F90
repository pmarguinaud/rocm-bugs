!mod$ v1 sum:29645464f09af77f
!need$ fe3180dd7f22d4c1 n parkind1
module yemgeo
use parkind1,only:jprb
type::tegeo
real(8)::erpk
real(8)::elon1
real(8)::elat1
real(8)::elon2
real(8)::elat2
real(8)::elon0
real(8)::elat0
real(8)::elonc
real(8)::elatc
real(8)::edelx
real(8)::edely
real(8)::elx
real(8)::ely
real(8)::exwn
real(8)::eywn
real(8)::rcori_acad
real(8)::rlat_acad
real(8)::rlon_acad
logical(4)::lmap
logical(4)::lmrt
logical(4)::lredel_in_metres
end type
end
