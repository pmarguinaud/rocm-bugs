!mod$ v1 sum:9a2ebabf068479c0
!need$ 947fc26355ad3ecc n radiation_gas_constants
!need$ fe3180dd7f22d4c1 n parkind1
module radiation_ecckd_gas
use parkind1,only:jprb
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
integer(4),parameter::iconcdependencenone=0_4
integer(4),parameter::iconcdependencelinear=1_4
integer(4),parameter::iconcdependencelut=2_4
integer(4),parameter::iconcdependencerelativelinear=3_4
type::ckd_gas_type
integer(4)::i_gas_code=-1_4
integer(4)::i_conc_dependence
real(8),allocatable::molar_abs(:,:,:)
real(8),allocatable::molar_abs_conc(:,:,:,:)
real(8)::reference_mole_frac=0._8
real(8)::log_mole_frac1=0._8
real(8)::d_log_mole_frac=1._8
integer(4)::n_mole_frac=0_4
contains
procedure::read=>read_ckd_gas
end type
contains
subroutine read_ckd_gas(this,file,gas_name,i_gas_code)
use easy_netcdf_read_mpi,only:netcdf_file
class(ckd_gas_type),intent(inout)::this
type(netcdf_file),intent(inout)::file
character(*,1),intent(in)::gas_name
integer(4),intent(in)::i_gas_code
end
end
