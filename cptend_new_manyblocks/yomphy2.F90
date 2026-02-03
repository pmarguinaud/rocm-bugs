!mod$ v1 sum:a69a8580c2591393
!need$ fe3180dd7f22d4c1 n parkind1
module yomphy2
use parkind1,only:jpim
use parkind1,only:jprb
type::tphy2
integer(4)::ntshm
integer(4)::ntsml
real(8)::tsphy
real(8)::xmucvpp
real(8)::xmulaf
real(8)::xdamp
real(8)::hclp
real(8)::htcls
real(8)::hvcls
real(8)::htshm
real(8)::htsml
real(8)::hwmohigh
real(8)::hwmolow
real(8)::gz0raf
real(8)::facraf
real(8)::facrafcv
real(8)::facrafdcape
real(8)::gcaperaf
real(8)::htkeraf
logical(4)::lraftur
logical(4)::lmulaf
logical(4)::lwmocloud
logical(4)::lraftke
end type
type(tphy2),pointer::yrphy2
intrinsic::null
end
