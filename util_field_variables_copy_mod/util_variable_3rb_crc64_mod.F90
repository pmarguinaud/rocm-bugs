!mod$ v1 sum:405787453589bf8e
!need$ 2ed18a7587b74ab0 n variable_module
module util_variable_3rb_crc64_mod
use variable_module,only:variable_3rb
interface acdc_crc64
procedure::acdc_crc64_variable_3rb
end interface
contains
subroutine acdc_crc64_variable_3rb(self,klun,cdpath)
type(variable_3rb),target::self
integer(4),intent(in)::klun
character(*,1),intent(in)::cdpath
end
end
