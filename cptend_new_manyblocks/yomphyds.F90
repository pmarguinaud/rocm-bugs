!mod$ v1 sum:e362522f1f9043ab
!need$ fe3180dd7f22d4c1 n parkind1
module yomphyds
use parkind1,only:jpim
use parkind1,only:jprb
integer(4),parameter::jpvxpl=20_4
integer(4),parameter::jpvxp2l=50_4
integer(4),parameter::jpcxpl=50_4
integer(4),parameter::jpvextrl=99_4
integer(4),parameter::jpvextrdil=99_4
integer(4),parameter::jpvxtr2l=99_4
integer(4),parameter::jpvprecipl=99_4
integer(4),parameter::jpvprecipl2=99_4
type::tphyds
integer(4)::jpvxp=20_4
integer(4)::jpvxp2=50_4
integer(4)::jpcxp=50_4
integer(4)::jpvextr=99_4
integer(4)::jpvextrdi=99_4
integer(4)::jpvxtr2=99_4
integer(4)::jpvprecip=99_4
integer(4)::jpvprecip2=99_4
character(16_4,1)::cextrp(1_8:50_8,1_8:20_8)
character(16_4,1)::cxtrp2(1_8:50_8)
character(16_4,1)::cvextra(1_8:99_8)
character(16_4,1)::cvexrad(1_8:99_8)
character(16_4,1)::cvextrdi(1_8:99_8)
character(16_4,1)::cvextr2(1_8:99_8)
character(16_4,1)::cvprecip(1_8:99_8)
character(16_4,1)::cvprecip2(1_8:99_8)
integer(4)::nextrpgb(1_8:50_8,1_8:20_8)
integer(4)::nxtrp2gb(1_8:50_8)
integer(4)::nvextragb(1_8:99_8)
integer(4)::nvexradgb(1_8:99_8)
integer(4)::nvextr2gb(1_8:99_8)
integer(4)::nvextrdigb(1_8:99_8)
integer(4)::nvprecipgb(1_8:99_8)
integer(4)::nvprecipgb2(1_8:99_8)
integer(4)::nsflux
integer(4)::nsforc
integer(4)::nppvclix=0_4
real(8)::extrpdf(1_8:50_8,1_8:20_8)
real(8)::xtrp2df(1_8:50_8)
real(8)::vextradf(1_8:99_8)
real(8)::vexraddf(1_8:99_8)
real(8)::vextr2df(1_8:99_8)
real(8)::vextrdi(1_8:99_8)
real(8)::vprecip(1_8:99_8)
real(8)::vprecip2(1_8:99_8)
logical(4)::lreqin_vextrdi
logical(4)::lreqout_vextrdi
end type
end
