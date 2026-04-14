!mod$ v1 sum:e715736f906b2231
!need$ fe3180dd7f22d4c1 n parkind1
module yoeradghg
use parkind1,only:jprb
use parkind1,only:jpim
type::tradghg
real(8),allocatable::sinlat(:)
real(8),allocatable::pressure_hl(:)
real(8),allocatable::mass_ch4(:,:)
real(8),allocatable::mass_co2(:,:)
real(8),allocatable::mass_n2o(:,:)
real(8),allocatable::mass_no2(:,:)
real(8),allocatable::mass_cfc11(:,:)
real(8),allocatable::mass_cfc12(:,:)
real(8),allocatable::mass_ccl4(:,:)
real(8),allocatable::mass_hcfc22(:,:)
real(8),allocatable::mass_o3(:,:)
integer(4)::nlatitude=0_4
integer(4)::npressure=0_4
contains
procedure::init=>init_rad_ghg
end type
type(tradghg),pointer::yradghg
intrinsic::null
contains
subroutine init_rad_ghg(self,platitude,ppressure)
class(tradghg),intent(inout)::self
real(8),intent(in)::platitude(:)
real(8),intent(in)::ppressure(:)
end
end
