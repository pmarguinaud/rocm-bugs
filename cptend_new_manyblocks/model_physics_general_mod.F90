!mod$ v1 sum:2c22e91de4c13f8c
!need$ 44579edf3f1a9194 n yomdphy
!need$ bdf62e4a5bded414 n yomslphy
!need$ d40ee80427a22458 n yoevdf
module model_physics_general_mod
use yomdphy,only:tdphy
use yomslphy,only:tslphy
use yoevdf,only:tvdf
type::model_physics_general_type
type(tdphy)::yrdphy
type(tslphy)::yrslphy
type(tvdf)::yrvdf
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(model_physics_general_type),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
