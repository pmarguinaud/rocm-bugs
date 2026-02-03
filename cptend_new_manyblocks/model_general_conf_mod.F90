!mod$ v1 sum:b1898997335bab45
!need$ 17d64803ce7bd0c9 n yomdimf
!need$ 728a2604fdd3f4c0 n yom_ygfl
!need$ 127606aff608c7a3 n yomrip
!need$ e8ffc2354a11f08b n yommoderrmod
!need$ ee76c246cd9ac178 n yomspsdt
!need$ 482d9c54920ee62c n spp_mod
!need$ 99f7ec52259902ea n yomhook
!need$ 0a82f5c089df032d n type_geometry
module model_general_conf_mod
use type_geometry,only:geometry
use yomdimf,only:tdimf
use yom_ygfl,only:type_gfld
use yomrip,only:trip
use yommoderrmod,only:tmoderr
use yomspsdt,only:tsppt_config
use spp_mod,only:tspp_config
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use yomhook,only:yomhook$yomhook$dr_hook_default8=>dr_hook_default8
type::model_general_conf_type
type(geometry),pointer::geom=>NULL()
type(tdimf)::yrdimf
type(type_gfld)::ygfl
type(trip)::yrrip
type(tmoderr)::yrmoderr
type(tsppt_config)::yrsppt_config
type(tspp_config)::yrspp_config
contains
procedure,pass::print=>print_configuration
end type
intrinsic::null
contains
subroutine print_configuration(self,kdepth,koutno)
class(model_general_conf_type),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
