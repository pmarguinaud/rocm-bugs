!mod$ v1 sum:4ce4dada4ac8958f
!need$ cd3664dc6a14855e n yomcddh
!need$ 3d79c63efc06d416 n yomlddh
!need$ 7b0b1303958b4b9f n yommddh
!need$ 0bb34c3c1b1593e6 n yomsddh
module model_diagnostics_mod
use yomcddh,only:tcddh
use yomlddh,only:tlddh
use yommddh,only:tmddh
use yomsddh,only:tsddh
type::model_diagnostics_type
type(tcddh)::yrcddh
type(tlddh)::yrlddh
type(tmddh)::yrmddh
type(tsddh)::yrsddh
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(model_diagnostics_type),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
