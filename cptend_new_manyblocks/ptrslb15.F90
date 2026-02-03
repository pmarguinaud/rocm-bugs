!mod$ v1 sum:3eeeff73c28b78a0
!need$ fe3180dd7f22d4c1 n parkind1
module ptrslb15
use parkind1,only:jpim
use parkind1,only:jprb
type::tptrslb15
integer(4)::nfldslb15
real(8),allocatable::rparsl15(:)
integer(4)::mslbuf15
integer(4)::mslb1ur05
integer(4)::mslb1vr05
integer(4)::mslb1zr05
integer(4)::mslb1wr05
integer(4)::mslb1ur005
integer(4)::mslb1vr005
integer(4)::mslb1zr005
integer(4)::mslb1wr005
integer(4)::mslb1ur95
integer(4)::mslb1vr95
integer(4)::mslb1zr95
integer(4)::mslb1u05
integer(4)::mslb1v05
integer(4)::mslb1z05
integer(4)::mslb1t05
integer(4)::mslb1c05
integer(4)::mslb1sp05
integer(4)::mslb1u95
integer(4)::mslb1v95
integer(4)::mslb1z95
integer(4)::mslb1t95
integer(4)::mslb1gfl95
integer(4)::mslb1c95
integer(4)::mslb1up95
integer(4)::mslb1vp95
integer(4)::mslb1zp95
integer(4)::mslb1tp95
integer(4)::mslb1gflp95
integer(4)::mslb1sp95
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(tptrslb15),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
