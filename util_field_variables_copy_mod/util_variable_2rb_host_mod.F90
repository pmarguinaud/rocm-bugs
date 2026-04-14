!mod$ v1 sum:e2b6b520f996508b
!need$ 2ed18a7587b74ab0 n variable_module
module util_variable_2rb_host_mod
use variable_module,only:variable_2rb
interface acdc_host
procedure::acdc_host_variable_2rb
end interface
contains
subroutine acdc_host_variable_2rb(self)
type(variable_2rb),target::self
end
end
