!mod$ v1 sum:eb368aca6ff894b8
!need$ fe3180dd7f22d4c1 n parkind1
module yomgem
use parkind1,only:jpim
use parkind1,only:jprb
type::tgem
integer(4)::ngptot
integer(4)::ngptot_cap
integer(4)::ngptotmx
integer(4)::ngptotg
integer(4),allocatable::ngptotl(:,:)
real(8)::rdelxn
real(8)::slhdp
real(8)::rmucen
real(8)::rlocen
real(8)::rstret
integer(4)::nsttyp
integer(4)::nhtyp
real(8)::rnlginc
real(8)::r4jp
real(8)::rc2p1
real(8)::rc2m1
real(8)::rcor0
real(8)::rcor1
integer(4),allocatable::nloen(:)
integer(4),allocatable::nloeng(:)
integer(4),allocatable::nmen(:)
integer(4),allocatable::nmeng(:)
integer(4),allocatable::ndglu(:)
integer(4),allocatable::nstagp(:)
integer(4),allocatable::ntstagp(:)
end type
end
