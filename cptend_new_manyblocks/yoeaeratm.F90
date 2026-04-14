!mod$ v1 sum:77c380237ec651f3
!need$ bb2c01705a786d89 n yoe_aerodiag
!need$ 99f7ec52259902ea n yomhook
!need$ fe3180dd7f22d4c1 n parkind1
module yoeaeratm
use parkind1,only:jpim
use parkind1,only:jprb
use yoe_aerodiag,only:npaerodiag
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use yomhook,only:yomhook$yomhook$dr_hook_default8=>dr_hook_default8
integer(4),parameter::nmaxtaer=10_4
type::type_aero_desc
character(16_4,1)::cname
integer(4)::igrbcode
integer(4)::ntyp
integer(4)::nbin
integer(4)::igribdiag(1_8:8_8)
real(8)::rddepvsea
real(8)::rddepvlic
real(8)::rsedimv
real(8)::rscavin
real(8)::rscavbcr
real(8)::rscavbcs
character(16_4,1)::coptclass
character(16_4,1)::chygclass
integer(4)::iaerocv
end type
type::teaeratm
integer(4)::naerconf
integer(4)::naeraging
integer(4)::niniday
integer(4)::nxt3daer
integer(4)::ndd1
integer(4)::nss1
integer(4)::nbcoptp
integer(4)::nddoptp
integer(4)::nomoptp
integer(4)::nssoptp
integer(4)::nsuoptp
integer(4)::nviswl
integer(4)::ntaer
integer(4)::ntypaer(1_8:10_8)
integer(4)::naer_blnucl
integer(4)::naerscav
integer(4)::itlistwavlcpl(1_8:14_8)
real(8)::rgrate
real(8)::repscaer
logical(4)::laerclimg
logical(4)::laerclimz
logical(4)::laerclist
logical(4)::laerdrydp
logical(4)::laerhygro
logical(4)::laerlisi
logical(4)::laerngat
logical(4)::laersedim
logical(4)::laersurf
logical(4)::laerelvs
logical(4)::laer6sdia
logical(4)::laersedimss
logical(4)::laergtop
logical(4)::laerrad
logical(4)::laerccn
logical(4)::laeropt(1_8:9_8)
logical(4)::laerinit
logical(4)::laervol
logical(4)::laercstr
logical(4)::laerdiag1
logical(4)::laerdiag2
logical(4)::laerrrtm
logical(4)::laerfillclim
logical(4)::laeruvp
logical(4)::lprogaervis
logical(4)::laerextr
logical(4)::laergbud
logical(4)::laerprnt
logical(4)::laernitrate
logical(4)::laerradcpl
logical(4)::lseasalt_rh80
logical(4)::laerdustsource
logical(4)::laerdustsizevar
logical(4)::laerdust_newbin
logical(4)::lwavlout(1_8:14_8)
real(8)::rss_dry_diafac
real(8)::rss_dry_densfac
real(8)::rss_dry_massfac
real(8)::rss_rh80_diafac
real(8)::rss_rh80_densfac
real(8)::rss_rh80_massfac
real(8)::raerdust_rebound
type(type_aero_desc),pointer::yaero_desc(:)=>NULL()
contains
procedure,pass::print=>print_configuration
end type
intrinsic::null
type(teaeratm),pointer::yreaeratm
contains
subroutine print_configuration(self,kdepth,koutno)
class(teaeratm),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
