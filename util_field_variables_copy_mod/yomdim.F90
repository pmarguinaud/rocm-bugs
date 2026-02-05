!mod$ v1 sum:ba6add5cecbbb90e
!need$ fe3180dd7f22d4c1 n parkind1
module yomdim
use parkind1,only:jpim
type::tdim
integer(4)::ndglg
integer(4)::ndgll
integer(4)::ndgnh
integer(4)::ndgsur
integer(4)::ndgsag
integer(4)::ndgsal
integer(4)::ndgsah
integer(4)::ndgsafph
integer(4)::ndgeng
integer(4)::ndgenl
integer(4)::ndgenh
integer(4)::ndgenfph
integer(4)::ndgung
integer(4)::ndguxg
integer(4)::ndgunl
integer(4)::ndguxl
integer(4)::ndlon
integer(4)::ndsur1
integer(4)::nstencilwide
integer(4)::ndlsur
integer(4)::ndlsm
integer(4)::ndlung
integer(4)::ndluxg
integer(4),allocatable::ndlunl(:,:)
integer(4),allocatable::ndluxl(:,:)
integer(4)::nproma
integer(4)::npromm
integer(4)::npromm9
integer(4)::npromnh
integer(4)::ngpblks
logical(4)::loptproma
integer(4)::nresol
integer(4)::nsmax
integer(4)::nmsmax
integer(4)::nvarmax
integer(4)::nsefre
integer(4)::nspecg
integer(4)::nspec2g
integer(4)::nspec
integer(4)::nspec2
integer(4)::nspec2mx
integer(4)::ncmax
integer(4)::nump
integer(4)::numcp
end type
end
