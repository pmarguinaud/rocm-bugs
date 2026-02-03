!mod$ v1 sum:57a672f60de8da4b
!need$ 84b6cac4990167bf n stoph_mix
!need$ b68d3f84e65e2753 n yomrandom_streams
!need$ 7384249014dc3f05 n yompertpar
module model_physics_stochast_mod
use stoph_mix,only:tstoph
use yomrandom_streams,only:trandom_streams
use yompertpar,only:tpertpar
type::model_physics_stochast_type
type(tpertpar)::yrpertpar
type(tstoph)::yrstoph
type(trandom_streams)::yr_random_streams
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(model_physics_stochast_type),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
