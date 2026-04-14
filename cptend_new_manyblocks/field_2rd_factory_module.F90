!mod$ v1 sum:61a1fce3ad703d64
!need$ 3371fc789a9fd59a n field_2rd_module
!need$ fe3180dd7f22d4c1 n parkind1
module field_2rd_factory_module
use parkind1,only:jprm
use parkind1,only:jprd
use parkind1,only:jpim
use parkind1,only:jplm
use field_2rd_module,only:field_2rd
use field_2rd_module,only:field_2rd_wrapper
use field_2rd_module,only:field_2rd_owner
use field_2rd_module,only:field_2rd_ptr
use field_2rd_module,only:field_2rd_view
private::jprm
private::jprd
private::jpim
private::jplm
private::field_2rd
private::field_2rd_wrapper
private::field_2rd_owner
private::field_2rd_ptr
private::field_2rd_view
private::field_2rd_resize
interface
module subroutine field_2rd_resize(field_ptr,ubounds,lbounds,persistent)
class(field_2rd),pointer::field_ptr
integer(4),intent(in)::ubounds(1_8:2_8)
integer(4),intent(in),optional::lbounds(1_8:2_8)
logical(4),intent(in),optional::persistent
end
end interface
private::field_2rd_new_owner
private::field_2rd_new_wrapper
private::field_2rd_delete
interface field_new
procedure::field_2rd_new_owner
procedure::field_2rd_new_wrapper
end interface
interface field_delete
procedure::field_2rd_delete
end interface
interface field_resize
procedure::field_2rd_resize
end interface
contains
subroutine field_2rd_new_owner(field_ptr,ubounds,lbounds,persistent,delayed,init_value,pinned,map_devptr,pooled)
class(field_2rd),pointer::field_ptr
integer(4),intent(in)::ubounds(1_8:2_8)
integer(4),intent(in),optional::lbounds(1_8:2_8)
logical(4),intent(in),optional::persistent
logical(4),intent(in),optional::delayed
real(8),intent(in),optional::init_value
logical(4),intent(in),optional::pinned
logical(4),intent(in),optional::map_devptr
logical(4),intent(in),optional::pooled
end
subroutine field_2rd_new_wrapper(field_ptr,lbounds,persistent,data,map_devptr,sync_on_final,initialized)
class(field_2rd),pointer::field_ptr
integer(4),intent(in),optional::lbounds(1_8:2_8)
logical(4),intent(in),optional::persistent
real(8),intent(in),target::data(:,:)
logical(4),intent(in),optional::map_devptr
logical(4),intent(in),optional::sync_on_final
logical(4),intent(in),optional::initialized
end
subroutine field_2rd_delete(field_ptr)
class(field_2rd),pointer::field_ptr
end
end
