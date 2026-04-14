!mod$ v1 sum:dd2ae631312de062
!need$ b372c7a1b7a82655 n yomozo
!need$ 33bee41ecea1ab39 n yomchem
!need$ 2197d6deb875bf0f n yomcompo
!need$ fa0f267a254f7ac3 n drydep_par
module model_chem_mod
use yomozo,only:tozo
use yomchem,only:tchem
use yomcompo,only:tcompo
use drydep_par,only:tdrydep
type::model_chem_type
type(tozo)::yrozo
type(tchem)::yrchem
type(tcompo)::yrcompo
type(tdrydep)::yrdrydep
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(model_chem_type),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
