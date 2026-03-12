!mod$ v1 sum:53043a6cfafbf68a
!need$ 0a82f5c089df032d n type_geometry
!need$ f1674ee58737d9c7 n yomlun
!need$ fe3180dd7f22d4c1 n parkind1
module geometry_mod
use parkind1,only:jpim
use parkind1,only:jprb
use type_geometry,only:geometry
use yomlun,only:nulout



integer(4),private::nusegeom

interface
subroutine abor1(cdtext)
character(*,1),intent(in)::cdtext
end
end interface

interface
subroutine abor1fl(cdfile,klinenum,cdtext)
character(*,1),intent(in)::cdfile
integer(4),intent(in)::klinenum
character(*,1),intent(in)::cdtext
end
end interface

interface
subroutine abor1_exception_handler()
end
end interface

interface
subroutine set_abor1_exception_handler() bind(c,name="set_abor1_exception_handler")
end
end interface
contains
subroutine geometry_clone(self,other)
type(geometry),intent(inout)::self
type(geometry),intent(inout)::other
end
subroutine geometry_delete(self)
type(geometry),intent(inout)::self
end
function geometry_same(self,other)
type(geometry),intent(in)::self
type(geometry),intent(in)::other
logical(4)::geometry_same
end
end
