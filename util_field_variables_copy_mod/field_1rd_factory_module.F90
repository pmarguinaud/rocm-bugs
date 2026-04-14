!mod$ v1 sum:863fa7c06d7b267d
!need$ d84aa233290e5aaa n field_1rd_module
!need$ fe3180dd7f22d4c1 n parkind1
module field_1rd_factory_module
use parkind1,only:jprm
use parkind1,only:jprd
use parkind1,only:jpim
use parkind1,only:jplm
use field_1rd_module,only:field_1rd
use field_1rd_module,only:field_1rd_wrapper
use field_1rd_module,only:field_1rd_owner
use field_1rd_module,only:field_1rd_ptr
private::jprm
private::jprd
private::jpim
private::jplm
private::field_1rd
private::field_1rd_wrapper
private::field_1rd_owner
private::field_1rd_ptr
private::field_1rd_resize
interface
module subroutine field_1rd_resize(field_ptr,ubounds,lbounds,persistent)
class(field_1rd),pointer::field_ptr
integer(4),intent(in)::ubounds(1_8:1_8)
integer(4),intent(in),optional::lbounds(1_8:1_8)
logical(4),intent(in),optional::persistent
end
end interface
private::field_1rd_new_owner
private::field_1rd_new_wrapper
private::field_1rd_delete
interface field_new
procedure::field_1rd_new_owner
procedure::field_1rd_new_wrapper
end interface
interface field_delete
procedure::field_1rd_delete
end interface
interface field_resize
procedure::field_1rd_resize
end interface
contains
subroutine field_1rd_new_owner(field_ptr,ubounds,lbounds,persistent,delayed,init_value,pinned,map_devptr,pooled)
class(field_1rd),pointer::field_ptr
integer(4),intent(in)::ubounds(1_8:1_8)
integer(4),intent(in),optional::lbounds(1_8:1_8)
logical(4),intent(in),optional::persistent
logical(4),intent(in),optional::delayed
real(8),intent(in),optional::init_value
logical(4),intent(in),optional::pinned
logical(4),intent(in),optional::map_devptr
logical(4),intent(in),optional::pooled
end
subroutine field_1rd_new_wrapper(field_ptr,lbounds,persistent,data,map_devptr,sync_on_final,initialized)
class(field_1rd),pointer::field_ptr
integer(4),intent(in),optional::lbounds(1_8:1_8)
logical(4),intent(in),optional::persistent
real(8),intent(in),target::data(:)
logical(4),intent(in),optional::map_devptr
logical(4),intent(in),optional::sync_on_final
logical(4),intent(in),optional::initialized
end
subroutine field_1rd_delete(field_ptr)
class(field_1rd),pointer::field_ptr
end
end
