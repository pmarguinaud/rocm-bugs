!mod$ v1 sum:8aa6f85d5dc47dc5
!need$ fe3180dd7f22d4c1 n parkind1
module yoaiop
use parkind1,only:jpim
use parkind1,only:jprb
type::taiop
integer(4)::naeromr
integer(4)::nwavsw
integer(4)::nwavlw
integer(4)::nrelhu
real(8),allocatable::rswame(:,:,:)
real(8),allocatable::rlwame(:,:,:)
real(8),allocatable::rswaas(:,:,:)
real(8),allocatable::rlwaas(:,:,:)
real(8),allocatable::rswass(:,:,:)
real(8),allocatable::rlwass(:,:,:)
real(8),allocatable::rswwl(:)
real(8),allocatable::rlwwl(:)
real(8),allocatable::rsunfr(:)
real(8),allocatable::rrh(:)
real(8),allocatable::rlwwei(:)
end type
end
