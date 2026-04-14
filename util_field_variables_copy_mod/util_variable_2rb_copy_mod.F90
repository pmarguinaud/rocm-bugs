!mod$ v1 sum:613ac138cecdc575
!need$ 2ed18a7587b74ab0 n variable_module
module util_variable_2rb_copy_mod
use variable_module,only:variable_2rb
interface acdc_copy
procedure::acdc_copy_variable_2rb
end interface
contains
subroutine acdc_copy_variable_2rb(self,ldcreated,ldfieldapi)
type(variable_2rb),intent(in),target::self
logical(4),intent(in),optional::ldcreated
logical(4),intent(in),optional::ldfieldapi
end
end
