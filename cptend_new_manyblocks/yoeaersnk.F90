!mod$ v1 sum:75ca5605a39c2e89
!need$ fe3180dd7f22d4c1 n parkind1
!need$ 99f7ec52259902ea n yomhook
module yoeaersnk
use parkind1,only:jpim
use parkind1,only:jprb
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use yomhook,only:yomhook$yomhook$dr_hook_default8=>dr_hook_default8
type::teaersnk
integer(4)::ndrydepvel_dyn
integer(4)::ndrydep
real(8)::r_r
real(8)::r_s
real(8)::raerts(1_8:21_8)
real(8)::rfraer
real(8)::rrhtab(1_8:12_8)
real(8)::rrhtab15(1_8:15_8)
real(8)::rssgrowth_rhtab(1_8:12_8)
real(8)::rmmd_stratsulf_back
real(8)::rmmd_stratsulf_volc
real(8)::rsigma_stratsulf_volc
real(8)::rrho_stratsulf
real(8)::rsoagrowth_rhtab(1_8:12_8)
real(8)::rso4growth_rhtab(1_8:12_8)
real(8)::romgrowth_rhtab(1_8:12_8)
real(8)::rnigrowth_rhtab(1_8:12_8)
real(8)::ramgrowth_rhtab(1_8:12_8)
real(8)::rssdens_rhtab(1_8:12_8)
real(8)::rssgrowth_rhtab15(1_8:15_8)
real(8)::rssdens_rhtab15(1_8:15_8)
real(8)::rrho_dd(1_8:9_8)
real(8)::rrho_so4
real(8)::rrho_soa
real(8)::rrho_om
real(8)::rrho_am
real(8)::rrho_bc
real(8)::rrho_ash
real(8)::rrho_ni(1_8:2_8)
real(8)::rrho_ss(1_8:9_8)
real(8)::rmmd_dd(1_8:9_8)
real(8)::rmmd_so4
real(8)::rmmd_soa
real(8)::rmmd_om
real(8)::rmmd_am
real(8)::rmmd_bc
real(8)::rmmd_ash
real(8)::rmmd_ni(1_8:2_8)
real(8)::rmmd_ss(1_8:9_8)
real(8)::rho_wat
real(8)::rho_ice
real(8)::rhamaker
real(8)::rso2cv1
real(8)::rso2cv2
real(8)::rsucv1
real(8)::rsucv2
real(8)::rvso2cv1
real(8)::rvso2cv2
contains
procedure,pass::print=>print_configuration
end type
type(teaersnk),pointer::yreaersnk
intrinsic::null
contains
subroutine print_configuration(self,kdepth,koutno)
class(teaersnk),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
