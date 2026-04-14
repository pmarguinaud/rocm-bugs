!mod$ v1 sum:a194ebbb84bc784a
!need$ 2d97711792dc972b n ec_parkind
module mpl_comm_compare_mod
use ec_parkind,only:jpim
private::jpim
contains
subroutine mpl_comm_compare(kcomm1,kcomm2,kres,kerr,cdstring)
integer(4),intent(in)::kcomm1
integer(4),intent(in)::kcomm2
integer(4),intent(out)::kres
integer(4),intent(out)::kerr
character(*,1),intent(in),optional::cdstring
end
end
