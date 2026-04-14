!mod$ v1 sum:fededf0d548dd27a
!need$ 594d9db76b447338 n mpl_message_mod
!need$ 14c904233f628ad5 n mpl_data_module
!need$ 2d97711792dc972b n ec_parkind
module mpl_tour_table_mod
use ec_parkind,only:jpim
use mpl_data_module,only:mpl_numproc
use mpl_data_module,only:mpl_rank
use mpl_data_module,only:mpl_errunit
use mpl_message_mod,only:mpl_message
private::jpim
private::mpl_numproc
private::mpl_rank
private::mpl_errunit
private::mpl_message
contains
subroutine mpl_tour_table(kopponent,keven)
integer(4),intent(out)::kopponent(:)
integer(4),intent(out),optional::keven
end
end
