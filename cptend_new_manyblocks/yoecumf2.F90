!mod$ v1 sum:ae4b451283e5d0fd
!need$ fe3180dd7f22d4c1 n parkind1
module yoecumf2
use parkind1,only:jpim
use parkind1,only:jprb
type::tecumf2
real(8)::entrorg2
real(8)::detrpen2
real(8)::entshalp2
real(8)::entstpc12
real(8)::entstpc22
real(8)::entstpc32
real(8)::entrdd2
real(8)::rmfcmin2
real(8)::rmfdeps2
real(8)::rdepths2
real(8)::rprcon2
real(8)::rtau2
real(8)::rcpecons2
real(8)::rcucov2
real(8)::rtaumel2
real(8)::ruvper2
real(8)::rmfsolct2
real(8)::rmfsoltq2
real(8)::rmfsoluv2
real(8)::rmfsolrhs2
real(8)::rmfcfl2
real(8)::rmflia2
real(8)::rcapdcycl2
real(8)::rtau02
logical(4)::lmfmid2
logical(4)::lmfdd2
logical(4)::lmfdudv2
logical(4)::lmfuvdis2
logical(4)::lmfwetb2
logical(4)::lmfglac2
integer(4)::njkt12
integer(4)::njkt22
integer(4)::njkt32
integer(4)::njkt52
integer(4)::njkt62
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(tecumf2),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
