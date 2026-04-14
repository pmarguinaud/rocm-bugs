!mod$ v1 sum:5f27705ce69c90f2
!need$ 5c11f35e490e29f4 n field_3rm_module
!need$ 77190e76633747ac n field_2rm_module
!need$ fe3180dd7f22d4c1 n parkind1
module field_3rm_factory_module
use parkind1,only:jprm
use parkind1,only:jprd
use parkind1,only:jpim
use parkind1,only:jplm
use field_3rm_module,only:field_3rm
use field_3rm_module,only:field_3rm_wrapper
use field_3rm_module,only:field_3rm_owner
use field_3rm_module,only:field_3rm_ptr
use field_3rm_module,only:field_3rm_view
use field_2rm_module,only:field_2rm
use field_2rm_module,only:field_2rm_wrapper
use field_2rm_module,only:field_2rm_owner
use field_2rm_module,only:field_2rm_ptr
use field_2rm_module,only:field_2rm_view
private::jprm
private::jprd
private::jpim
private::jplm
private::field_3rm
private::field_3rm_wrapper
private::field_3rm_owner
private::field_3rm_ptr
private::field_3rm_view
private::field_2rm
private::field_2rm_wrapper
private::field_2rm_owner
private::field_2rm_ptr
private::field_2rm_view
private::field_3rm_new_gang_wrapper
interface
module subroutine field_3rm_new_gang_wrapper(field_ptr,children,lbounds,persistent,data,sync_on_final,initialized)
class(field_3rm),pointer::field_ptr
type(field_2rm_ptr),allocatable::children(:)
integer(4),intent(in),optional::lbounds(1_8:3_8)
logical(4),intent(in),optional::persistent
real(4),intent(in),target::data(:,:,:)
logical(4),intent(in),optional::sync_on_final
logical(4),intent(in),optional::initialized
end
end interface
private::field_3rm_new_gang_owner
interface
module subroutine field_3rm_new_gang_owner(field_ptr,children,ubounds,lbounds,persistent,delayed,init_value)
class(field_3rm),pointer::field_ptr
type(field_2rm_ptr),allocatable::children(:)
integer(4),intent(in)::ubounds(1_8:3_8)
integer(4),intent(in),optional::lbounds(1_8:3_8)
logical(4),intent(in),optional::persistent
logical(4),intent(in),optional::delayed
real(4),intent(in),optional::init_value
end
end interface
private::field_3rm_resize
interface
module subroutine field_3rm_resize(field_ptr,ubounds,lbounds,persistent)
class(field_3rm),pointer::field_ptr
integer(4),intent(in)::ubounds(1_8:3_8)
integer(4),intent(in),optional::lbounds(1_8:3_8)
logical(4),intent(in),optional::persistent
end
end interface
private::field_3rm_new_owner
private::field_3rm_new_wrapper
private::field_3rm_delete
interface field_new
procedure::field_3rm_new_owner
procedure::field_3rm_new_wrapper
procedure::field_3rm_new_gang_wrapper
procedure::field_3rm_new_gang_owner
end interface
interface field_delete
procedure::field_3rm_delete
end interface
interface field_resize
procedure::field_3rm_resize
end interface
contains
subroutine field_3rm_new_owner(field_ptr,ubounds,lbounds,persistent,delayed,init_value,pinned,map_devptr,pooled)
class(field_3rm),pointer::field_ptr
integer(4),intent(in)::ubounds(1_8:3_8)
integer(4),intent(in),optional::lbounds(1_8:3_8)
logical(4),intent(in),optional::persistent
logical(4),intent(in),optional::delayed
real(4),intent(in),optional::init_value
logical(4),intent(in),optional::pinned
logical(4),intent(in),optional::map_devptr
logical(4),intent(in),optional::pooled
end
subroutine field_3rm_new_wrapper(field_ptr,lbounds,persistent,data,map_devptr,sync_on_final,initialized)
class(field_3rm),pointer::field_ptr
integer(4),intent(in),optional::lbounds(1_8:3_8)
logical(4),intent(in),optional::persistent
real(4),intent(in),target::data(:,:,:)
logical(4),intent(in),optional::map_devptr
logical(4),intent(in),optional::sync_on_final
logical(4),intent(in),optional::initialized
end
subroutine field_3rm_delete(field_ptr)
class(field_3rm),pointer::field_ptr
end
end
