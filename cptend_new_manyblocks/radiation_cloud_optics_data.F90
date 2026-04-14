!mod$ v1 sum:77fb39ac8a05f8f4
!need$ fe3180dd7f22d4c1 n parkind1
module radiation_cloud_optics_data
use parkind1,only:jprb
type::cloud_optics_type
real(8),allocatable::liq_coeff_lw(:,:)
real(8),allocatable::liq_coeff_sw(:,:)
real(8),allocatable::ice_coeff_lw(:,:)
real(8),allocatable::ice_coeff_sw(:,:)
real(8),allocatable::liq_coeff_gen(:)
real(8),allocatable::ice_coeff_gen(:)
contains
procedure::setup=>setup_cloud_optics
end type
contains
subroutine setup_cloud_optics(this,liq_file_name,ice_file_name,iverbose)
class(cloud_optics_type),intent(inout)::this
character(*,1),intent(in)::liq_file_name
character(*,1),intent(in)::ice_file_name
integer(4),intent(in),optional::iverbose
end
end
