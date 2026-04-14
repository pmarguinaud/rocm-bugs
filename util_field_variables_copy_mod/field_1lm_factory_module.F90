!mod$ v1 sum:b6b350069c07cbe0
!need$ 7622c7b4b21bb100 n field_1lm_module
!need$ fe3180dd7f22d4c1 n parkind1
module field_1lm_factory_module
use parkind1,only:jprm
use parkind1,only:jprd
use parkind1,only:jpim
use parkind1,only:jplm
use field_1lm_module,only:field_1lm
use field_1lm_module,only:field_1lm_wrapper
use field_1lm_module,only:field_1lm_owner
use field_1lm_module,only:field_1lm_ptr
private::jprm
private::jprd
private::jpim
private::jplm
private::field_1lm
private::field_1lm_wrapper
private::field_1lm_owner
private::field_1lm_ptr
private::field_1lm_resize
interface
module subroutine field_1lm_resize(field_ptr,ubounds,lbounds,persistent)
class(field_1lm),pointer::field_ptr
integer(4),intent(in)::ubounds(1_8:1_8)
integer(4),intent(in),optional::lbounds(1_8:1_8)
logical(4),intent(in),optional::persistent
end
end interface
private::field_1lm_new_owner
private::field_1lm_new_wrapper
private::field_1lm_delete
interface field_new
procedure::field_1lm_new_owner
procedure::field_1lm_new_wrapper
end interface
interface field_delete
procedure::field_1lm_delete
end interface
interface field_resize
procedure::field_1lm_resize
end interface
contains
subroutine field_1lm_new_owner(field_ptr,ubounds,lbounds,persistent,delayed,init_value,pinned,map_devptr,pooled)
class(field_1lm),pointer::field_ptr
integer(4),intent(in)::ubounds(1_8:1_8)
integer(4),intent(in),optional::lbounds(1_8:1_8)
logical(4),intent(in),optional::persistent
logical(4),intent(in),optional::delayed
logical(4),intent(in),optional::init_value
logical(4),intent(in),optional::pinned
logical(4),intent(in),optional::map_devptr
logical(4),intent(in),optional::pooled
end
subroutine field_1lm_new_wrapper(field_ptr,lbounds,persistent,data,map_devptr,sync_on_final,initialized)
class(field_1lm),pointer::field_ptr
integer(4),intent(in),optional::lbounds(1_8:1_8)
logical(4),intent(in),optional::persistent
logical(4),intent(in),target::data(:)
logical(4),intent(in),optional::map_devptr
logical(4),intent(in),optional::sync_on_final
logical(4),intent(in),optional::initialized
end
subroutine field_1lm_delete(field_ptr)
class(field_1lm),pointer::field_ptr
end
end
