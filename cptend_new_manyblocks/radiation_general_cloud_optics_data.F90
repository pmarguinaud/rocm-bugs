!mod$ v1 sum:a83a6bbda36607c6
!need$ fe3180dd7f22d4c1 n parkind1
module radiation_general_cloud_optics_data
use parkind1,only:jprb
type::general_cloud_optics_type
real(8),allocatable::mass_ext(:,:)
real(8),allocatable::ssa(:,:)
real(8),allocatable::asymmetry(:,:)
integer(4)::n_effective_radius=0_4
real(8)::effective_radius_0
real(8)::d_effective_radius
character(511_4,1)::type_name
character(511_4,1)::scheme_name
logical(4)::use_bands=.false._4
contains
procedure::setup=>setup_general_cloud_optics
procedure::add_optical_properties
end type
contains
elemental subroutine delta_eddington(od,ssa,g)
real(8),intent(inout)::od
real(8),intent(inout)::ssa
real(8),intent(inout)::g
end
elemental subroutine delta_eddington_extensive(od,scat_od,scat_od_g)
real(8),intent(inout)::od
real(8),intent(inout)::scat_od
real(8),intent(inout)::scat_od_g
end
subroutine delta_eddington_extensive_vec(ng,od,scat_od,scat_od_g)
integer(4),intent(in)::ng
real(8),intent(inout)::od(1_8:int(ng,kind=8))
real(8),intent(inout)::scat_od(1_8:int(ng,kind=8))
real(8),intent(inout)::scat_od_g(1_8:int(ng,kind=8))
end
elemental subroutine delta_eddington_scat_od(od,scat_od,g)
real(8),intent(inout)::od
real(8),intent(inout)::scat_od
real(8),intent(inout)::g
end
elemental subroutine revert_delta_eddington(od,ssa,g)
real(8),intent(inout)::od
real(8),intent(inout)::ssa
real(8),intent(inout)::g
end
subroutine setup_general_cloud_optics(this,file_name,specdef,use_bands,use_thick_averaging,weighting_temperature,iverbose)
use radiation_spectral_definition,only:spectral_definition_type
class(general_cloud_optics_type),intent(inout)::this
character(*,1),intent(in)::file_name
type(spectral_definition_type),intent(in)::specdef
logical(4),intent(in),optional::use_bands
logical(4),intent(in),optional::use_thick_averaging
real(8),intent(in),optional::weighting_temperature
integer(4),intent(in),optional::iverbose
end
subroutine add_optical_properties(this,ng,nlev,ncol,cloud_fraction,water_path,effective_radius,od,scat_od,scat_asymmetry)
class(general_cloud_optics_type),intent(in)::this
integer(4),intent(in)::ng
integer(4),intent(in)::nlev
integer(4),intent(in)::ncol
real(8),intent(in)::cloud_fraction(:,:)
real(8),intent(in)::water_path(:,:)
real(8),intent(in)::effective_radius(:,:)
real(8),intent(inout)::od(1_8:int(ng,kind=8),1_8:int(nlev,kind=8),1_8:int(ncol,kind=8))
real(8),intent(inout),optional::scat_od(1_8:int(ng,kind=8),1_8:int(nlev,kind=8),1_8:int(ncol,kind=8))
real(8),intent(inout),optional::scat_asymmetry(1_8:int(ng,kind=8),1_8:int(nlev,kind=8),1_8:int(ncol,kind=8))
end
elemental function calc_planck_function_wavenumber(wavenumber,temperature)
real(8),intent(in)::wavenumber
real(8),intent(in)::temperature
real(8)::calc_planck_function_wavenumber
end
end
