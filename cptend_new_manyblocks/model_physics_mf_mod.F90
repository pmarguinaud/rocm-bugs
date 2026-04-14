!mod$ v1 sum:b77cc2ea4287f65e
!need$ 7b9903af3d86dda7 n yomphy
!need$ be8e9cec133ce3fd n yomphy0
!need$ b915069ff1ce9edd n yomphy1
!need$ a69a8580c2591393 n yomphy2
!need$ 33c2c5c82788bcb6 n yomphy3
!need$ 82866dfe85b9ecf1 n yomaero
!need$ cd6f9d469b06c6f5 n type_aero
!need$ e362522f1f9043ab n yomphyds
!need$ 4152d172561e5dab n yomcvmnh
!need$ 39ef97aa99d40e6d n yomtoph
!need$ b1fd17084eb64dc7 n yomvdoz
!need$ 146c2b76671d6513 n yomsimphl
!need$ f286e9ccae7ee2b2 n yomarphy
!need$ 377450d9a8f5d0c4 n yomparar
!need$ e5eb7c373869d847 n yommse
!need$ bc6ee455fdbd37ab n yomlouis
!need$ d40ba470a153ee40 n yomnorgwd
!need$ 9fda6070d7e02ec9 n yomnrtaer
!need$ 8aa6f85d5dc47dc5 n yoaiop
!need$ 9b429cfd3b7d4518 n eint_mod
!need$ 4e76599c795205f8 n yomdgradient
!need$ f825a4621c8628b4 n yomwindfarm
module model_physics_mf_mod
use yomphy,only:tphy
use yomphy0,only:tphy0
use yomphy1,only:tphy1
use yomphy2,only:tphy2
use yomphy3,only:tphy3
use yomaero,only:taero
use type_aero,only:taero_avg
use yomphyds,only:tphyds
use yomcvmnh,only:tcvmnh
use yomtoph,only:ttoph
use yomvdoz,only:tvdoz
use yomsimphl,only:tsimphl
use yomarphy,only:tarphy
use yomparar,only:tparar
use yommse,only:tmse
use yomlouis,only:tlouis
use yomnorgwd,only:tnorgwd
use yomnrtaer,only:tnrtaer
use yoaiop,only:taiop
use eint_mod,only:sl_struct
use yomdgradient,only:tgradient
use yomwindfarm,only:twfmeta
type::model_physics_mf_type
type(tphy)::yrphy
type(tphy0)::yrphy0
type(tphy1)::yrphy1
type(tphy2)::yrphy2
type(tphy3)::yrphy3
type(taero)::yraero
type(taero_avg)::yraero_avg
type(tphyds)::yrphyds
type(tcvmnh)::yrcvmnh
type(ttoph)::yrtoph
type(tvdoz)::yrvdoz
type(tsimphl)::yrsimphl
type(tarphy)::yrarphy
type(tparar)::yrparar
type(tmse)::yrmse
type(tlouis)::yrlouis
type(tnorgwd)::yrnorgwd
type(sl_struct)::yrgr
type(tgradient)::ygrad
type(tnrtaer)::yrnrtaer
type(taiop)::yraiop
type(twfmeta)::yrwfmeta
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(model_physics_mf_type),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
