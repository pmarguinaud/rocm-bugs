!mod$ v1 sum:a189d1ef2eaf7142
!need$ 5b68404fcbf76e21 n yommcc
!need$ 02926b5f7773f0fb n yomcom
!need$ 45a7618d66faeafc n yomcou
module model_atmos_ocean_coupling_mod
use yommcc,only:tmcc
use yomcom,only:tcom
use yomcou,only:tcou
type::model_atmos_ocean_coupling_type
type(tmcc)::yrmcc
type(tcom)::yrcom
type(tcou)::yrcou
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(model_atmos_ocean_coupling_type),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
