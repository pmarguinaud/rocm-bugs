!mod$ v1 sum:cca5f10dff6b21ee
!need$ 2d97711792dc972b n ec_parkind
module yommplstats
use ec_parkind,only:jprd
use ec_parkind,only:jpim
private::jprd
private::jpim
logical(4)::lmplstats
real(8),allocatable::mplsendbytes(:)
real(8),allocatable::mplrecvbytes(:)
integer(4),allocatable::mplsendnum(:)
integer(4),allocatable::mplrecvnum(:)
end
