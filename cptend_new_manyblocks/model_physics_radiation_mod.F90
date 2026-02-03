!mod$ v1 sum:45b7ddf8fe8fddb6
!need$ 8564aa54dbfc829b n yoerad
!need$ 488336827d9ffca3 n yoesw
!need$ 08cb5d29ff5f17e7 n yoeovlp
!need$ dd3b36233b09d6ed n yoeneur
!need$ 88efe337ffb2a340 n yoelwrad
!need$ c4c2dcd908da92b4 n yoeaerd
!need$ 77c380237ec651f3 n yoeaeratm
!need$ 0bacb741609b8cf4 n yoe_uvrad
!need$ 5207f0e0dc4d6e12 n yoerdi
!need$ 18bd375b2daf1e89 n yoe_mcica
!need$ 3afe3bcdfbf0d5dd n yomrcoef
!need$ f06c0c9b3bfbe536 n yomprad
!need$ a960a0d3ac94e8ba n yomgsgeom
!need$ 6f70a3ef1fa4b8b6 n yoerip
!need$ 56af88cf3421ad38 n yoeradiation
!need$ 9b429cfd3b7d4518 n eint_mod
!need$ fe3180dd7f22d4c1 n parkind1
!need$ 99f7ec52259902ea n yomhook
module model_physics_radiation_mod
use yoerad,only:terad
use yoesw,only:teswrt
use yoeovlp,only:teovlp
use yoeneur,only:teneur
use yoelwrad,only:telwrad
use yoeaerd,only:teaerd
use yoeaeratm,only:teaeratm
use yoe_uvrad,only:teuvrad
use yoerdi,only:terdi
use yoe_mcica,only:temcica
use yomrcoef,only:trcoef
use yomprad,only:radiation_grid_struct
use yomgsgeom,only:tgsgeom
use yoerip,only:terip
use yoeradiation,only:tradiation
use eint_mod,only:sl_struct
use parkind1,only:jprb
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use yomhook,only:yomhook$yomhook$dr_hook_default8=>dr_hook_default8
type::model_physics_radiation_type
type(terad)::yrerad
type(teswrt)::yreswrt
type(teovlp)::yreovlp
type(teneur)::yreneur
type(telwrad)::yrelwrad
type(teaerd)::yreaerd
type(teaeratm)::yreaeratm
type(teuvrad)::yreuvrad
type(terdi)::yrerdi
type(temcica)::yremcica
type(trcoef)::yrrcoef
type(radiation_grid_struct)::radgrid
type(tgsgeom),pointer::yrad_gsgeom(:)=>NULL()
type(terip)::yrerip
type(tradiation)::yradiation
type(sl_struct)::yrri
type(sl_struct)::yrro
contains
procedure,pass::print=>print_configuration
end type
intrinsic::null
contains
subroutine print_configuration(self,kdepth,koutno)
class(model_physics_radiation_type),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
