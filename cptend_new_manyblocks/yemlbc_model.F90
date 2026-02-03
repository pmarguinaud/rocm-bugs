!mod$ v1 sum:e60bbe89bdb122e8
!need$ 8788285e5d203360 n yomdfi
!need$ 67b29aa9476ac84e n yomct0
!need$ d9863b2992cbe6fc n yomgmv
!need$ df9edf23aba86fd0 n yomini
!need$ f1674ee58737d9c7 n yomlun
!need$ 09b54ecfa56449be n yommp0
!need$ b1898997335bab45 n model_general_conf_mod
!need$ fe3180dd7f22d4c1 n parkind1
!need$ 99f7ec52259902ea n yomhook
module yemlbc_model
use parkind1,only:jpim
use parkind1,only:jprb
use parkind1,only:jprd
use model_general_conf_mod,only:model_general_conf_type
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use yomdfi,only:nstdfi
use yomdfi,only:nstdfia
use yomdfi,only:rtdfi
use yomdfi,only:rtdfia
use yomct0,only:lrplane
use yomct0,only:lallopr
use yomct0,only:lcanari
use yomct0,only:nconf
use yomct0,only:lelam
use yomgmv,only:tgmv
use yomini,only:ldfi
use yomlun,only:nulout
use yomlun,only:nulnam
use yommp0,only:mysetb
use yommp0,only:mysetv
use yommp0,only:loutput
use yomhook,only:yomhook$yomhook$dr_hook_default8=>dr_hook_default8
type::tgmvstenc
integer(4)::msp
integer(4)::mspl
integer(4)::mspm
integer(4)::ndim
integer(4)::ndimt
end type
type::tgmvcpl
integer(4)::mu
integer(4)::mv
integer(4)::mt
integer(4)::mspd
integer(4)::msvd
integer(4)::mnhx
integer(4)::mdiv
integer(4)::mtl
integer(4)::mtm
integer(4)::mspdl
integer(4)::mspdm
integer(4)::ndim
integer(4)::ndimt
end type
type::tgmvscpl
integer(4)::msp
integer(4)::mspl
integer(4)::mspm
integer(4)::ndim
integer(4)::ndimt
end type
integer(4),parameter::jplsgt=20_4
integer(4),parameter::jpalfnm=31_4
type::telbc_model
logical(4)::ltenc
logical(4)::lalltc
logical(4)::lrfirst
integer(4)::nbicou
integer(4)::nbicot
integer(4)::nbicpd
integer(4)::nbicvd
integer(4)::nbicnhx
integer(4)::nbicop
integer(4)::necripl
logical(4)::lqcpl
logical(4)::lccpl
integer(4)::necotl
integer(4)::necoad
logical(4)::le0cota
logical(4)::lereadini
integer(4)::n1lsg
integer(4)::nfrlsg
integer(4)::nlsgts(0_8:20_8)
logical(4)::lrdlsg
logical(4)::lespcpl
logical(4)::lsptenc
logical(4)::lunbc
logical(4)::lecobi
type(tgmvstenc)::yytgmvstenc
type(tgmvcpl)::yytgmvcpl
type(tgmvscpl)::yytgmvscpl
integer(4)::ndimcpl
integer(4)::ngalef
integer(4)::nefrcl
integer(4)::netls1
real(8)::tefrcl
real(8)::epa_gmv(1_8:31_8)
real(8)::epa_gmvs(1_8:31_8)
real(8)::epa_gfl(1_8:31_8)
real(8),allocatable::ealfa_gmv(:,:)
real(8),allocatable::ealfa_gmvs(:,:)
real(8),allocatable::ealfa_gfl(:,:)
real(8),allocatable::ealfa_tenc(:,:)
real(8),allocatable::ealfagt3gmv(:,:,:)
real(8),allocatable::ealfagt3gmvs(:,:,:)
real(8),allocatable::ealfagt3gfl(:,:,:)
real(8),allocatable::ealfau_gmv(:,:)
real(8),allocatable::ealfau_gfl(:,:)
real(8),allocatable::gmgt3(:,:)
real(8),allocatable::gmgt4(:)
real(8),allocatable::ewb(:,:,:)
real(8),allocatable::ewbdfifw(:,:,:,:)
real(8),allocatable::ewbdfibw(:,:,:,:)
real(8)::rtenc
logical(4),allocatable::lnudspgfl(:)
logical(4)::lspnuspdl
real(8)::rnudtfrac
integer(4)::nefrspcpl
integer(4)::nek0
integer(4)::nek1
integer(4)::nen1
integer(4)::nen2
real(8)::spnudvor
real(8)::spnuddiv
real(8)::spnudt
real(8)::spnudq
real(8)::spnudsp
real(8)::rnutenc
end type
interface
subroutine abor1(cdtext)
character(*,1),intent(in)::cdtext
end
end interface
interface
subroutine abor1fl(cdfile,klinenum,cdtext)
character(*,1),intent(in)::cdfile
integer(4),intent(in)::klinenum
character(*,1),intent(in)::cdtext
end
end interface
interface
subroutine abor1_exception_handler()
end
end interface
interface
subroutine set_abor1_exception_handler() bind(c,name="set_abor1_exception_handler")
end
end interface
contains
subroutine suelbc_fields_dim(ydml_lbc,ydgeometry,yddyna,ygfl,knfd2d,kns3d)
use geometry_mod,only:geometry
use yomdyna,only:tdyna
use yom_ygfl,only:type_gfld
type(telbc_model),intent(inout)::ydml_lbc
type(geometry),intent(in)::ydgeometry
type(tdyna),intent(in)::yddyna
type(type_gfld),intent(inout)::ygfl
integer(4),intent(in)::knfd2d
integer(4),intent(in)::kns3d
end
subroutine suelbc_init(yddyna,ydml_lbc)
use yomdyna,only:tdyna
type(tdyna),intent(in)::yddyna
type(telbc_model),intent(inout),target::ydml_lbc
end
subroutine suelbc_model(ydml_lbc,ydgeometry,yddyna,ydgmv,ydml_gconf)
use geometry_mod,only:geometry
use model_general_conf_mod,only:model_general_conf_type
use yomdyna,only:tdyna
type(telbc_model),intent(inout),target::ydml_lbc
type(geometry),intent(in)::ydgeometry
type(tdyna),intent(in)::yddyna
type(tgmv),intent(inout)::ydgmv
type(model_general_conf_type),intent(inout)::ydml_gconf
end
subroutine deallocate_elbc0b(ydml_lbc)
type(telbc_model),intent(inout)::ydml_lbc
end
end
