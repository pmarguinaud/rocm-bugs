!mod$ v1 sum:ca41b1dac1386022
!need$ 2ed18a7587b74ab0 n variable_module
module util_variable_3rb_host_mod
use variable_module,only:variable_3rb
interface acdc_host
procedure::acdc_host_variable_3rb
end interface
contains
subroutine acdc_host_variable_3rb(self)
type(variable_3rb),target::self
end
end
