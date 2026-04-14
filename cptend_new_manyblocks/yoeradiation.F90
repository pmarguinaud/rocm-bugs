!mod$ v1 sum:56af88cf3421ad38
!need$ a9246b2b196281c8 n radiation_config
!need$ fe3180dd7f22d4c1 n parkind1
module yoeradiation
use parkind1,only:jprb
use parkind1,only:jpim
use radiation_config,only:config_type
type::tradiation
type(config_type)::rad_config
integer(4)::nweight_uv
integer(4)::iband_uv(1_8:100_8)
real(8)::weight_uv(1_8:100_8)
integer(4)::nweight_par
integer(4)::iband_par(1_8:100_8)
real(8)::weight_par(1_8:100_8)
integer(4)::itype_trop_bg_aer=0_4
integer(4)::itype_strat_bg_aer=0_4
real(8)::trop_bg_aer_mass_ext=0._8
real(8)::strat_bg_aer_mass_ext=0._8
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(tradiation),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
