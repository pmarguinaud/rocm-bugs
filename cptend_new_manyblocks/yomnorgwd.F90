!mod$ v1 sum:d40ba470a153ee40
!need$ fe3180dd7f22d4c1 n parkind1
module yomnorgwd
use parkind1,only:jpim
use parkind1,only:jprb
type::tnorgwd
character(4_4,1)::norgwd_scheme
real(8)::norgwd_prmax
real(8)::norgwd_dz
real(8)::norgwd_ptropo
integer(4)::norgwd_ntropo
real(8)::norgwd_ruwmax
real(8)::norgwd_sat
real(8)::norgwd_rdiss
real(8)::norgwd_deltat
real(8)::norgwd_kmin
real(8)::norgwd_kmax
real(8)::norgwd_cmin
real(8)::norgwd_cmax
real(8)::norgwd_plaunch
integer(4)::norgwd_nlaunch
real(8)::norgwd_pnoverdif
integer(4)::norgwd_nnoverdif
real(8)::norgwd_dzfron
real(8)::norgwd_gfron
real(8)::norgwd_gb
end type
end
