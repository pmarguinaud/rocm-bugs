!mod$ v1 sum:384b95b7baee80e1
!need$ fe3180dd7f22d4c1 n parkind1
module type_spgeom
use parkind1,only:jpim
use parkind1,only:jprb
private::jpim
private::jprb
type::tspgeom
real(8),allocatable::gmr(:,:)
real(8),allocatable::scgmap(:,:)
real(8)::escgmap(1_8:3_8)
contains
final::tspgeom_final
end type
private::tspgeom_final
contains
subroutine tspgeom_final(this)
type(tspgeom)::this
end
end
