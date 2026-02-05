!mod$ v1 sum:17aff635a94eb7f8
!need$ 2ed18a7587b74ab0 n variable_module
module util_variable_3rb_copy_mod
use variable_module,only:variable_3rb
interface acdc_copy
procedure::acdc_copy_variable_3rb
end interface
contains
subroutine acdc_copy_variable_3rb(self,ldcreated,ldfieldapi)
type(variable_3rb),intent(in),target::self
logical(4),intent(in),optional::ldcreated
logical(4),intent(in),optional::ldfieldapi
end
end
