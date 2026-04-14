!mod$ v1 sum:8788285e5d203360
!need$ fe3180dd7f22d4c1 n parkind1
module yomdfi
use parkind1,only:jpim
use parkind1,only:jprb
real(8),allocatable::hwopf(:,:)
real(8),allocatable::hwopfa(:,:)
real(8),allocatable::hwf0(:)
real(8),allocatable::hwfa0(:)
integer(4)::ntpdfi
integer(4)::nedfi
integer(4)::nstdfi
integer(4)::nstdfia
integer(4)::noffsetdfi
real(8)::taus
real(8)::tauc
real(8)::rtdfi
real(8)::rtdfia
real(8)::rdfis
logical(4)::ladifh
end
