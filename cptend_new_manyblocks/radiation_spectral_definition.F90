!mod$ v1 sum:383d0c227f49ee0e
!need$ fe3180dd7f22d4c1 n parkind1
module radiation_spectral_definition
use parkind1,only:jprb
real(8),parameter::solarreferencetemperature=5.777e3_8
real(8),parameter::terrestrialreferencetemperature=2.731499999999999772626324556767940521240234375e2_8
type::spectral_definition_type
integer(4)::nwav=0_4
integer(4)::ng=0_4
real(8),allocatable::wavenumber1(:)
real(8),allocatable::wavenumber2(:)
real(8),allocatable::gpoint_fraction(:,:)
real(8)::reference_temperature=-1._8
real(8),allocatable::solar_spectral_irradiance(:)
integer(4)::nband=0_4
real(8),allocatable::wavenumber1_band(:)
real(8),allocatable::wavenumber2_band(:)
integer(4),allocatable::i_band_number(:)
contains
procedure::read=>read_spectral_definition
procedure::allocate_bands_only
procedure::deallocate
procedure::find=>find_wavenumber
procedure::calc_mapping
procedure::calc_mapping_from_bands
procedure::calc_mapping_from_wavenumber_bands
procedure::print_mapping_from_bands
procedure::min_wavenumber
procedure::max_wavenumber
end type
contains
subroutine read_spectral_definition(this,file)
use easy_netcdf_read_mpi,only:netcdf_file
class(spectral_definition_type),intent(inout)::this
type(netcdf_file),intent(inout)::file
end
subroutine allocate_bands_only(this,wavenumber1,wavenumber2)
class(spectral_definition_type),intent(inout)::this
real(8),intent(in)::wavenumber1(:)
real(8),intent(in)::wavenumber2(:)
end
subroutine deallocate(this)
class(spectral_definition_type),intent(inout)::this
end
pure function find_wavenumber(this,wavenumber)
class(spectral_definition_type),intent(in)::this
real(8),intent(in)::wavenumber
integer(4)::find_wavenumber
end
subroutine calc_mapping(this,wavenumber,mapping,weighting_temperature,use_bands)
class(spectral_definition_type),intent(in)::this
real(8),intent(in)::wavenumber(:)
real(8),allocatable,intent(inout)::mapping(:,:)
real(8),intent(in),optional::weighting_temperature
logical(4),intent(in),optional::use_bands
end
subroutine calc_mapping_from_bands(this,wavelength_bound,i_intervals,mapping,use_bands,use_fluxes)
class(spectral_definition_type),intent(in)::this
real(8),intent(in)::wavelength_bound(:)
integer(4),intent(in)::i_intervals(:)
real(8),allocatable,intent(inout)::mapping(:,:)
logical(4),intent(in),optional::use_bands
logical(4),intent(in),optional::use_fluxes
end
subroutine calc_mapping_from_wavenumber_bands(this,wavenumber1,wavenumber2,mapping,use_bands,use_fluxes)
class(spectral_definition_type),intent(in)::this
real(8),intent(in)::wavenumber1(:)
real(8),intent(in)::wavenumber2(:)
real(8),allocatable,intent(inout)::mapping(:,:)
logical(4),intent(in),optional::use_bands
logical(4),intent(in),optional::use_fluxes
end
subroutine print_mapping_from_bands(this,mapping,use_bands)
class(spectral_definition_type),intent(in)::this
real(8),allocatable,intent(in)::mapping(:,:)
logical(4),intent(in),optional::use_bands
end
pure function min_wavenumber(this)
class(spectral_definition_type),intent(in)::this
real(8)::min_wavenumber
end
pure function max_wavenumber(this)
class(spectral_definition_type),intent(in)::this
real(8)::max_wavenumber
end
elemental function calc_planck_function_wavenumber(wavenumber,temperature)
real(8),intent(in)::wavenumber
real(8),intent(in)::temperature
real(8)::calc_planck_function_wavenumber
end
end
