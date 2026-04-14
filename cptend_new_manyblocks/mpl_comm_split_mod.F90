!mod$ v1 sum:0ca10cf20cb7c206
!need$ 2d97711792dc972b n ec_parkind
!need$ 436476a209f4d978 n mpl_mpif
module mpl_comm_split_mod
use ec_parkind,only:jpim
use mpl_mpif,only:mpi_undefined
private::jpim
private::mpi_undefined
contains
subroutine mpl_comm_split(kcomm,kcolor,kkey,knewcomm,kerror,cdstring)
integer(4),intent(in)::kcomm
integer(4),intent(in)::kcolor
integer(4),intent(in)::kkey
integer(4),intent(out)::knewcomm
integer(4),intent(out)::kerror
character(*,1),intent(in),optional::cdstring
end
end
