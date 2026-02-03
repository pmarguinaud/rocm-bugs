!mod$ v1 sum:d40ee80427a22458
!need$ fe3180dd7f22d4c1 n parkind1
module yoevdf
use parkind1,only:jpim
use parkind1,only:jprb
type::tvdf
real(8)::rlam
real(8)::rvdifts
logical(4)::lwds
real(8)::reps1wds
real(8)::reps2wds
real(8)::retawds
real(8)::rtofdalpha
real(8)::reisthsc
integer(4)::nsubst
real(8)::rfac_two_coef
real(8)::rzc_h
real(8)::rzl_inf
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(tvdf),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
