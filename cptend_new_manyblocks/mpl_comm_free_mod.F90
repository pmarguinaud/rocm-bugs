!mod$ v1 sum:ac187730f1575a37
!need$ 2d97711792dc972b n ec_parkind
module mpl_comm_free_mod
use ec_parkind,only:jpim
private::jpim
contains
subroutine mpl_comm_free(kcomm,kerr,cdstring)
integer(4),intent(in)::kcomm
integer(4),intent(out)::kerr
character(*,1),intent(in),optional::cdstring
end
end
