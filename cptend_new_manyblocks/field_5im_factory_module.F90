!mod$ v1 sum:e00fc09786a454a0
!need$ d90ec9adb230fb62 n field_5im_module
!need$ 2c85c7c00a56acdd n field_4im_module
!need$ fe3180dd7f22d4c1 n parkind1
module field_5im_factory_module
use parkind1,only:jprm
use parkind1,only:jprd
use parkind1,only:jpim
use parkind1,only:jplm
use field_5im_module,only:field_5im
use field_5im_module,only:field_5im_wrapper
use field_5im_module,only:field_5im_owner
use field_5im_module,only:field_5im_ptr
use field_5im_module,only:field_5im_view
use field_4im_module,only:field_4im
use field_4im_module,only:field_4im_wrapper
use field_4im_module,only:field_4im_owner
use field_4im_module,only:field_4im_ptr
use field_4im_module,only:field_4im_view
private::jprm
private::jprd
private::jpim
private::jplm
private::field_5im
private::field_5im_wrapper
private::field_5im_owner
private::field_5im_ptr
private::field_5im_view
private::field_4im
private::field_4im_wrapper
private::field_4im_owner
private::field_4im_ptr
private::field_4im_view
private::field_5im_new_gang_wrapper
interface
module subroutine field_5im_new_gang_wrapper(field_ptr,children,lbounds,persistent,data,sync_on_final,initialized)
class(field_5im),pointer::field_ptr
type(field_4im_ptr),allocatable::children(:)
integer(4),intent(in),optional::lbounds(1_8:5_8)
logical(4),intent(in),optional::persistent
integer(4),intent(in),target::data(:,:,:,:,:)
logical(4),intent(in),optional::sync_on_final
logical(4),intent(in),optional::initialized
end
end interface
private::field_5im_new_gang_owner
interface
module subroutine field_5im_new_gang_owner(field_ptr,children,ubounds,lbounds,persistent,delayed,init_value)
class(field_5im),pointer::field_ptr
type(field_4im_ptr),allocatable::children(:)
integer(4),intent(in)::ubounds(1_8:5_8)
integer(4),intent(in),optional::lbounds(1_8:5_8)
logical(4),intent(in),optional::persistent
logical(4),intent(in),optional::delayed
integer(4),intent(in),optional::init_value
end
end interface
private::field_5im_resize
interface
module subroutine field_5im_resize(field_ptr,ubounds,lbounds,persistent)
class(field_5im),pointer::field_ptr
integer(4),intent(in)::ubounds(1_8:5_8)
integer(4),intent(in),optional::lbounds(1_8:5_8)
logical(4),intent(in),optional::persistent
end
end interface
private::field_5im_new_owner
private::field_5im_new_wrapper
private::field_5im_delete
interface field_new
procedure::field_5im_new_owner
procedure::field_5im_new_wrapper
procedure::field_5im_new_gang_wrapper
procedure::field_5im_new_gang_owner
end interface
interface field_delete
procedure::field_5im_delete
end interface
interface field_resize
procedure::field_5im_resize
end interface
contains
subroutine field_5im_new_owner(field_ptr,ubounds,lbounds,persistent,delayed,init_value,pinned,map_devptr,pooled)
class(field_5im),pointer::field_ptr
integer(4),intent(in)::ubounds(1_8:5_8)
integer(4),intent(in),optional::lbounds(1_8:5_8)
logical(4),intent(in),optional::persistent
logical(4),intent(in),optional::delayed
integer(4),intent(in),optional::init_value
logical(4),intent(in),optional::pinned
logical(4),intent(in),optional::map_devptr
logical(4),intent(in),optional::pooled
end
subroutine field_5im_new_wrapper(field_ptr,lbounds,persistent,data,map_devptr,sync_on_final,initialized)
class(field_5im),pointer::field_ptr
integer(4),intent(in),optional::lbounds(1_8:5_8)
logical(4),intent(in),optional::persistent
integer(4),intent(in),target::data(:,:,:,:,:)
logical(4),intent(in),optional::map_devptr
logical(4),intent(in),optional::sync_on_final
logical(4),intent(in),optional::initialized
end
subroutine field_5im_delete(field_ptr)
class(field_5im),pointer::field_ptr
end
end
