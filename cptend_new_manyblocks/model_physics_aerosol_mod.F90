!mod$ v1 sum:b5d8b3c26002a64b
!need$ 98425d71c736f6d3 n yoeaerlid
!need$ a560e3066561dbf2 n yoeaermap
!need$ 75ca5605a39c2e89 n yoeaersnk
!need$ 66a4f84b0672838b n yoeaersrc
!need$ 69d297284b6aadb1 n yoeaervol
!need$ 07851ff53f8ca423 n yoedbug
module model_physics_aerosol_mod
use yoeaerlid,only:teaerlid
use yoeaermap,only:teaermap
use yoeaersnk,only:teaersnk
use yoeaersrc,only:teaersrc
use yoeaervol,only:teaervol
use yoedbug,only:tedbug
type::model_physics_aerosol_type
type(teaerlid)::yreaerlid
type(teaermap)::yreaermap
type(teaersnk)::yreaersnk
type(teaersrc)::yreaersrc
type(teaervol)::yreaervol
type(tedbug)::yredbug
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(model_physics_aerosol_type),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
