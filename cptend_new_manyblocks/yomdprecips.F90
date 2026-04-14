!mod$ v1 sum:af34b429417f3ba9
!need$ fe3180dd7f22d4c1 n parkind1
module yomdprecips
use parkind1,only:jpim
use parkind1,only:jprb
type::tdprecips
real(8)::hdclwc
real(8)::rdhail1
real(8)::rdhail2
real(8)::rdseuil1
real(8)::rdseuil2
real(8)::rdseuil3
real(8)::rdseuil4
real(8)::rdseuil5
real(8)::rdclwc
real(8)::rprecseuil
real(8)::rhtop
real(8)::rtpw
real(8)::rawarm
real(8)::rawarm2
real(8)::racold
real(8)::racold2
integer(4)::ndtprec=0_4
integer(4)::ndtprec2=0_4
end type
end
