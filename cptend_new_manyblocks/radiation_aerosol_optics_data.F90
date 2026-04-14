!mod$ v1 sum:7d80797ce7c3abdb
!need$ 7266944e5e92cbf3 n radiation_io
!need$ fe3180dd7f22d4c1 n parkind1
module radiation_aerosol_optics_data
use parkind1,only:jprb
use radiation_io,only:nulerr
use radiation_io,only:radiation_abort
integer(4),parameter::iaerosolclassundefined=0_4
integer(4),parameter::iaerosolclassignored=1_4
integer(4),parameter::iaerosolclasshydrophobic=2_4
integer(4),parameter::iaerosolclasshydrophilic=3_4
integer(4),parameter::nmaxstringlength=2000_4
integer(4),parameter::nmaxlinelength=200_4
type::aerosol_optics_type
integer(4),allocatable::iclass(:)
integer(4),allocatable::itype(:)
real(8),allocatable::wavenumber1_sw(:)
real(8),allocatable::wavenumber2_sw(:)
real(8),allocatable::wavenumber1_lw(:)
real(8),allocatable::wavenumber2_lw(:)
real(8),allocatable::mass_ext_sw_phobic(:,:)
real(8),allocatable::ssa_sw_phobic(:,:)
real(8),allocatable::g_sw_phobic(:,:)
real(8),allocatable::mass_ext_lw_phobic(:,:)
real(8),allocatable::ssa_lw_phobic(:,:)
real(8),allocatable::g_lw_phobic(:,:)
real(8),allocatable::mass_ext_sw_philic(:,:,:)
real(8),allocatable::ssa_sw_philic(:,:,:)
real(8),allocatable::g_sw_philic(:,:,:)
real(8),allocatable::mass_ext_lw_philic(:,:,:)
real(8),allocatable::ssa_lw_philic(:,:,:)
real(8),allocatable::g_lw_philic(:,:,:)
real(8),allocatable::wavelength_mono(:)
real(8),allocatable::mass_ext_mono_phobic(:,:)
real(8),allocatable::ssa_mono_phobic(:,:)
real(8),allocatable::g_mono_phobic(:,:)
real(8),allocatable::lidar_ratio_mono_phobic(:,:)
real(8),allocatable::mass_ext_mono_philic(:,:,:)
real(8),allocatable::ssa_mono_philic(:,:,:)
real(8),allocatable::g_mono_philic(:,:,:)
real(8),allocatable::lidar_ratio_mono_philic(:,:,:)
real(8),allocatable::rh_lower(:)
character(2000_4,1)::description_phobic_str="                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                "
character(2000_4,1)::description_philic_str="                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                "
integer(4)::ntype
integer(4)::n_type_phobic=0_4
integer(4)::n_type_philic=0_4
integer(4)::nrh=0_4
integer(4)::n_bands_lw=0_4
integer(4)::n_bands_sw=0_4
integer(4)::n_mono_wl=0_4
logical(4)::use_hydrophilic=.true._4
logical(4)::use_monochromatic=.false._4
contains
procedure::setup=>setup_aerosol_optics
procedure::save=>save_aerosol_optics
procedure::allocate
procedure::initialize_types
procedure::set_hydrophobic_type
procedure::set_hydrophilic_type
procedure::set_empty_type
procedure::set_types
procedure::calc_rh_index
procedure::print_description
end type
private::get_line
contains
subroutine setup_aerosol_optics(this,file_name,iverbose)
class(aerosol_optics_type),intent(inout)::this
character(*,1),intent(in)::file_name
integer(4),intent(in),optional::iverbose
end
subroutine initialize_types(this,ntype)
class(aerosol_optics_type),intent(inout)::this
integer(4),intent(in)::ntype
end
subroutine allocate(this,n_type_phobic,n_type_philic,nrh,n_bands_lw,n_bands_sw,n_mono_wl)
class(aerosol_optics_type),intent(inout)::this
integer(4),intent(in)::n_type_phobic
integer(4),intent(in)::n_type_philic
integer(4),intent(in)::nrh
integer(4),intent(in)::n_bands_lw
integer(4),intent(in)::n_bands_sw
integer(4),intent(in)::n_mono_wl
end
subroutine save_aerosol_optics(this,file_name,iverbose)
class(aerosol_optics_type),intent(inout)::this
character(*,1),intent(in)::file_name
integer(4),intent(in),optional::iverbose
end
subroutine set_hydrophobic_type(this,itype,i_type_phobic)
class(aerosol_optics_type),intent(inout)::this
integer(4),intent(in)::itype
integer(4),intent(in)::i_type_phobic
end
subroutine set_hydrophilic_type(this,itype,i_type_philic)
class(aerosol_optics_type),intent(inout)::this
integer(4),intent(in)::itype
integer(4),intent(in)::i_type_philic
end
subroutine set_empty_type(this,itype)
class(aerosol_optics_type),intent(inout)::this
integer(4),intent(in)::itype
end
subroutine set_types(this,itypes)
class(aerosol_optics_type),intent(inout)::this
integer(4),intent(in)::itypes(:)
end
function calc_rh_index(this,rh)
class(aerosol_optics_type),intent(inout)::this
real(8),intent(in)::rh
integer(4)::calc_rh_index
end
subroutine print_description(this,i_type_map)
class(aerosol_optics_type),intent(in)::this
integer(4),intent(in)::i_type_map(:)
end
pure function get_line(str,iline) result(line_str)
character(*,1),intent(in)::str
integer(4),intent(in)::iline
character(200_4,1)::line_str
end
end
