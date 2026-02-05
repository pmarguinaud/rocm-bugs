!mod$ v1 sum:96763907cf3dcd42
!need$ 067ed0d526f97e16 n field_5rm_module
!need$ 88545750c7382932 n field_4rm_module
!need$ fe3180dd7f22d4c1 n parkind1
module field_5rm_factory_module
use parkind1,only:jprm
use parkind1,only:jprd
use parkind1,only:jpim
use parkind1,only:jplm
use field_5rm_module,only:field_5rm
use field_5rm_module,only:field_5rm_wrapper
use field_5rm_module,only:field_5rm_owner
use field_5rm_module,only:field_5rm_ptr
use field_5rm_module,only:field_5rm_view
use field_4rm_module,only:field_4rm
use field_4rm_module,only:field_4rm_wrapper
use field_4rm_module,only:field_4rm_owner
use field_4rm_module,only:field_4rm_ptr
use field_4rm_module,only:field_4rm_view
private::jprm
private::jprd
private::jpim
private::jplm
private::field_5rm
private::field_5rm_wrapper
private::field_5rm_owner
private::field_5rm_ptr
private::field_5rm_view
private::field_4rm
private::field_4rm_wrapper
private::field_4rm_owner
private::field_4rm_ptr
private::field_4rm_view
private::field_5rm_new_gang_wrapper
interface
module subroutine field_5rm_new_gang_wrapper(field_ptr,children,lbounds,persistent,data,sync_on_final,initialized)
class(field_5rm),pointer::field_ptr
type(field_4rm_ptr),allocatable::children(:)
integer(4),intent(in),optional::lbounds(1_8:5_8)
logical(4),intent(in),optional::persistent
real(4),intent(in),target::data(:,:,:,:,:)
logical(4),intent(in),optional::sync_on_final
logical(4),intent(in),optional::initialized
end
end interface
private::field_5rm_new_gang_owner
interface
module subroutine field_5rm_new_gang_owner(field_ptr,children,ubounds,lbounds,persistent,delayed,init_value)
class(field_5rm),pointer::field_ptr
type(field_4rm_ptr),allocatable::children(:)
integer(4),intent(in)::ubounds(1_8:5_8)
integer(4),intent(in),optional::lbounds(1_8:5_8)
logical(4),intent(in),optional::persistent
logical(4),intent(in),optional::delayed
real(4),intent(in),optional::init_value
end
end interface
private::field_5rm_resize
interface
module subroutine field_5rm_resize(field_ptr,ubounds,lbounds,persistent)
class(field_5rm),pointer::field_ptr
integer(4),intent(in)::ubounds(1_8:5_8)
integer(4),intent(in),optional::lbounds(1_8:5_8)
logical(4),intent(in),optional::persistent
end
end interface
private::field_5rm_new_owner
private::field_5rm_new_wrapper
private::field_5rm_delete
interface field_new
procedure::field_5rm_new_owner
procedure::field_5rm_new_wrapper
procedure::field_5rm_new_gang_wrapper
procedure::field_5rm_new_gang_owner
end interface
interface field_delete
procedure::field_5rm_delete
end interface
interface field_resize
procedure::field_5rm_resize
end interface
contains
subroutine field_5rm_new_owner(field_ptr,ubounds,lbounds,persistent,delayed,init_value,pinned,map_devptr,pooled)
class(field_5rm),pointer::field_ptr
integer(4),intent(in)::ubounds(1_8:5_8)
integer(4),intent(in),optional::lbounds(1_8:5_8)
logical(4),intent(in),optional::persistent
logical(4),intent(in),optional::delayed
real(4),intent(in),optional::init_value
logical(4),intent(in),optional::pinned
logical(4),intent(in),optional::map_devptr
logical(4),intent(in),optional::pooled
end
subroutine field_5rm_new_wrapper(field_ptr,lbounds,persistent,data,map_devptr,sync_on_final,initialized)
class(field_5rm),pointer::field_ptr
integer(4),intent(in),optional::lbounds(1_8:5_8)
logical(4),intent(in),optional::persistent
real(4),intent(in),target::data(:,:,:,:,:)
logical(4),intent(in),optional::map_devptr
logical(4),intent(in),optional::sync_on_final
logical(4),intent(in),optional::initialized
end
subroutine field_5rm_delete(field_ptr)
class(field_5rm),pointer::field_ptr
end
end
