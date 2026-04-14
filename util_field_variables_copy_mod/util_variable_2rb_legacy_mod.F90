!mod$ v1 sum:a6f8322f9a193108
!need$ 2ed18a7587b74ab0 n variable_module
module util_variable_2rb_legacy_mod
use variable_module,only:variable_2rb
interface acdc_legacy
procedure::acdc_legacy_variable_2rb
end interface
contains
subroutine acdc_legacy_variable_2rb(self,kaddrl,kaddru,kdir)
type(variable_2rb),target::self
integer(8),intent(in)::kaddrl
integer(8),intent(in)::kaddru
integer(4),intent(in)::kdir
end
end
