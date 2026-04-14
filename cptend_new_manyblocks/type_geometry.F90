!mod$ v1 sum:0a82f5c089df032d
!need$ 3a9e3c33bffe2f70 n yomvert
!need$ 1fac36ab6b4d506b n yomsta
!need$ 35f3805ce305dbe4 n yomlap
!need$ 9c973fa421212665 n yomleg
!need$ ba6add5cecbbb90e n yomdim
!need$ b007b1bb59a28caa n yomdimv
!need$ 6f51624aed48acc5 n yommp
!need$ eb368aca6ff894b8 n yomgem
!need$ 384b95b7baee80e1 n type_spgeom
!need$ 0b314fe0762ddffb n yemdim
!need$ 29645464f09af77f n yemgeo
!need$ 2435784d4e6288f7 n yemmp
!need$ 5aaa78e3a4cb3720 n yemlap
!need$ 052b3a39ed9501d8 n yemgsl
!need$ c50df2be6ef4a4ed n yemlbc_geo
!need$ f50382efa5ad568f n yomcver
!need$ 6b9c4ab02eb25578 n yomgeomvars
!need$ c2572c532afb234a n yomcsgeom
!need$ a960a0d3ac94e8ba n yomgsgeom
!need$ acf4d2c744944caa n yomorog
module type_geometry
use yomvert,only:tvab
use yomvert,only:tveta
use yomvert,only:tvfe
use yomvert,only:tvertical_geom
use yomsta,only:tsta
use yomlap,only:tlap
use yomleg,only:tcsgleg
use yomdim,only:tdim
use yomdimv,only:tdimv
use yommp,only:tmp
use yomgem,only:tgem
use yomcsgeom,only:tcsgeom
use yomcsgeom,only:tcsgeom_blocked
use yomgsgeom,only:tgsgeom
use yomgsgeom,only:tgsgeom_blocked
use yomorog,only:torog
use yomorog,only:torog_blocked
use type_spgeom,only:tspgeom
use yemdim,only:tedim
use yemgeo,only:tegeo
use yemmp,only:temmp
use yemlap,only:tlep
use yemgsl,only:tegsl
use yemlbc_geo,only:telbc_geo
use yomcver,only:tcver
use yomgeomvars,only:tgeomvars
private::tvab
private::tveta
private::tvfe
private::tvertical_geom
private::tsta
private::tlap
private::tcsgleg
private::tdim
private::tdimv
private::tmp
private::tgem
private::tcsgeom
private::tcsgeom_blocked
private::tgsgeom
private::tgsgeom_blocked
private::torog
private::torog_blocked
private::tspgeom
private::tedim
private::tegeo
private::temmp
private::tlep
private::tegsl
private::telbc_geo
private::tcver
private::tgeomvars
type::geometry
logical(4)::lnhx_geom
type(tvertical_geom)::yrvert_geom
type(tsta)::yrsta
type(tlap)::yrlap
type(tcsgleg)::yrcsgleg
type(tdim)::yrdim
type(tdimv)::yrdimv
type(tmp)::yrmp
type(tgem)::yrgem
type(tcsgeom)::yrcsgeom_nb
type(tcsgeom),pointer::yrcsgeom(:)=>NULL()
type(tcsgeom_blocked)::yrcsgeom_b
type(tgsgeom)::yrgsgeom_nb
type(tgsgeom),pointer::yrgsgeom(:)=>NULL()
type(tgsgeom_blocked)::yrgsgeom_b
logical(4)::ad_geom=.false._4
type(tcsgeom)::yrcsgeomad_nb
type(tcsgeom),pointer::yrcsgeomad(:)=>NULL()
type(tgsgeom)::yrgsgeomad_nb
type(tgsgeom),pointer::yrgsgeomad(:)=>NULL()
type(torog),allocatable::yrorog(:)
type(torog_blocked)::yrorog_b
type(tspgeom)::yspgeom
type(tvab)::yvabio
type(tedim)::yredim
type(tegeo)::yregeo
type(temmp)::yremp
type(tlep)::yrelap
type(tegsl)::yregsl
type(telbc_geo),pointer::yrelbc_geo=>NULL()
type(tgeomvars)::yrgeomvars
contains
final::geometry_final
end type
intrinsic::null
private::null
private::geometry_final
contains
subroutine geometry_final(this)
type(geometry)::this
end
end
