!mod$ v1 sum:c2572c532afb234a
!need$ fe3180dd7f22d4c1 n parkind1
!need$ 59957945691da886 n deallocate_if_associated_mod
!need$ 99f7ec52259902ea n yomhook
module yomcsgeom
use parkind1,only:jpim
use parkind1,only:jprb
use parkind1,only:jprd
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use deallocate_if_associated_mod,only:deallocate_if_associated
use deallocate_if_associated_mod,only:deallocate_if_associated_mod$deallocate_if_associated_mod$deallocate_if_associated_real_1d_double=>deallocate_if_associated_real_1d_double
use deallocate_if_associated_mod,only:deallocate_if_associated_mod$deallocate_if_associated_mod$deallocate_if_associated_real_2d_double=>deallocate_if_associated_real_2d_double
use yomhook,only:yomhook$yomhook$dr_hook_default8=>dr_hook_default8
private::deallocate_if_associated_mod$deallocate_if_associated_mod$deallocate_if_associated_real_1d_double
private::deallocate_if_associated_mod$deallocate_if_associated_mod$deallocate_if_associated_real_2d_double
type::tcsgeom
real(8),pointer::rcolon(:)=>NULL()
real(8),pointer::rsilon(:)=>NULL()
real(8),pointer::rindx(:)=>NULL()
real(8),pointer::rindy(:)=>NULL()
real(8),pointer::ratath(:)=>NULL()
real(8),pointer::ratatx(:)=>NULL()
contains
procedure::alloc=>alloccsgeom
procedure::assoc=>assoccsgeom
end type
intrinsic::null
type::tcsgeom_blocked
real(8),pointer::rcolon(:,:)=>NULL()
real(8),pointer::rsilon(:,:)=>NULL()
real(8),pointer::rindx(:,:)=>NULL()
real(8),pointer::rindy(:,:)=>NULL()
real(8),pointer::ratath(:,:)=>NULL()
real(8),pointer::ratatx(:,:)=>NULL()
contains
procedure::alloc=>alloccsgeomb
procedure::copy=>copycsgeomb
end type
contains
subroutine alloccsgeom(self,kgp,lrplane,lslag)
class(tcsgeom),intent(inout)::self
integer(4),intent(in)::kgp
logical(4),intent(in)::lrplane
logical(4),intent(in)::lslag
end
subroutine assoccsgeom(self,src,koff,kgp,lrplane,lslag)
class(tcsgeom),intent(inout)::self
type(tcsgeom),intent(in),target::src
integer(4),intent(in)::koff
integer(4),intent(in)::kgp
logical(4),intent(in)::lrplane
logical(4),intent(in)::lslag
end
subroutine alloccsgeomb(self,kproma,kgpblks)
class(tcsgeom_blocked),intent(inout)::self
integer(4),intent(in)::kproma
integer(4),intent(in)::kgpblks
end
subroutine copycsgeomb(self,src,kbl,koff,kgp)
class(tcsgeom_blocked),intent(inout)::self
type(tcsgeom),intent(in),target::src
integer(4),intent(in)::kbl
integer(4),intent(in)::koff
integer(4),intent(in)::kgp
end
subroutine deallo_tcsgeom(ydcsgeom)
type(tcsgeom),intent(inout),pointer::ydcsgeom(:)
end
subroutine deallo_tcsgeom_nb(ydcsgeom)
type(tcsgeom),intent(inout)::ydcsgeom
end
subroutine deallo_tcsgeom_b(ydcsgeom)
type(tcsgeom_blocked),intent(inout)::ydcsgeom
end
end
