!mod$ v1 sum:e7e0c0c329f71842
!need$ 9a2ebabf068479c0 n radiation_ecckd_gas
!need$ 383d0c227f49ee0e n radiation_spectral_definition
!need$ 947fc26355ad3ecc n radiation_gas_constants
!need$ fe3180dd7f22d4c1 n parkind1
module radiation_ecckd
use parkind1,only:jprb
use radiation_spectral_definition,only:spectral_definition_type
use radiation_gas_constants,only:igasnotpresent
use radiation_gas_constants,only:ih2o
use radiation_gas_constants,only:ico2
use radiation_gas_constants,only:io3
use radiation_gas_constants,only:in2o
use radiation_gas_constants,only:ico
use radiation_gas_constants,only:ich4
use radiation_gas_constants,only:io2
use radiation_gas_constants,only:icfc11
use radiation_gas_constants,only:icfc12
use radiation_gas_constants,only:ihcfc22
use radiation_gas_constants,only:iccl4
use radiation_gas_constants,only:ino2
use radiation_gas_constants,only:nmaxgases
use radiation_gas_constants,only:airmolarmass
use radiation_gas_constants,only:gasmolarmass
use radiation_gas_constants,only:gasname
use radiation_gas_constants,only:gaslowercasename
use radiation_ecckd_gas,only:iconcdependencenone
use radiation_ecckd_gas,only:iconcdependencelinear
use radiation_ecckd_gas,only:iconcdependencelut
use radiation_ecckd_gas,only:iconcdependencerelativelinear
use radiation_ecckd_gas,only:ckd_gas_type
use radiation_ecckd_gas,only:read_ckd_gas
type::ckd_model_type
integer(4)::ngas=0_4
type(ckd_gas_type),allocatable::single_gas(:)
integer(4)::i_gas_mapping(0_8:12_8)
integer(4)::npress=0_4
integer(4)::ntemp=0_4
real(8)::log_pressure1
real(8)::d_log_pressure
real(8),allocatable::temperature1(:)
real(8)::d_temperature
integer(4)::nplanck=0_4
real(8),allocatable::temperature1_planck
real(8),allocatable::d_temperature_planck
real(8),allocatable::planck_function(:,:)
real(8),allocatable::norm_solar_irradiance(:)
real(8),allocatable::norm_amplitude_solar_irradiance(:)
real(8),allocatable::rayleigh_molar_scat(:)
integer(4)::ng=0_4
type(spectral_definition_type)::spectral_def
logical(4)::is_sw
contains
procedure::read=>read_ckd_model
procedure::read_spectral_solar_cycle
procedure::calc_optical_depth=>calc_optical_depth_ckd_model
procedure::print=>print_ckd_model
procedure::calc_planck_function
procedure::calc_incoming_sw
end type
contains
subroutine read_ckd_model(this,filename,iverbose)
class(ckd_model_type),intent(inout)::this
character(*,1),intent(in)::filename
integer(4),intent(in),optional::iverbose
end
subroutine print_ckd_model(this)
class(ckd_model_type),intent(in)::this
end
subroutine read_spectral_solar_cycle(this,filename,iverbose,use_updated_solar_spectrum)
class(ckd_model_type),intent(inout)::this
character(*,1),intent(in)::filename
integer(4),intent(in),optional::iverbose
logical(4),intent(in),optional::use_updated_solar_spectrum
end
subroutine calc_optical_depth_ckd_model(this,ncol,nlev,istartcol,iendcol,nmaxgas,pressure_hl,temperature_fl,mole_fraction_fl,optical_depth_fl,rayleigh_od_fl)
class(ckd_model_type),intent(in),target::this
integer(4),intent(in)::ncol
integer(4),intent(in)::nlev
integer(4),intent(in)::istartcol
integer(4),intent(in)::iendcol
integer(4),intent(in)::nmaxgas
real(8),intent(in)::pressure_hl(1_8:int(ncol,kind=8),1_8:int(nlev+1_4,kind=8))
real(8),intent(in)::temperature_fl(int(istartcol,kind=8):int(iendcol,kind=8),1_8:int(nlev,kind=8))
real(8),intent(in)::mole_fraction_fl(1_8:int(ncol,kind=8),1_8:int(nlev,kind=8),1_8:int(nmaxgas,kind=8))
real(8),intent(out)::optical_depth_fl(1_8:int(this%ng,kind=8),1_8:int(nlev,kind=8),int(istartcol,kind=8):int(iendcol,kind=8))
real(8),intent(out),optional::rayleigh_od_fl(1_8:int(this%ng,kind=8),1_8:int(nlev,kind=8),int(istartcol,kind=8):int(iendcol,kind=8))
end
subroutine calc_planck_function(this,nt,temperature,planck)
class(ckd_model_type),intent(in)::this
integer(4),intent(in)::nt
real(8),intent(in)::temperature(:)
real(8),intent(out)::planck(1_8:int(this%ng,kind=8),1_8:int(nt,kind=8))
end
subroutine calc_incoming_sw(this,total_solar_irradiance,spectral_solar_irradiance,solar_spectral_multiplier)
class(ckd_model_type),intent(in)::this
real(8),intent(in)::total_solar_irradiance
real(8),intent(inout)::spectral_solar_irradiance(:,:)
real(8),intent(in),optional::solar_spectral_multiplier
end
end
