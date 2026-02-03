!mod$ v1 sum:ee3d24c14126f68a
!need$ fe3180dd7f22d4c1 n parkind1
module yomvsleta
use parkind1,only:jpim
use parkind1,only:jprb
type::tvsleta
real(8),allocatable::vcuico(:,:)
real(8),allocatable::vcuicoh(:,:)
real(8),allocatable::vsld(:,:)
real(8),allocatable::vsldh(:,:)
real(8),allocatable::vsldw(:,:,:)
real(8),allocatable::vsldwh(:,:,:)
real(8),allocatable::vslvf(:,:,:)
real(8),allocatable::vslvfh(:,:,:)
real(8),allocatable::gamma_weno(:,:)
real(8),allocatable::vrdetar(:)
integer(4)::nrlevx=1_4
real(8)::vrlevx=1._8
integer(4),allocatable::nvautf(:)
integer(4),allocatable::nvauth(:)
end type
end
