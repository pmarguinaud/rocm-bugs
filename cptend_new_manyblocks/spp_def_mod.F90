!mod$ v1 sum:5942403f334513d2
!need$ bdaf13f8815842fc n spp_gen_mod
!need$ 99f7ec52259902ea n yomhook
!need$ fe3180dd7f22d4c1 n parkind1
module spp_def_mod
use parkind1,only:jpim
use parkind1,only:jprb
use spp_gen_mod,only:spp_model
use spp_gen_mod,only:allocate_spp_model
use spp_gen_mod,only:implement_spp_pertn
use spp_gen_mod,only:jp_lab_len
use spp_gen_mod,only:cp_undefined
use spp_gen_mod,only:jpmxscales
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use yomhook,only:yomhook$yomhook$dr_hook_default8=>dr_hook_default8
type::spp_pert_pointer
integer(4)::cfm=-1_4
integer(4)::cfm1=-1_4
integer(4)::cfm2=-1_4
integer(4)::cfm3=-1_4
integer(4)::rkap=-1_4
integer(4)::rkap1=-1_4
integer(4)::rkap2=-1_4
integer(4)::rkap3=-1_4
integer(4)::tofdc=-1_4
integer(4)::hsdt=-1_4
integer(4)::vdexc=-1_4
integer(4)::vdsst=-1_4
integer(4)::coldskin=-1_4
integer(4)::entrorg=-1_4
integer(4)::entshalp=-1_4
integer(4)::entstpc1=-1_4
integer(4)::detrpen=-1_4
integer(4)::rprcon=-1_4
integer(4)::rtau=-1_4
integer(4)::cududv=-1_4
integer(4)::cududvs=-1_4
integer(4)::ramid=-1_4
integer(4)::rcldiff=-1_4
integer(4)::rclcrit=-1_4
integer(4)::rlcritsnow=-1_4
integer(4)::rainevap=-1_4
integer(4)::snowsublim=-1_4
integer(4)::cloudinhom=-1_4
integer(4)::qsatvervel=-1_4
integer(4)::fallspeed=-1_4
integer(4)::zdecorr=-1_4
integer(4)::zsigqcw=-1_4
integer(4)::zradeffl=-1_4
integer(4)::zradeffi=-1_4
integer(4)::phr=-1_4
integer(4)::aerosolmmr=-1_4
integer(4)::zhs_vdaero=-1_4
integer(4)::delta_aero=-1_4
integer(4)::psigqsat=-1_4
integer(4)::clddpth=-1_4
integer(4)::clddpthdp=-1_4
integer(4)::ice_cld_wgt=-1_4
integer(4)::icenu=-1_4
integer(4)::rcriauti=-1_4
integer(4)::rcriautc=-1_4
integer(4)::zrdepred=-1_4
integer(4)::kgn_acon=-1_4
integer(4)::kgn_sbgr=-1_4
integer(4)::radgr=-1_4
integer(4)::radsn=-1_4
integer(4)::rfac_twoc=-1_4
integer(4)::rzc_h=-1_4
integer(4)::rzl_inf=-1_4
integer(4)::rswinhf=-1_4
integer(4)::rlwinhf=-1_4
integer(4)::alpha=-1_4
integer(4)::rznuc=-1_4
integer(4)::rzmfdry=-1_4
integer(4)::rzmbclosure=-1_4
integer(4)::slwind=-1_4
integer(4)::xctp=-1_4
integer(4)::xcep=-1_4
integer(4)::xced=-1_4
integer(4)::xcmf=-1_4
contains
procedure::set=>set_spp_pert_pointer
end type
contains
subroutine set_spp_pert_pointer(this,cd_pert,kptr)
class(spp_pert_pointer),intent(inout)::this
character(16_4,1),intent(in)::cd_pert
integer(4),intent(in)::kptr
end
subroutine define_spp_arpege(sm,kulout)
type(spp_model),intent(inout)::sm
integer(4),intent(in)::kulout
end
subroutine define_spp_ifs(sm,kulout)
type(spp_model),intent(inout)::sm
integer(4),intent(in)::kulout
end
subroutine define_spp_lam(sm,kulout)
type(spp_model),intent(inout)::sm
integer(4),intent(in)::kulout
end
end
