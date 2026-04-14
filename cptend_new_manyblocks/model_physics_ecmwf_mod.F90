!mod$ v1 sum:fc823f7cc2fb0503
!need$ eb04696016e1f4f0 n yoephy
!need$ d4f07df54ff312d1 n yoecld
!need$ fe30d16384671131 n yoecldp
!need$ 5ce08f7162cf570a n yoecnd
!need$ 9cd4154a5b07d237 n yoe_cuconvca
!need$ bba8a44744d3068d n yoegwd
!need$ b87dcfa7e28b7728 n yoegwwms
!need$ f442d6a68962ba6d n yoethf
!need$ df016c0d2a01d490 n yoecumf
module model_physics_ecmwf_mod
use yoephy,only:tephy
use yoecld,only:tecld
use yoecldp,only:tecldp
use yoecnd,only:tecnd
use yoecumf,only:tecumf
use yoe_cuconvca,only:tecuconvca
use yoegwd,only:tegwd
use yoegwwms,only:tegwwms
use yoethf,only:tthf
type::model_physics_ecmwf_type
type(tephy)::yrephy
type(tecld)::yrecld
type(tecldp)::yrecldp
type(tecnd)::yrecnd
type(tecumf)::yrecumf
type(tecuconvca)::yrecuconvca
type(tegwd)::yregwd
type(tegwwms)::yregwwms
type(tthf)::yrthf
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(model_physics_ecmwf_type),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
