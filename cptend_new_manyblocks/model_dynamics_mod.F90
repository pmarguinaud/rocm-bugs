!mod$ v1 sum:bff837e9b47d401c
!need$ 4d30ff1138228d67 n yemdyn
!need$ fb563dd239907649 n spng_mod
!need$ c8f5aa41695edd16 n ptrgppc
!need$ 1b45cf014c5706b0 n intdynsl_mod
!need$ 919592922ff424a1 n yomslint
!need$ b8f13d95ce619da7 n yomslrep
!need$ 182732bf3e7c7684 n ptrslb1
!need$ 7e6b88d14e860c86 n ptrslb2
!need$ 3eeeff73c28b78a0 n ptrslb15
!need$ 8d979ba0ee6418a7 n yomtnh
!need$ 9b429cfd3b7d4518 n eint_mod
!need$ 5f747a7ce3877eca n yomdyn
!need$ b59ef98b3107b9fd n yomdyna
module model_dynamics_mod
use yomdyna,only:tdyna
use yomdyn,only:tdyn
use yemdyn,only:tedyn
use spng_mod,only:tspng
use ptrgppc,only:tptrgppc
use intdynsl_mod,only:tlscaw
use intdynsl_mod,only:trscaw
use intdynsl_mod,only:tsco
use intdynsl_mod,only:tcco
use yomslint,only:tslint
use yomslrep,only:tslrep
use ptrslb1,only:tptrslb1
use ptrslb2,only:tptrslb2
use ptrslb15,only:tptrslb15
use yomtnh,only:ttnh
use eint_mod,only:sl_struct
private::tdyna
private::tdyn
private::tedyn
private::tspng
private::tptrgppc
private::tlscaw
private::trscaw
private::tsco
private::tcco
private::tslint
private::tslrep
private::tptrslb1
private::tptrslb2
private::tptrslb15
private::ttnh
private::sl_struct
type::model_dynamics_type
type(tdyna)::yrdyna
type(tdyn)::yrdyn
type(tedyn)::yredyn
type(tspng)::yrspng
type(tptrgppc)::yrptrgppc
type(tlscaw)::yytlscaw
type(tlscaw)::yytlscawh
type(trscaw)::yytrscaw
type(trscaw)::yytrscawh
type(tsco)::yytsco
type(tcco)::yytcco
type(tslrep)::yrslrep
type(tslint)::yrslint
type(tptrslb1)::yrptrslb1
type(tptrslb2)::yrptrslb2
type(tptrslb15)::yrptrslb15
type(ttnh)::yrtnh
type(sl_struct)::yrsl
type(sl_struct)::yrad
contains
procedure,pass::print=>print_configuration
end type
private::print_configuration
contains
subroutine print_configuration(self,kdepth,koutno)
class(model_dynamics_type),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
