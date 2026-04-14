!mod$ v1 sum:064b79fddf87aa85
!need$ 92cf179e3ceaeca6 n field_5rd_module
!need$ 43c3dae9ca37e961 n field_4rd_module
!need$ fe3180dd7f22d4c1 n parkind1
module field_5rd_factory_module
use parkind1,only:jprm
use parkind1,only:jprd
use parkind1,only:jpim
use parkind1,only:jplm
use field_5rd_module,only:field_5rd
use field_5rd_module,only:field_5rd_wrapper
use field_5rd_module,only:field_5rd_owner
use field_5rd_module,only:field_5rd_ptr
use field_5rd_module,only:field_5rd_view
use field_4rd_module,only:field_4rd
use field_4rd_module,only:field_4rd_wrapper
use field_4rd_module,only:field_4rd_owner
use field_4rd_module,only:field_4rd_ptr
use field_4rd_module,only:field_4rd_view
private::jprm
private::jprd
private::jpim
private::jplm
private::field_5rd
private::field_5rd_wrapper
private::field_5rd_owner
private::field_5rd_ptr
private::field_5rd_view
private::field_4rd
private::field_4rd_wrapper
private::field_4rd_owner
private::field_4rd_ptr
private::field_4rd_view
private::field_5rd_new_gang_wrapper
interface
module subroutine field_5rd_new_gang_wrapper(field_ptr,children,lbounds,persistent,data,sync_on_final,initialized)
class(field_5rd),pointer::field_ptr
type(field_4rd_ptr),allocatable::children(:)
integer(4),intent(in),optional::lbounds(1_8:5_8)
logical(4),intent(in),optional::persistent
real(8),intent(in),target::data(:,:,:,:,:)
logical(4),intent(in),optional::sync_on_final
logical(4),intent(in),optional::initialized
end
end interface
private::field_5rd_new_gang_owner
interface
module subroutine field_5rd_new_gang_owner(field_ptr,children,ubounds,lbounds,persistent,delayed,init_value)
class(field_5rd),pointer::field_ptr
type(field_4rd_ptr),allocatable::children(:)
integer(4),intent(in)::ubounds(1_8:5_8)
integer(4),intent(in),optional::lbounds(1_8:5_8)
logical(4),intent(in),optional::persistent
logical(4),intent(in),optional::delayed
real(8),intent(in),optional::init_value
end
end interface
private::field_5rd_resize
interface
module subroutine field_5rd_resize(field_ptr,ubounds,lbounds,persistent)
class(field_5rd),pointer::field_ptr
integer(4),intent(in)::ubounds(1_8:5_8)
integer(4),intent(in),optional::lbounds(1_8:5_8)
logical(4),intent(in),optional::persistent
end
end interface
private::field_5rd_new_owner
private::field_5rd_new_wrapper
private::field_5rd_delete
interface field_new
procedure::field_5rd_new_owner
procedure::field_5rd_new_wrapper
procedure::field_5rd_new_gang_wrapper
procedure::field_5rd_new_gang_owner
end interface
interface field_delete
procedure::field_5rd_delete
end interface
interface field_resize
procedure::field_5rd_resize
end interface
contains
subroutine field_5rd_new_owner(field_ptr,ubounds,lbounds,persistent,delayed,init_value,pinned,map_devptr,pooled)
class(field_5rd),pointer::field_ptr
integer(4),intent(in)::ubounds(1_8:5_8)
integer(4),intent(in),optional::lbounds(1_8:5_8)
logical(4),intent(in),optional::persistent
logical(4),intent(in),optional::delayed
real(8),intent(in),optional::init_value
logical(4),intent(in),optional::pinned
logical(4),intent(in),optional::map_devptr
logical(4),intent(in),optional::pooled
end
subroutine field_5rd_new_wrapper(field_ptr,lbounds,persistent,data,map_devptr,sync_on_final,initialized)
class(field_5rd),pointer::field_ptr
integer(4),intent(in),optional::lbounds(1_8:5_8)
logical(4),intent(in),optional::persistent
real(8),intent(in),target::data(:,:,:,:,:)
logical(4),intent(in),optional::map_devptr
logical(4),intent(in),optional::sync_on_final
logical(4),intent(in),optional::initialized
end
subroutine field_5rd_delete(field_ptr)
class(field_5rd),pointer::field_ptr
end
end
