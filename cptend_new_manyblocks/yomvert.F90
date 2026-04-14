!mod$ v1 sum:3a9e3c33bffe2f70
!need$ f50382efa5ad568f n yomcver
!need$ 99f7ec52259902ea n yomhook
!need$ fe3180dd7f22d4c1 n parkind1
module yomvert
use parkind1,only:jpim
use parkind1,only:jprb
use parkind1,only:jprd
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use yomcver,only:tcver
real(8)::vp00
type::tvab
real(8)::toppres
real(8),allocatable::valh(:)
real(8),allocatable::vbh(:)
real(8),allocatable::vah(:)
real(8),allocatable::vc(:)
real(8),allocatable::vaf(:)
real(8),allocatable::vbf(:)
real(8),allocatable::vdela(:)
real(8),allocatable::vdelb(:)
real(8),allocatable::vrath(:)
real(8),allocatable::vratf(:)
contains
procedure::alloc=>allocvab
procedure::dealloc=>deallocvab
procedure::init=>initvab
end type
type::tveta
real(8),allocatable::vetah(:)
real(8),allocatable::vfe_etah(:)
real(8),allocatable::vetaf(:)
real(8),allocatable::vfe_etaf(:)
real(8),allocatable::vfe_rdetah(:)
real(8),allocatable::vdeta_ratio(:)
real(8),allocatable::vrdetah(:)
real(8),allocatable::vwei(:)
real(8),allocatable::veta_h(:)
real(8),allocatable::veta_laitriqm3d(:)
contains
procedure::alloc=>allocveta
procedure::dealloc=>deallocveta
end type
type::tvfe
real(8),allocatable::vfe_knot(:)
real(8),allocatable::rinte(:,:)
real(8),allocatable::rintbf00(:,:)
real(8),allocatable::rintbf11(:,:)
real(8),allocatable::rderi(:,:)
real(8),allocatable::rderb(:,:)
real(8),allocatable::rderbf00(:,:)
real(8),allocatable::rderbf01(:,:)
real(8),allocatable::rderbf10(:,:)
real(8),allocatable::rderbf11(:,:)
real(8),allocatable::rderbh00(:,:)
real(8),allocatable::rderbh01(:,:)
real(8),allocatable::rdderi(:,:)
real(8),allocatable::rdderbf01(:,:)
real(8),allocatable::rintgw(:,:)
real(8),allocatable::rdergw(:,:)
real(8),allocatable::rintg(:,:)
real(8),allocatable::rintc(:)
contains
procedure::alloc=>allocvfe
procedure::dealloc=>deallocvfe
end type
type::tvertical_geom
logical(4)::lnonhyd_geom
type(tvab)::yrvab
type(tveta)::yrveta
type(tvfe)::yrvfe
type(tcver)::yrcver
end type
private::allocvab
private::deallocvab
private::initvab
private::allocveta
private::deallocveta
private::allocvfe
private::deallocvfe
contains
subroutine alloc_copy_vertical_geom(this,from)
type(tvertical_geom),intent(inout)::this
type(tvertical_geom),intent(in)::from
end
subroutine dealloc_vertical_geom(this)
type(tvertical_geom),intent(inout)::this
end
subroutine allocvab(self,klev,lvertfe)
class(tvab),intent(inout)::self
integer(4),intent(in)::klev
logical(4),intent(in)::lvertfe
end
subroutine deallocvab(self,lvertfe)
class(tvab),intent(inout)::self
logical(4),intent(in)::lvertfe
end
subroutine initvab(self,klev,lvertfe,pvah,pvbh)
class(tvab),intent(inout)::self
integer(4),intent(in)::klev
logical(4),intent(in)::lvertfe
real(8),intent(in)::pvah(0_8:int(klev,kind=8))
real(8),intent(in)::pvbh(0_8:int(klev,kind=8))
end
subroutine allocveta(self,klev,lvertfe)
class(tveta),intent(inout)::self
integer(4),intent(in)::klev
logical(4),intent(in)::lvertfe
end
subroutine deallocveta(self,lvertfe)
class(tveta),intent(inout)::self
logical(4),intent(in)::lvertfe
end
subroutine allocvfe(self,cver,klev,lnhdyn)
class(tvfe),intent(inout)::self
type(tcver),intent(in)::cver
integer(4),intent(in)::klev
logical(4),intent(in)::lnhdyn
end
subroutine deallocvfe(self,cver,lnhdyn)
class(tvfe),intent(inout)::self
type(tcver),intent(in)::cver
logical(4),intent(in)::lnhdyn
end
end
