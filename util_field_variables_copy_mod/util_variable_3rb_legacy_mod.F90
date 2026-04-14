!mod$ v1 sum:a9b7cbef9708b2b9
!need$ 2ed18a7587b74ab0 n variable_module
module util_variable_3rb_legacy_mod
use variable_module,only:variable_3rb
interface acdc_legacy
procedure::acdc_legacy_variable_3rb
end interface
contains
subroutine acdc_legacy_variable_3rb(self,kaddrl,kaddru,kdir)
type(variable_3rb),target::self
integer(8),intent(in)::kaddrl
integer(8),intent(in)::kaddru
integer(4),intent(in)::kdir
end
end
