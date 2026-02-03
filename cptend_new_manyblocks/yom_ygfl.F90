!mod$ v1 sum:728a2604fdd3f4c0
!need$ bb2c01705a786d89 n yoe_aerodiag
!need$ 4a858fcd8a9a0234 n par_gfl
!need$ fe3180dd7f22d4c1 n parkind1
module yom_ygfl
use parkind1,only:jpim
use parkind1,only:jprb
use yoe_aerodiag,only:npaeraot
use yoe_aerodiag,only:npaerlisi_var
use yoe_aerodiag,only:npaerlisi_wvl
use yoe_aerodiag,only:npaerlisi
use yoe_aerodiag,only:type_aero_wvl_diag
use yoe_aerodiag,only:npaero_wvl_diag
use par_gfl,only:jpgfl
use par_gfl,only:jpnamed_gfl
use par_gfl,only:jpghg
use par_gfl,only:jpchem
use par_gfl,only:jpghg_assim
use par_gfl,only:jpchem_assim
use par_gfl,only:jpaero
use par_gfl,only:jpaeromass2d
use par_gfl,only:jpaerocv
use par_gfl,only:jpforc
use par_gfl,only:jpera40
use par_gfl,only:jpsldia
use par_gfl,only:jpezdiag
use par_gfl,only:jpch4s
use par_gfl,only:jpnogw
use par_gfl,only:jpaerout
use par_gfl,only:jpaeroclim
use par_gfl,only:jpuvp
use par_gfl,only:jpphys
use par_gfl,only:jpphycty
use par_gfl,only:jpfsd
use par_gfl,only:jpedrp
use par_gfl,only:jplima
use par_gfl,only:grib_code_gfl_phys
type::type_gfl_comp
character(16_4,1)::cname="                "
integer(4)::igrbcode=-999_4
logical(4)::ladv=.false._4
logical(4)::ladv5=.false._4
logical(4)::ltdiablin=.false._4
logical(4)::lhorturb=.false._4
integer(4)::nreqin=0_4
logical(4)::lreqout=.false._4
logical(4)::lgpingp=.true._4
logical(4)::lmgrid=.false._4
logical(4)::lgp=.false._4
logical(4)::lsp=.false._4
logical(4)::lcders=.false._4
logical(4)::lactive=.false._4
logical(4)::lthermact=.false._4
real(8)::r=0._8
real(8)::rcp=0._8
logical(4)::lt9=.false._4
logical(4)::lt1=.false._4
logical(4)::lt5=.false._4
logical(4)::lphy=.false._4
logical(4)::lpt=.false._4
logical(4)::ltrajio=.false._4
logical(4)::ldiag=.false._4
logical(4)::lpc=.false._4
real(8)::refvali=0._8
logical(4)::ladjust0=.false._4
logical(4)::ladjust1=.false._4
integer(4)::ncoupling=0_4
real(8)::refvalc=0._8
logical(4)::lbiper=.false._4
character(12_4,1)::cslint="            "
integer(4)::mgfl=-99999999_4
integer(4)::mp=-99999999_4
integer(4)::mpl=-99999999_4
integer(4)::mpm=-99999999_4
integer(4)::mp9=-99999999_4
integer(4)::mp9_ph=-99999999_4
integer(4)::mp1=-99999999_4
integer(4)::mp5=-99999999_4
integer(4)::mp5l=-99999999_4
integer(4)::mp5m=-99999999_4
integer(4)::mpslp=-99999999_4
integer(4)::mpsp=-99999999_4
integer(4)::mp_spl=-99999999_4
integer(4)::mp_sl1=-99999999_4
integer(4)::mp_slx=-99999999_4
integer(4)::mppt=-99999999_4
integer(4)::mppc=-99999999_4
integer(4)::mppc_ph=-99999999_4
logical(4)::lwater
logical(4)::lprecip
real(8)::rlzer
integer(4)::ncouplo4
logical(4)::lassim
integer(4)::igribdv
integer(4)::igribtc
integer(4)::igrbflxo
integer(4)::igrbwdflx
integer(4)::igrbddflx
logical(4)::ldiff
logical(4)::lconv
real(8)::rmolmass
real(8)::refold
real(8)::henrya
real(8)::henryb
logical(4)::lnegfix
logical(4)::lcomad
real(8)::weno_alpha
logical(4)::lmassfix
real(8)::betamfbc
integer(4)::ifid=-1_4
type(type_gfl_comp),pointer::previous=>NULL()
end type
intrinsic::null
type::type_gfl_naml
character(16_4,1)::cname
integer(4)::igrbcode
integer(4)::nreqin
real(8)::refvali
logical(4)::lreqout=.false._4
logical(4)::lgpingp=.false._4
logical(4)::lmgrid=.false._4
logical(4)::lgp=.false._4
logical(4)::lsp=.false._4
logical(4)::lcders=.false._4
logical(4)::lt9=.false._4
logical(4)::lt1=.false._4
logical(4)::lt5=.false._4
logical(4)::lphy=.false._4
logical(4)::lpt=.false._4
logical(4)::ltrajio=.false._4
logical(4)::ldiag=.false._4
logical(4)::lpc=.false._4
logical(4)::ladv=.false._4
logical(4)::ladv5=.false._4
logical(4)::lintlin=.false._4
logical(4)::ltdiablin=.false._4
logical(4)::lhorturb=.false._4
logical(4)::lqm=.false._4
logical(4)::lqmh=.false._4
logical(4)::lqm3d=.false._4
logical(4)::lqml3d=.false._4
logical(4)::lvweno=.false._4
real(8)::weno_alpha=0._8
logical(4)::lslhd=.false._4
logical(4)::lcomad=.false._4
logical(4)::lhv=.false._4
logical(4)::lvsplip=.false._4
integer(4)::ncoupling
real(8)::refvalc
integer(4)::ncouplo4
logical(4)::lassim=.false._4
integer(4)::igribdv
integer(4)::igribtc
integer(4)::igrbflxo
integer(4)::igrbwdflx
integer(4)::igrbddflx
logical(4)::ldiff=.false._4
logical(4)::lconv=.false._4
logical(4)::lnegfix=.false._4
logical(4)::lmassfix=.false._4
real(8)::betamfbc
real(8)::rmolmass
real(8)::refold
real(8)::henrya
real(8)::henryb
end type
type::type_gfld
integer(4)::numflds=0_4
integer(4)::nders=0_4
integer(4)::numspflds=0_4
integer(4)::numgpflds=0_4
integer(4)::numflds9=0_4
integer(4)::numflds1=0_4
integer(4)::numspflds1=0_4
integer(4)::numflds5=0_4
integer(4)::numfldsphy=0_4
integer(4)::numflds_spl=0_4
integer(4)::numflds_sl1=0_4
integer(4)::numfldspc=0_4
integer(4)::ndim=0_4
integer(4)::numfldspt=0_4
integer(4)::ndim0=0_4
integer(4)::ndim9=0_4
integer(4)::ndim1=0_4
integer(4)::ndim5=0_4
integer(4)::ndimslp=0_4
integer(4)::ndim_spl=0_4
integer(4)::ndimpt=0_4
integer(4)::ndimpc=0_4
integer(4)::ngfl_ext
integer(4)::ngfl_forc
integer(4)::ngfl_ezdiag
integer(4)::nghg
integer(4)::nghg_assim
integer(4)::naero
integer(4)::nactaero
integer(4)::naerocv
integer(4)::nddhaero
integer(4)::nera40
integer(4)::nnogw
integer(4)::nedrp
integer(4)::naerout
integer(4)::naeroclim
integer(4)::nuvp
integer(4)::nsldia
integer(4)::nsldiagp
integer(4)::nfsd
logical(4)::laerchem=.false._4
logical(4)::ltrcmfix=.false._4
logical(4)::ltrcmfix_ps=.false._4
logical(4)::ltrcmfqm=.false._4
logical(4)::laeraot=.false._4
logical(4)::laerlisi=.false._4
logical(4)::laerout=.false._4
logical(4)::laeroclim=.false._4
logical(4)::luvpout=.false._4
logical(4)::lspptgfl=.false._4
integer(4)::ngems
integer(4)::nchem
integer(4)::nchem_assim
integer(4)::nchem_flxo
integer(4)::nchem_wdflx
integer(4)::nchem_ddflx
integer(4)::nchem_dv
integer(4)::nchem_tc
integer(4)::nchem_scv
integer(4)::nemis2d
integer(4)::nemis2daux
integer(4)::nemis3d
integer(4)::nlima
integer(4)::naero_wvl_diag
integer(4)::naero_wvl_diag_types
integer(4)::nchemsulf1
integer(4)::nchemhno3
integer(4)::nnegafix
integer(4)::noptnegfix
logical(4)::lqm3dcons=.false._4
logical(4)::ladvnegfix=.false._4
logical(4)::ltrcmfbc=.false._4
logical(4)::ltrcmfpr=.false._4
logical(4)::ltrcmfmg=.false._4
logical(4)::ltrcmfp=.false._4
logical(4)::ltrcmfa_dif=.false._4
logical(4)::ltrcmfa_lap=.false._4
logical(4)::ltrcmfa_ver=.false._4
logical(4)::lextradf=.false._4
integer(4)::nfldsfix
integer(4)::noptmfbc
integer(4)::noptmfpr
integer(4)::noptvfe
integer(4)::nmfdiaglev
integer(4)::nmfixflds(1_8:292_8)
integer(4)::nnegflds(1_8:292_8)
real(8)::zmfixeps
integer(4)::nfmg
integer(4)::nmgflds(1_8:292_8)
type(type_gfl_comp)::ycomp(1_8:2163_8)
type(type_gfl_comp),pointer::ylastcomp=>NULL()
type(type_gfl_comp),pointer::yq=>NULL()
type(type_gfl_comp),pointer::yi=>NULL()
type(type_gfl_comp),pointer::yl=>NULL()
type(type_gfl_comp),pointer::ylconv=>NULL()
type(type_gfl_comp),pointer::yiconv=>NULL()
type(type_gfl_comp),pointer::yrconv=>NULL()
type(type_gfl_comp),pointer::ysconv=>NULL()
type(type_gfl_comp),pointer::yirad=>NULL()
type(type_gfl_comp),pointer::ylrad=>NULL()
type(type_gfl_comp),pointer::ys=>NULL()
type(type_gfl_comp),pointer::yr=>NULL()
type(type_gfl_comp),pointer::yg=>NULL()
type(type_gfl_comp),pointer::yh=>NULL()
type(type_gfl_comp),pointer::ytke=>NULL()
type(type_gfl_comp),pointer::ytte=>NULL()
type(type_gfl_comp),pointer::yefb1=>NULL()
type(type_gfl_comp),pointer::yefb2=>NULL()
type(type_gfl_comp),pointer::yefb3=>NULL()
type(type_gfl_comp),pointer::ya=>NULL()
type(type_gfl_comp),pointer::yo3=>NULL()
type(type_gfl_comp),pointer::ysrc=>NULL()
type(type_gfl_comp),pointer::ylmf=>NULL()
type(type_gfl_comp),pointer::yimf=>NULL()
type(type_gfl_comp),pointer::yamf=>NULL()
type(type_gfl_comp),pointer::ythrad=>NULL()
type(type_gfl_comp),pointer::ywmfc=>NULL()
type(type_gfl_comp),pointer::yhlmf=>NULL()
type(type_gfl_comp),pointer::yhlcfmf=>NULL()
type(type_gfl_comp),pointer::yhimf=>NULL()
type(type_gfl_comp),pointer::yhicfmf=>NULL()
type(type_gfl_comp),pointer::ymxl=>NULL()
type(type_gfl_comp),pointer::yshtur=>NULL()
type(type_gfl_comp),pointer::yfqtur=>NULL()
type(type_gfl_comp),pointer::yfstur=>NULL()
type(type_gfl_comp),pointer::ycpf=>NULL()
type(type_gfl_comp),pointer::yspf=>NULL()
type(type_gfl_comp),pointer::ycvgq=>NULL()
type(type_gfl_comp),pointer::yqva=>NULL()
type(type_gfl_comp),pointer::yghg(:)=>NULL()
type(type_gfl_comp),pointer::ychem(:)=>NULL()
type(type_gfl_comp),pointer::yaero(:)=>NULL()
type(type_gfl_comp),pointer::ylrch4=>NULL()
type(type_gfl_comp),pointer::yemis3d(:)=>NULL()
type(type_gfl_comp),pointer::yforc(:)=>NULL()
type(type_gfl_comp),pointer::yezdiag(:)=>NULL()
type(type_gfl_comp),pointer::yera40(:)=>NULL()
type(type_gfl_comp),pointer::ynogw(:)=>NULL()
type(type_gfl_comp),pointer::yedrp(:)=>NULL()
type(type_gfl_comp),pointer::ysldia(:)=>NULL()
type(type_gfl_comp),pointer::yaeraot(:)=>NULL()
type(type_gfl_comp),pointer::yaerlisi(:)=>NULL()
type(type_gfl_comp),pointer::yaerout(:)=>NULL()
type(type_gfl_comp),pointer::yaeroclim(:)=>NULL()
type(type_gfl_comp),pointer::yuvp(:)=>NULL()
type(type_gfl_comp),pointer::yphys(:)=>NULL()
type(type_gfl_comp),pointer::yphycty=>NULL()
type(type_gfl_comp),pointer::yrspec=>NULL()
type(type_gfl_comp),pointer::ysdsat=>NULL()
type(type_gfl_comp),pointer::ycvv=>NULL()
type(type_gfl_comp),pointer::yrkth=>NULL()
type(type_gfl_comp),pointer::yrktqv=>NULL()
type(type_gfl_comp),pointer::yrktqc=>NULL()
type(type_gfl_comp),pointer::yuom=>NULL()
type(type_gfl_comp),pointer::yual=>NULL()
type(type_gfl_comp),pointer::ydom=>NULL()
type(type_gfl_comp),pointer::ydal=>NULL()
type(type_gfl_comp),pointer::yuen=>NULL()
type(type_gfl_comp),pointer::yunebh=>NULL()
type(type_gfl_comp),pointer::ymo=>NULL()
type(type_gfl_comp),pointer::ylima(:)=>NULL()
type(type_gfl_comp),pointer::yfsd=>NULL()
type(type_gfl_comp),pointer::yext(:)=>NULL()
type(type_gfl_naml)::yq_nl
type(type_gfl_naml)::yi_nl
type(type_gfl_naml)::yl_nl
type(type_gfl_naml)::ylconv_nl
type(type_gfl_naml)::yiconv_nl
type(type_gfl_naml)::yrconv_nl
type(type_gfl_naml)::ysconv_nl
type(type_gfl_naml)::yirad_nl
type(type_gfl_naml)::ylrad_nl
type(type_gfl_naml)::ys_nl
type(type_gfl_naml)::yr_nl
type(type_gfl_naml)::yg_nl
type(type_gfl_naml)::yh_nl
type(type_gfl_naml)::ytke_nl
type(type_gfl_naml)::ytte_nl
type(type_gfl_naml)::yefb1_nl
type(type_gfl_naml)::yefb2_nl
type(type_gfl_naml)::yefb3_nl
type(type_gfl_naml)::ya_nl
type(type_gfl_naml)::yo3_nl
type(type_gfl_naml)::ysrc_nl
type(type_gfl_naml)::ylmf_nl
type(type_gfl_naml)::yimf_nl
type(type_gfl_naml)::yamf_nl
type(type_gfl_naml)::ythrad_nl
type(type_gfl_naml)::ywmfc_nl
type(type_gfl_naml)::yhlmf_nl
type(type_gfl_naml)::yhlcfmf_nl
type(type_gfl_naml)::yhimf_nl
type(type_gfl_naml)::yhicfmf_nl
type(type_gfl_naml)::ymxl_nl
type(type_gfl_naml)::yshtur_nl
type(type_gfl_naml)::yfqtur_nl
type(type_gfl_naml)::yfstur_nl
type(type_gfl_naml)::ycpf_nl
type(type_gfl_naml)::yspf_nl
type(type_gfl_naml)::ycvgq_nl
type(type_gfl_naml)::yqva_nl
type(type_gfl_naml)::yghg_nl(1_8:3_8)
type(type_gfl_naml)::ychem_nl(1_8:220_8)
type(type_gfl_naml)::yaero_nl(1_8:42_8)
type(type_gfl_naml)::yera40_nl(1_8:14_8)
type(type_gfl_naml)::ynogw_nl(1_8:2_8)
type(type_gfl_naml)::yedrp_nl(1_8:2_8)
type(type_gfl_naml)::ysldia_nl(1_8:7_8)
type(type_gfl_naml)::ylrch4_nl
type(type_gfl_naml)::yaeraot_nl(1_8:3_8)
type(type_gfl_naml)::yaerlisi_nl(1_8:3_8,1_8:6_8)
type(type_gfl_naml)::yaerout_nl(1_8:38_8)
type(type_gfl_naml)::yaeroclim_nl(1_8:3_8)
type(type_gfl_naml)::yuvp_nl(1_8:2_8)
type(type_gfl_naml)::yrkth_nl
type(type_gfl_naml)::yrktqv_nl
type(type_gfl_naml)::yrktqc_nl
type(type_gfl_naml)::yphycty_nl
type(type_gfl_naml)::yfsd_nl
type(type_gfl_naml)::yrspec_nl
type(type_gfl_naml)::ysdsat_nl
type(type_gfl_naml)::ycvv_nl
type(type_gfl_naml)::yforc_nl(1_8:1100_8)
type(type_gfl_naml)::yezdiag_nl(1_8:50_8)
type(type_gfl_naml)::yext_nl(1_8:579_8)
type(type_gfl_naml)::yuom_nl
type(type_gfl_naml)::yual_nl
type(type_gfl_naml)::ydom_nl
type(type_gfl_naml)::ydal_nl
type(type_gfl_naml)::yuen_nl
type(type_gfl_naml)::yunebh_nl
type(type_gfl_naml)::ymo_nl
type(type_aero_wvl_diag)::yaero_wvl_diag_nl(1_8:20_8)
type(type_gfl_naml)::ylima_nl(1_8:50_8)
end type
type(type_gfld),pointer::ygfl
end
