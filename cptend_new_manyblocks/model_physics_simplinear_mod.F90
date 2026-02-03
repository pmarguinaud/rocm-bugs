!mod$ v1 sum:a9b149ac94879e97
!need$ cb28c1a867fdda3f n yoephli
!need$ a93b8bf0f88cfaac n yomcumfs
!need$ c68bc841e3e91772 n yoegwdwms
!need$ ae4b451283e5d0fd n yoecumf2
!need$ c0260fbf4afc8adc n yophlc
!need$ 10e0c1f422d1e1df n yophnc
!need$ 422abaab84381ce9 n yomncl
!need$ 96a0ef8a7dbcf28b n yomsrftlad
!need$ a6debf48650cc284 n yomsphyhist
module model_physics_simplinear_mod
use yoephli,only:tephli
use yomcumfs,only:tcumfs
use yoegwdwms,only:tegwdwms
use yoecumf2,only:tecumf2
use yophlc,only:tphlc
use yophnc,only:tphnc
use yomncl,only:tncl
use yomsrftlad,only:tsrftlad
use yomsphyhist,only:sphys_hist_type
type::model_physics_simplinear_type
type(tephli)::yrephli
type(tcumfs)::yrcumfs
type(tegwdwms)::yregwdwms
type(tecumf2)::yrecumf2
type(tphlc)::yrphlc
type(tphnc)::yrphnc
type(tncl)::yrncl
type(tsrftlad)::yrsrftlad
type(sphys_hist_type),pointer::gphist(:)=>NULL()
contains
procedure,pass::print=>print_configuration
end type
intrinsic::null
contains
subroutine print_configuration(self,kdepth,koutno)
class(model_physics_simplinear_type),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
