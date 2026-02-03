!mod$ v1 sum:f088110c4f20764d
!need$ ba7b01757a263dad n parphy
!need$ 63d2912c9610bc6f n yomcst
!need$ fe3180dd7f22d4c1 n parkind1
module yomedmf
use parkind1,only:jpim
use parkind1,only:jprb
use parphy,only:rkap
use yomcst,only:tcst
integer(4),parameter::idim=40_4
type::tedmf
real(8)::za(1_8:40_8)
real(8)::zbar(1_8:40_8)
real(8)::zx(1_8:40_8)
real(8)::zqlfac(1_8:40_8)
real(8)::zwl
real(8)::zwt
real(8)::zel
real(8)::zet
real(8)::zw2thresh
real(8)::zmfdrycon
real(8)::zmbclosurecon
real(8)::zrg
real(8)::zlat2cp
real(8)::zel2r
real(8)::zei2r
real(8)::zcons13
real(8)::zeps
real(8)::zc_0
real(8)::zc_d
real(8)::zc_n
real(8)::zwstf
real(8)::ztkemin
real(8)::zprandt
real(8)::zi2
real(8)::zalpha_n
real(8)::zalpha_c
real(8)::zb
real(8)::zc_m_max
real(8)::zrepust
contains
procedure::setup=>setup_yomedmf
end type
contains
subroutine setup_yomedmf(self,ydcst)
class(tedmf),intent(inout)::self
type(tcst),intent(in)::ydcst
end
end
