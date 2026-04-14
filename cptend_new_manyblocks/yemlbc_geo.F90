!mod$ v1 sum:c50df2be6ef4a4ed
!need$ fe3180dd7f22d4c1 n parkind1
module yemlbc_geo
use parkind1,only:jpim
type::telbc_geo
integer(4),allocatable::nind_list(:,:)
integer(4),allocatable::nind_len(:)
integer(4)::ncplblks
integer(4),allocatable::mptrcplblk(:)
end type
end
