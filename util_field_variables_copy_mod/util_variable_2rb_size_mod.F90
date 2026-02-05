!mod$ v1 sum:a771ff6390db6927
!need$ 2ed18a7587b74ab0 n variable_module
module util_variable_2rb_size_mod
use variable_module,only:variable_2rb
interface acdc_size
procedure::acdc_size_variable_2rb
end interface
contains
function acdc_size_variable_2rb(self,cdpath,ldprint) result(ksize)
type(variable_2rb),intent(in),target::self
character(*,1),intent(in),optional::cdpath
logical(4),intent(in),optional::ldprint
integer(8)::ksize
end
end
