!mod$ v1 sum:08008bbe1a586c4a
!need$ 0cfd081e6a400a24 n type_geometry
!need$ f1674ee58737d9c7 n yomlun
!need$ fe3180dd7f22d4c1 n parkind1
module geometry_mod
use parkind1,only:jpim
use parkind1,only:jprb
use type_geometry,only:geometry
use yomlun,only:nulout
private::jpim
private::jprb
private::nulout
integer(4),private::nusegeom
private::abor1
interface
subroutine abor1(cdtext)
character(*,1),intent(in)::cdtext
end
end interface
private::abor1fl
interface
subroutine abor1fl(cdfile,klinenum,cdtext)
character(*,1),intent(in)::cdfile
integer(4),intent(in)::klinenum
character(*,1),intent(in)::cdtext
end
end interface
private::abor1_exception_handler
interface
subroutine abor1_exception_handler()
end
end interface
private::set_abor1_exception_handler
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
