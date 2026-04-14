!mod$ v1 sum:7007895b95f8e443
!need$ 2ed18a7587b74ab0 n variable_module
module util_variable_2rb_crc64_mod
use variable_module,only:variable_2rb
interface acdc_crc64
procedure::acdc_crc64_variable_2rb
end interface
contains
subroutine acdc_crc64_variable_2rb(self,klun,cdpath)
type(variable_2rb),target::self
integer(4),intent(in)::klun
character(*,1),intent(in)::cdpath
end
end
