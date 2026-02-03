!mod$ v1 sum:4d30ff1138228d67
!need$ fe3180dd7f22d4c1 n parkind1
module yemdyn
use parkind1,only:jprb
type::tedyn
real(8),allocatable::rdivore(:,:)
real(8),allocatable::rdidive(:,:)
real(8),allocatable::rdite(:,:)
real(8),allocatable::rdigfle(:,:,:)
real(8),allocatable::rdipde(:,:)
real(8),allocatable::rdivde(:,:)
real(8),allocatable::rdispe(:)
real(8),allocatable::rdsvore(:,:)
real(8),allocatable::rdsdive(:,:)
real(8),allocatable::rdsvde(:,:)
real(8),allocatable::refilv(:,:)
real(8),allocatable::refild(:,:)
logical(4)::lesidg
real(8)::rthresidg
real(8)::xmald
real(8)::tcdis
end type
end
