!mod$ v1 sum:15a9af6ad75951f1
!need$ fe3180dd7f22d4c1 n parkind1
module field_statistics_module
use parkind1,only:jpib
use parkind1,only:jpim
type::field_statistics_type
integer(8)::memory_host_cur=0_8
integer(8)::memory_host_max=0_8
integer(8)::memory_device_cur=0_8
integer(8)::memory_device_max=0_8
integer(8)::nfields_cur=0_8
integer(8)::nfields_max=0_8
end type
logical(4),save::field_statistics_enable
type(field_statistics_type),save::field_statistics
contains
subroutine field_statistics_new()
end
subroutine field_statistics_delete()
end
subroutine field_statistics_host_allocate(ksize)
integer(8),intent(in)::ksize
end
subroutine field_statistics_host_deallocate(ksize)
integer(8),intent(in)::ksize
end
subroutine field_statistics_device_allocate(ksize)
integer(8),intent(in)::ksize
end
subroutine field_statistics_device_deallocate(ksize)
integer(8),intent(in)::ksize
end
end
