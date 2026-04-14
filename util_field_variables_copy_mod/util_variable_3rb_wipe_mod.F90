!mod$ v1 sum:41f7041cbf5c8016
!need$ 2ed18a7587b74ab0 n variable_module
module util_variable_3rb_wipe_mod
use variable_module,only:variable_3rb
interface acdc_wipe
procedure::acdc_wipe_variable_3rb
end interface
contains
subroutine acdc_wipe_variable_3rb(self,lddeleted,ldfieldapi)
type(variable_3rb),intent(in),target::self
logical(4),intent(in),optional::lddeleted
logical(4),intent(in),optional::ldfieldapi
end
end
