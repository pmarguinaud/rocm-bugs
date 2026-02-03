!mod$ v1 sum:c8f5aa41695edd16
!need$ fe3180dd7f22d4c1 n parkind1
module ptrgppc
use parkind1,only:jpim
type::tptrgppc
integer(4)::nfgppc
integer(4)::mgppc
integer(4)::mgppcf_u
integer(4)::mgppcf_v
integer(4)::mgppcf_t
integer(4)::mgppcf_spd
integer(4)::mgppcf_svd
integer(4)::mgppcf_sp
integer(4)::mgppcf_cp
integer(4)::mgppcf_nhx
integer(4)::mgppcf_up
integer(4)::mgppcf_vp
integer(4)::mgppcf_tp
integer(4)::mgppcf_spptclearp
integer(4)::mgppcf_gflp
integer(4)::mgppcf_bbc
integer(4)::mgppcf_phi
integer(4)::mgppcf_gws
integer(4)::mgppc5
integer(4)::mgppcf_u5
integer(4)::mgppcf_v5
integer(4)::mgppcf_t5
integer(4)::mgppcf_spd5
integer(4)::mgppcf_svd5
integer(4)::mgppcf_sp5
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(tptrgppc),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
