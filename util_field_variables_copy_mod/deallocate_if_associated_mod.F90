!mod$ v1 sum:59957945691da886
!need$ 99f7ec52259902ea n yomhook
!need$ 2d97711792dc972b n ec_parkind
module deallocate_if_associated_mod
use ec_parkind,only:jpim
use ec_parkind,only:jprm
use ec_parkind,only:jprd
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use yomhook,only:yomhook$yomhook$dr_hook_default8=>dr_hook_default8
private::jpim
private::jprm
private::jprd
private::lhook
private::dr_hook
private::jphook
private::deallocate_if_associated_real_1d_single
private::deallocate_if_associated_real_1d_double
private::deallocate_if_associated_real_2d_single
private::deallocate_if_associated_real_2d_double
private::deallocate_if_associated_real_3d_single
private::deallocate_if_associated_real_3d_double
private::deallocate_if_associated_real_4d_single
private::deallocate_if_associated_real_4d_double
private::deallocate_if_associated_real_5d_single
private::deallocate_if_associated_real_5d_double
private::deallocate_if_associated_integer_1d
private::deallocate_if_associated_integer_2d
private::deallocate_if_associated_integer_3d
private::deallocate_if_associated_logical_1d
private::deallocate_if_associated_logical_2d
interface deallocate_if_associated
procedure::deallocate_if_associated_real_1d_single
procedure::deallocate_if_associated_real_1d_double
procedure::deallocate_if_associated_real_2d_single
procedure::deallocate_if_associated_real_2d_double
procedure::deallocate_if_associated_real_3d_single
procedure::deallocate_if_associated_real_3d_double
procedure::deallocate_if_associated_real_4d_single
procedure::deallocate_if_associated_real_4d_double
procedure::deallocate_if_associated_real_5d_single
procedure::deallocate_if_associated_real_5d_double
procedure::deallocate_if_associated_integer_1d
procedure::deallocate_if_associated_integer_2d
procedure::deallocate_if_associated_integer_3d
procedure::deallocate_if_associated_logical_1d
procedure::deallocate_if_associated_logical_2d
end interface
contains
subroutine deallocate_if_associated_real_1d_single(zobj)
real(4),pointer::zobj(:)
end
subroutine deallocate_if_associated_real_1d_double(zobj)
real(8),pointer::zobj(:)
end
subroutine deallocate_if_associated_real_2d_single(zobj)
real(4),pointer::zobj(:,:)
end
subroutine deallocate_if_associated_real_2d_double(zobj)
real(8),pointer::zobj(:,:)
end
subroutine deallocate_if_associated_real_3d_single(zobj)
real(4),pointer::zobj(:,:,:)
end
subroutine deallocate_if_associated_real_3d_double(zobj)
real(8),pointer::zobj(:,:,:)
end
subroutine deallocate_if_associated_real_4d_single(zobj)
real(4),pointer::zobj(:,:,:,:)
end
subroutine deallocate_if_associated_real_4d_double(zobj)
real(8),pointer::zobj(:,:,:,:)
end
subroutine deallocate_if_associated_real_5d_single(zobj)
real(4),pointer::zobj(:,:,:,:,:)
end
subroutine deallocate_if_associated_real_5d_double(zobj)
real(8),pointer::zobj(:,:,:,:,:)
end
subroutine deallocate_if_associated_integer_1d(kobj)
integer(4),pointer::kobj(:)
end
subroutine deallocate_if_associated_integer_2d(kobj)
integer(4),pointer::kobj(:,:)
end
subroutine deallocate_if_associated_integer_3d(kobj)
integer(4),pointer::kobj(:,:,:)
end
subroutine deallocate_if_associated_logical_1d(ldobj)
logical(4),pointer::ldobj(:)
end
subroutine deallocate_if_associated_logical_2d(ldobj)
logical(4),pointer::ldobj(:,:)
end
end
