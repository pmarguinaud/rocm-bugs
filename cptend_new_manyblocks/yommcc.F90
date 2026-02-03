!mod$ v1 sum:5b68404fcbf76e21
!need$ b22783aabb9739da n cplng_types_mod
!need$ 4a858fcd8a9a0234 n par_gfl
!need$ 2197d6deb875bf0f n yomcompo
!need$ 99f7ec52259902ea n yomhook
!need$ fe3180dd7f22d4c1 n parkind1
module yommcc
use parkind1,only:jprd
use parkind1,only:jpim
use parkind1,only:jprb
use cplng_types_mod,only:cplng_fld_type
use par_gfl,only:jpchem
use yomcompo,only:npemis2d
use yomcompo,only:npemis2daux
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use yomhook,only:yomhook$yomhook$dr_hook_default8=>dr_hook_default8
type::tmcc
integer(4)::n923
integer(4)::nclimtot
integer(4)::nclimr
integer(4)::ncligc(1_8:19_8)
integer(4)::ncligc_compo(1_8:732_8)
integer(4)::nysdmp_compo(1_8:732_8)
integer(4)::nclimr_compo
integer(4)::ncliaer(1_8:16_8)
integer(4)::ndifc
integer(4)::njdcr
integer(4)::njdcr1
integer(4)::ndifc_compo
integer(4)::njdcr_compo
integer(4)::njdcr1_compo
integer(4)::np1
integer(4)::np2
integer(4)::npco2_1
integer(4)::npco2_2
integer(4)::npaer_1
integer(4)::npaer_2
integer(4)::npcompo_1
integer(4)::npcompo_2
integer(4)::nunitc
integer(4)::nunitc1
integer(4)::nunitcm
integer(4)::noacomm
integer(4)::nssticeop
real(8),allocatable::climrco2(:,:,:)
real(8),allocatable::climraer(:,:,:)
real(8),allocatable::climrcompo(:,:,:)
real(8),allocatable::zlake(:,:,:)
real(8),allocatable::oceanbc(:,:)
real(8),allocatable::climr(:,:,:)
logical(4)::lfirstupd=.true._4
logical(4)::lcurr
logical(4)::lgelato
logical(4)::lmcc01_mse
logical(4)::lmcc01
logical(4)::lmcc02
logical(4)::lmcc03
logical(4)::lmcc04
logical(4)::lmcc05
logical(4)::lmcc06
logical(4)::lmccec
logical(4)::lmcciec
logical(4)::lmcciec_compo
logical(4)::lmcciceic
logical(4)::lmccdynseaice
logical(4)::lnemocoup
logical(4)::lnemofluxnc
logical(4)::lnemooutgrb
logical(4)::lcoupinfout
logical(4)::lnemo1way
logical(4)::lnemoifslog
logical(4)::lnemosstfreez
logical(4)::lnemogribflds
logical(4)::lnemogribmask
logical(4)::l2decv2nemo
logical(4)::lmultiyr
logical(4)::lmcc_compo
integer(4)::nfrcpl
logical(4)::lnemolimget=.true._4
logical(4)::lnemolimput=.true._4
logical(4)::lnemolimalb=.false._4
logical(4)::lnemolimtemp=.false._4
logical(4)::lnemolimtlvl=.false._4
logical(4)::lnemolimthk=.false._4
logical(4)::lnemosicoup=.false._4
logical(4)::lnemoatmflds=.true._4
logical(4)::lnemooceicemix=.false._4
logical(4)::lnemoqnsicefilt=.false._4
logical(4)::lnemoaccumflux=.true._4
logical(4)::lnemogrib3d
integer(4)::nnemo3dlevs
real(8),allocatable::rnemolvls(:)
real(8),allocatable::rnemomask(:,:)
logical(4)::lnemopartcoup=.false._4
logical(4)::lnemopartmask=.false._4
logical(4)::lnemopartmaskfile=.false._4
real(8)::rnpartrampstart=5._8
real(8)::rnpartramplen=4._8
real(8)::rnpartlat=2.e1_8
real(8)::rnpartlatspread=5._8
real(8),allocatable::partsst0(:)
real(8),allocatable::partmask(:)
character(128_4,1)::cdnpartmaskfile="partialmask.grib                                                                                                                "
type(cplng_fld_type),allocatable::cplng_fld(:)
logical(4)::cplng_active=.false._4
integer(4)::cplng_num_fields=0_4
integer(4)::ip_a_sst=-1_4
integer(4)::ip_a_ice_frac=-1_4
integer(4)::ip_a_curr_u=-1_4
integer(4)::ip_a_curr_v=-1_4
integer(4)::ip_a_taux_oce=-1_4
integer(4)::ip_a_tauy_oce=-1_4
integer(4)::ip_a_taux_ice=-1_4
integer(4)::ip_a_tauy_ice=-1_4
integer(4)::ip_a_qs_mix=-1_4
integer(4)::ip_a_qns_mix=-1_4
integer(4)::ip_a_qs_oce=-1_4
integer(4)::ip_a_qns_oce=-1_4
integer(4)::ip_a_qs_ice=-1_4
integer(4)::ip_a_qns_ice=-1_4
integer(4)::ip_a_precip_liquid=-1_4
integer(4)::ip_a_precip_solid=-1_4
integer(4)::ip_a_evap_total=-1_4
integer(4)::ip_a_evap_ice=-1_4
integer(4)::ip_a_dqns_dt=-1_4
integer(4)::ip_a_runoff=-1_4
integer(4)::ip_a_total_cc=-1_4
integer(4)::ip_a_low_cc=-1_4
integer(4)::ip_a_ice_temp=-1_4
integer(4)::ip_a_ice_albedo=-1_4
integer(4)::ip_a_ice_thickness=-1_4
integer(4)::ip_a_snow_thickness=-1_4
integer(4)::ip_a_ice_temp_lvls=-1_4
integer(4)::ip_a_taux=-1_4
integer(4)::ip_a_tauy=-1_4
integer(4)::ip_a_qs=-1_4
integer(4)::ip_a_qns=-1_4
integer(4)::ip_a_water=-1_4
integer(4)::ip_a_sst_atm=-1_4
integer(4)::ip_a_tsk_atm=-1_4
integer(4)::ip_a_ist_atm=-1_4
integer(4)::ip_a_2decv_skt=-1_4
logical(4)::lcoupsim=.false._4
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(tmcc),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
