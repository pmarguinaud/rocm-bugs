!mod$ v1 sum:d4f07df54ff312d1
!need$ fe3180dd7f22d4c1 n parkind1
module yoecld
use parkind1,only:jprb
type::tecld
real(8),allocatable::ceta(:)
real(8)::ranva
real(8)::ranvb
real(8)::ranvh
real(8)::rcca
real(8)::rccb
real(8)::rccc
real(8)::rcfct
real(8)::rclwmr
real(8)::rcscal
real(8)::rdecorr_cf
real(8)::rdecorr_cw
real(8)::retahb
real(8)::retamb
real(8)::rloia
real(8)::rloib
real(8)::rloic
real(8)::rloid
real(8)::rlonia
real(8)::rlonib
real(8)::rrhh
real(8)::rrhl
real(8)::rgammas
real(8)::repscr
real(8)::repsec
logical(4)::lomega
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(tecld),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
