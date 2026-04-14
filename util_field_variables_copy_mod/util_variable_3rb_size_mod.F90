!mod$ v1 sum:9597ef88fe9aaae6
!need$ 2ed18a7587b74ab0 n variable_module
module util_variable_3rb_size_mod
use variable_module,only:variable_3rb
interface acdc_size
procedure::acdc_size_variable_3rb
end interface
contains
function acdc_size_variable_3rb(self,cdpath,ldprint) result(ksize)
type(variable_3rb),intent(in),target::self
character(*,1),intent(in),optional::cdpath
logical(4),intent(in),optional::ldprint
integer(8)::ksize
end
end
