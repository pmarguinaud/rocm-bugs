!mod$ v1 sum:ee76c246cd9ac178
!need$ 775436aa59b0cb65 n spectral_arp_mod
!need$ ece5604d32a3c302 n gridpoint_fields_mix
!need$ fe3180dd7f22d4c1 n parkind1
module yomspsdt
use parkind1,only:jpim
use parkind1,only:jprb
use spectral_arp_mod,only:spectral_arp
use gridpoint_fields_mix,only:gridpoint_field
integer(4),parameter::nmaxscales_sdt=5_4
integer(4),parameter::nmaxindpat_sdt=6_4
integer(4),parameter::nwrmax_sdt=20_4
type::tsppt_config
logical(4)::lspsdt=.false._4
logical(4)::lradclr_sdt
logical(4)::lsatadj_sdt
logical(4)::lsppt1
logical(4)::lspptgfix
logical(4)::lclip_spec_sdt
logical(4)::lclip_grid_sdt
logical(4)::lqpertlimit2
logical(4)::ltaper_bl0
logical(4)::ltaper_bli(1_8:6_8)
logical(4)::ltaper_st0
logical(4)::ltaper_sti(1_8:6_8)
logical(4)::lusesetran_sdt=.true._4
logical(4)::lresetseed_sdt=.false._4
logical(4)::labstimseed_sdt
logical(4)::lwrite_arp
logical(4)::lrdpatinit_sdt=.false._4
logical(4)::lwrpattrun_sdt=.false._4
logical(4),pointer::lactiveq_sdt=>NULL()
logical(4),pointer::lactiveo_sdt=>NULL()
integer(4)::nscales_sdt=1_4
integer(4)::npatfr=1_4
integer(4)::resetseedfrq_sdt
integer(4)::nwrpattrun_sdt
integer(4)::nhour_pattrun(1_8:20_8)
integer(4)::nstep_pattrun(1_8:20_8)
integer(4)::nclip_kind_sdt
integer(4)::nqsat_sdt=3_4
integer(4)::nwn_testspec_sdt(1_8:4000_8)
integer(4)::nwav_testspec_sdt
real(8)::sdev_sdt(1_8:5_8,1_8:6_8)
real(8)::tau_sdt(1_8:5_8)
real(8)::xlcor_sdt(1_8:5_8)
real(8)::xwc_kappa_t(1_8:5_8)
real(8)::xclipm_sdt(1_8:6_8)
real(8)::xclip_ratio_sdt(1_8:6_8)
real(8)::xmeanred_thickness_sdt
real(8)::sdevtot_sdt(1_8:6_8)
real(8)::xsigmatop
real(8)::xsigmabot
real(8)::xpresstop_st0
real(8)::xpressbot_st0
real(8)::xtaper3
real(8)::xtaper2
real(8)::xtaper1
real(8)::xtaper0
real(8)::xtaper3_st0
real(8)::xtaper2_st0
real(8)::xtaper1_st0
real(8)::xtaper0_st0
real(8)::xspptgfixrlx
character(128_4,1)::cspec_shape_sdt="WeaverCourtier                                                                                                                  "
character(256_4,1),pointer::cipatinit_sdt(:)=>NULL()
character(256_4,1),pointer::copattrun_sdt(:)=>NULL()
character(256_4,1),pointer::copatsp_sdt(:)=>NULL()
character(256_4,1),pointer::copatgp_sdt(:)=>NULL()
end type
intrinsic::null
type::tsppt_data
integer(4)::mpsdt(1_8:6_8)
integer(4)::n2d
integer(4),pointer::nseed_sdt(:)=>NULL()
type(spectral_arp),pointer::yspsdt_ar1(:)=>NULL()
type(gridpoint_field),pointer::ygpsdt(:)=>NULL()
type(gridpoint_field),pointer::ygpsdt0(:)=>NULL()
type(gridpoint_field),pointer::ygpsdt1(:)=>NULL()
end type
end
