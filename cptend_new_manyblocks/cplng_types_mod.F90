!mod$ v1 sum:b22783aabb9739da
!need$ fe3180dd7f22d4c1 n parkind1
!need$ dc990105529d6033 n parkind_ocean
module cplng_types_mod
use parkind1,only:jpim
use parkind_ocean,only:jpro
private::jpim
private::jpro
type::cplng_fld_type
integer(4),allocatable::id(:,:)
character(128_4,1)::name
integer(4)::type
integer(4)::inout
integer(4)::stage
integer(4)::num_lvl
integer(4)::num_cat
real(8),allocatable::d(:,:,:)
end type
end
