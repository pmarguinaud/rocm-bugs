!mod$ v1 sum:a6043707f1bf487f
!need$ 2ed18a7587b74ab0 n variable_module
module util_variable_2rb_wipe_mod
use variable_module,only:variable_2rb
interface acdc_wipe
procedure::acdc_wipe_variable_2rb
end interface
contains
subroutine acdc_wipe_variable_2rb(self,lddeleted,ldfieldapi)
type(variable_2rb),intent(in),target::self
logical(4),intent(in),optional::lddeleted
logical(4),intent(in),optional::ldfieldapi
end
end
