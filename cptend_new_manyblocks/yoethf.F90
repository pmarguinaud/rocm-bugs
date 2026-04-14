!mod$ v1 sum:f442d6a68962ba6d
!need$ fe3180dd7f22d4c1 n parkind1
module yoethf
use parkind1,only:jpim
use parkind1,only:jprb
real(8)::r2es
real(8)::r3les
real(8)::r3ies
real(8)::r4les
real(8)::r4ies
real(8)::r5les
real(8)::r5ies
real(8)::rvtmp2
real(8)::rhoh2o
real(8)::r5alvcp
real(8)::r5alscp
real(8)::ralvdcp
real(8)::ralsdcp
real(8)::ralfdcp
real(8)::rtwat
real(8)::rtber
real(8)::rtbercu
real(8)::rtice
real(8)::rticecu
real(8)::rtwat_rtice_r
real(8)::rtwat_rticecu_r
real(8)::rkoop1
real(8)::rkoop2
type::tthf
real(8)::r2es
real(8)::r3les
real(8)::r3ies
real(8)::r4les
real(8)::r4ies
real(8)::r5les
real(8)::r5ies
real(8)::rvtmp2
real(8)::rhoh2o
real(8)::r5alvcp
real(8)::r5alscp
real(8)::ralvdcp
real(8)::ralsdcp
real(8)::ralfdcp
real(8)::rtwat
real(8)::rtber
real(8)::rtbercu
real(8)::rtice
real(8)::rticecu
real(8)::rtwat_rtice_r
real(8)::rtwat_rticecu_r
real(8)::rkoop1
real(8)::rkoop2
end type
type(tthf),pointer::yrthf
intrinsic::null
contains
function tthf_init() result(ydthf)
type(tthf)::ydthf
end
end
