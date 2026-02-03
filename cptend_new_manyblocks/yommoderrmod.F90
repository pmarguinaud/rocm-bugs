!mod$ v1 sum:e8ffc2354a11f08b
!need$ fe3180dd7f22d4c1 n parkind1
module yommoderrmod
use parkind1,only:jpim
use parkind1,only:jprb
type::tmoderr
logical(4)::lscalerr=.false._4
logical(4)::ltapererr=.false._4
integer(4)::ntype_moderr=0_4
integer(4)::nstep_moderr=0_4
integer(4)::norder_moderr=0_4
integer(4)::nprtmoderr=0_4
integer(4)::tapererr_ini=0_4
integer(4)::tapererr_end=0_4
real(8)::tstep_err=0._8
integer(4),allocatable::msteperr(:)
real(8),allocatable::tsteperr(:)
real(8),allocatable::fsteperr(:,:)
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(tmoderr),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
