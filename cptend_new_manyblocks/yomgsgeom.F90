!mod$ v1 sum:a960a0d3ac94e8ba
!need$ fe3180dd7f22d4c1 n parkind1
!need$ 59957945691da886 n deallocate_if_associated_mod
!need$ 99f7ec52259902ea n yomhook
module yomgsgeom
use parkind1,only:jpim
use parkind1,only:jprb
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use deallocate_if_associated_mod,only:deallocate_if_associated
use deallocate_if_associated_mod,only:deallocate_if_associated_mod$deallocate_if_associated_mod$deallocate_if_associated_integer_1d=>deallocate_if_associated_integer_1d
use deallocate_if_associated_mod,only:deallocate_if_associated_mod$deallocate_if_associated_mod$deallocate_if_associated_integer_2d=>deallocate_if_associated_integer_2d
use deallocate_if_associated_mod,only:deallocate_if_associated_mod$deallocate_if_associated_mod$deallocate_if_associated_real_1d_double=>deallocate_if_associated_real_1d_double
use deallocate_if_associated_mod,only:deallocate_if_associated_mod$deallocate_if_associated_mod$deallocate_if_associated_real_2d_double=>deallocate_if_associated_real_2d_double
use yomhook,only:yomhook$yomhook$dr_hook_default8=>dr_hook_default8
private::deallocate_if_associated_mod$deallocate_if_associated_mod$deallocate_if_associated_integer_1d
private::deallocate_if_associated_mod$deallocate_if_associated_mod$deallocate_if_associated_integer_2d
private::deallocate_if_associated_mod$deallocate_if_associated_mod$deallocate_if_associated_real_1d_double
private::deallocate_if_associated_mod$deallocate_if_associated_mod$deallocate_if_associated_real_2d_double
type::tgsgeom
real(8),contiguous,pointer::rcori(:)=>NULL()
real(8),contiguous,pointer::rcoric(:)=>NULL()
real(8),contiguous,pointer::gemu(:)=>NULL()
real(8),contiguous,pointer::gsqm2(:)=>NULL()
real(8),contiguous,pointer::gelam(:)=>NULL()
real(8),contiguous,pointer::gelat(:)=>NULL()
real(8),contiguous,pointer::geclo(:)=>NULL()
real(8),contiguous,pointer::geslo(:)=>NULL()
real(8),contiguous,pointer::gelamdeg(:)=>NULL()
real(8),contiguous,pointer::gelaminf(:)=>NULL()
real(8),contiguous,pointer::gelamsup(:)=>NULL()
real(8),contiguous,pointer::gexco(:)=>NULL()
real(8),contiguous,pointer::geyco(:)=>NULL()
real(8),contiguous,pointer::gezco(:)=>NULL()
real(8),contiguous,pointer::gm(:)=>NULL()
real(8),contiguous,pointer::gmappa(:)=>NULL()
real(8),contiguous,pointer::gomvrl(:)=>NULL()
real(8),contiguous,pointer::gomvrm(:)=>NULL()
real(8),contiguous,pointer::gnordl(:)=>NULL()
real(8),contiguous,pointer::gnordm(:)=>NULL()
real(8),contiguous,pointer::gnordlcl(:)=>NULL()
real(8),contiguous,pointer::gnordmcl(:)=>NULL()
real(8),contiguous,pointer::gnordmcm(:)=>NULL()
real(8),contiguous,pointer::gaw(:)=>NULL()
integer(4),contiguous,pointer::ngplat(:)=>NULL()
integer(4),contiguous,pointer::nuniquegp(:)=>NULL()
contains
procedure::alloc=>allocgsgeom
procedure::assoc=>assocgsgeom
end type
intrinsic::null
type::tgsgeom_blocked
real(8),contiguous,pointer::rcori(:,:)=>NULL()
real(8),contiguous,pointer::rcoric(:,:)=>NULL()
real(8),contiguous,pointer::gemu(:,:)=>NULL()
real(8),contiguous,pointer::gsqm2(:,:)=>NULL()
real(8),contiguous,pointer::gelam(:,:)=>NULL()
real(8),contiguous,pointer::gelat(:,:)=>NULL()
real(8),contiguous,pointer::geclo(:,:)=>NULL()
real(8),contiguous,pointer::geslo(:,:)=>NULL()
real(8),contiguous,pointer::gelamdeg(:,:)=>NULL()
real(8),contiguous,pointer::gelaminf(:,:)=>NULL()
real(8),contiguous,pointer::gelamsup(:,:)=>NULL()
real(8),contiguous,pointer::gexco(:,:)=>NULL()
real(8),contiguous,pointer::geyco(:,:)=>NULL()
real(8),contiguous,pointer::gezco(:,:)=>NULL()
real(8),contiguous,pointer::gm(:,:)=>NULL()
real(8),contiguous,pointer::gmappa(:,:)=>NULL()
real(8),contiguous,pointer::gomvrl(:,:)=>NULL()
real(8),contiguous,pointer::gomvrm(:,:)=>NULL()
real(8),contiguous,pointer::gnordl(:,:)=>NULL()
real(8),contiguous,pointer::gnordm(:,:)=>NULL()
real(8),contiguous,pointer::gnordlcl(:,:)=>NULL()
real(8),contiguous,pointer::gnordmcl(:,:)=>NULL()
real(8),contiguous,pointer::gnordmcm(:,:)=>NULL()
real(8),contiguous,pointer::gaw(:,:)=>NULL()
integer(4),contiguous,pointer::ngplat(:,:)=>NULL()
integer(4),contiguous,pointer::nuniquegp(:,:)=>NULL()
contains
procedure::alloc=>allocgsgeomb
procedure::copy=>copygsgeomb
end type
contains
subroutine allocgsgeom(self,kgp,lsldp_xyz,lad_geom)
class(tgsgeom),intent(inout)::self
integer(4),intent(in)::kgp
logical(4),intent(in)::lsldp_xyz
logical(4),intent(in)::lad_geom
end
subroutine assocgsgeom(self,src,koff,kgp,lsldp_xyz,lad_geom)
class(tgsgeom),intent(inout)::self
type(tgsgeom),intent(in),target::src
integer(4),intent(in)::koff
integer(4),intent(in)::kgp
logical(4),intent(in)::lsldp_xyz
logical(4),intent(in)::lad_geom
end
subroutine allocgsgeomb(self,kproma,kgpblks)
class(tgsgeom_blocked),intent(inout)::self
integer(4),intent(in)::kproma
integer(4),intent(in)::kgpblks
end
subroutine copygsgeomb(self,src,kbl,koff,kgp)
class(tgsgeom_blocked),intent(inout)::self
type(tgsgeom),intent(in),target::src
integer(4),intent(in)::kbl
integer(4),intent(in)::koff
integer(4),intent(in)::kgp
end
subroutine deallo_tgsgeom(ydgsgeom)
type(tgsgeom),intent(inout),pointer::ydgsgeom(:)
end
subroutine deallo_tgsgeom_nb(ydgsgeom)
type(tgsgeom),intent(inout)::ydgsgeom
end
subroutine deallo_tgsgeom_b(ydgsgeom)
type(tgsgeom_blocked),intent(inout)::ydgsgeom
end
end
