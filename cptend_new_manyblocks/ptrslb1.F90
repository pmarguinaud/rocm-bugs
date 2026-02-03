!mod$ v1 sum:182732bf3e7c7684
!need$ fe3180dd7f22d4c1 n parkind1
module ptrslb1
use parkind1,only:jpim
use parkind1,only:jprb
type::tptrslb1
integer(4)::nfldslb1
real(8),allocatable::rparsl1(:)
integer(4)::mslbuf1
integer(4)::mslb1u9
integer(4)::mslb1v9
integer(4)::mslb1z9
integer(4)::mslb1t9
integer(4)::mslb1gfl9
integer(4)::mslb1gflsp9
integer(4)::mslb1pd9
integer(4)::mslb1vd9
integer(4)::mslb1nhx9
integer(4)::mslb1ur0
integer(4)::mslb1vr0
integer(4)::mslb1zr0
integer(4)::mslb1wr0
integer(4)::mslb1ur00
integer(4)::mslb1vr00
integer(4)::mslb1zr00
integer(4)::mslb1wr00
integer(4)::mslb1wra
integer(4)::mslb1ur9
integer(4)::mslb1vr9
integer(4)::mslb1zr9
integer(4)::mslb1dbbc9
integer(4)::mslb1dphi9
integer(4)::mslb1gws9
integer(4)::mslb1u0
integer(4)::mslb1v0
integer(4)::mslb1z0
integer(4)::mslb1t0
integer(4)::mslb1pd0
integer(4)::mslb1vd0
integer(4)::mslb1c9
integer(4)::mslb1sp9
integer(4)::mslb1sp0
integer(4)::mslb1c0
integer(4)::mslb1up9
integer(4)::mslb1vp9
integer(4)::mslb1zp9
integer(4)::mslb1tp9
integer(4)::mslb1gflp9
integer(4)::mslb1spptclearp9
integer(4)::mslb1u9_si
integer(4)::mslb1v9_si
integer(4)::mslb1t9_si
integer(4)::mslb1pd9_si
integer(4)::mslb1vd9_si
integer(4)::mslb1c9_si
integer(4)::mslb1uf9
integer(4)::mslb1vf9
integer(4)::mslb1tf9
integer(4)::mslb1gflf9
integer(4)::mslb1vdf9
integer(4)::mslb1gflspf9
integer(4)::mslb1u9_nl
integer(4)::mslb1v9_nl
integer(4)::mslb1t9_nl
integer(4)::mslb1pd9_nl
integer(4)::mslb1vd9_nl
integer(4)::mslb1c9_nl
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(tptrslb1),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
