!mod$ v1 sum:bab84b9799db0d1e
!need$ 2d97711792dc972b n ec_parkind
module mpl_bytes_mod
use ec_parkind,only:jpim
use ec_parkind,only:jpib
use ec_parkind,only:jprm
use ec_parkind,only:jprd
private::jpim
private::jpib
private::jprm
private::jprd
private::mpl_bytes_im
private::mpl_bytes_ib
private::mpl_bytes_rm
private::mpl_bytes_rd
interface mpl_bytes
procedure::mpl_bytes_im
procedure::mpl_bytes_ib
procedure::mpl_bytes_rm
procedure::mpl_bytes_rd
end interface
contains
function mpl_bytes_im(kvar)
integer(4),intent(in)::kvar
integer(4)::mpl_bytes_im
end
function mpl_bytes_ib(kvar)
integer(8),intent(in)::kvar
integer(4)::mpl_bytes_ib
end
function mpl_bytes_rm(pvar)
real(4),intent(in)::pvar
integer(4)::mpl_bytes_rm
end
function mpl_bytes_rd(pvar)
real(8),intent(in)::pvar
integer(4)::mpl_bytes_rd
end
end
