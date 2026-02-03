!mod$ v1 sum:482d9c54920ee62c
!need$ 5942403f334513d2 n spp_def_mod
!need$ 74b51ccaf9475fe6 n spectral_spg_mod
!need$ ece5604d32a3c302 n gridpoint_fields_mix
!need$ 99f7ec52259902ea n yomhook
!need$ fe3180dd7f22d4c1 n parkind1
!need$ bdaf13f8815842fc n spp_gen_mod
!need$ 775436aa59b0cb65 n spectral_arp_mod
module spp_mod
use parkind1,only:jpim
use parkind1,only:jprb
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use spp_gen_mod,only:spp_model
use spp_def_mod,only:spp_pert_pointer
use spectral_arp_mod,only:spectral_arp
use spectral_spg_mod,only:spectral_spg
use gridpoint_fields_mix,only:gridpoint_field
integer(4),parameter::jpspplablen=16_4
integer(4),parameter::nwrmax=255_4
type::tspp_config
logical(4)::lspp=.false._4
character(32_4,1)::cspp_model_name
type(spp_model)::sm
type(spp_pert_pointer)::pptr
logical(4)::lramidlimit1
logical(4)::luse_setran=.true._4
logical(4)::lnseed_offs0
logical(4)::lrdpatinit
logical(4)::lwrpattrun
integer(4)::nwrpattrun
integer(4)::nhour_pattrun(1_8:255_8)
integer(4)::nstep_pattrun(1_8:255_8)
logical(4)::lresetseed
logical(4)::labstimseed
integer(4)::resetseedfrq
integer(4)::shiftseed
character(256_4,1)::spp_rdpatinit
character(256_4,1)::spp_wrpattrun
integer(4)::iseedfac
integer(4)::iezdiag_pos
integer(4)::npatfr=1_4
real(8)::xpress_phr_st
logical(4)::lspg_spp=.false._4
real(8)::spgmu
real(8)::spglambda
real(8)::spgsigma
real(8)::spgq
real(8)::spgadtmin
real(8)::spgadtmax
real(8)::spgtdt
end type
type::tspp_data
integer(4),allocatable::igribcode(:)
type(spectral_arp),pointer::sp_arp(:)=>NULL()
type(spectral_spg),pointer::sp_spg(:)=>NULL()
type(gridpoint_field),pointer::gp_arp(:)=>NULL()
type(gridpoint_field),pointer::gp_arp0(:)=>NULL()
type(gridpoint_field),pointer::gp_arp1(:)=>NULL()
character(16_4,1),pointer::lab_arp(:)=>NULL()
end type
intrinsic::null
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
function kget_seed_spp(ydconf,kpert,krf,kmember,kshift,lreseed,labstime,ldverbose,ptstep)
type(tspp_config),intent(in)::ydconf
integer(4),intent(in)::kpert
integer(4),intent(in)::krf
integer(4),intent(in),optional::kmember
integer(4),intent(in),optional::kshift
logical(4),intent(in),optional::lreseed
logical(4),intent(in),optional::labstime
logical(4),intent(in),optional::ldverbose
real(8),intent(in),optional::ptstep
integer(4)::kget_seed_spp
end
end
