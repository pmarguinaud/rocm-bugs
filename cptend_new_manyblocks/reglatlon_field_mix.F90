!mod$ v1 sum:46ab9d6be1de2d65
!need$ f1674ee58737d9c7 n yomlun
!need$ fe3180dd7f22d4c1 n parkind1
!need$ 99f7ec52259902ea n yomhook
module reglatlon_field_mix
use parkind1,only:jpim
use parkind1,only:jprb
use yomlun,only:nulout
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use yomhook,only:yomhook$yomhook$dr_hook_default8=>dr_hook_default8
type::reglatlon_field
integer(4)::nlat
integer(4)::nlon
real(8)::dlat
real(8)::dlon
real(8),pointer::pfld(:,:)=>NULL()
real(8),pointer::plat(:)=>NULL()
real(8),pointer::psin(:)=>NULL()
real(8),pointer::plon(:)=>NULL()
end type
intrinsic::null
contains
subroutine create_reglatlon_field(ydfll,knlat,knlon,plat1,platn,plon1,ldew,cdname)
type(reglatlon_field),intent(out)::ydfll
integer(4),intent(in),optional::knlat
integer(4),intent(in),optional::knlon
real(8),intent(in),optional::plat1
real(8),intent(in),optional::platn
real(8),intent(in),optional::plon1
logical(4),intent(in),optional::ldew
character(*,1),intent(in),optional::cdname
end
subroutine intpol_reglatlon(pintval,ydfll,plat,plon,psin)
real(8),intent(out)::pintval
type(reglatlon_field),intent(in)::ydfll
real(8),intent(in),optional::plat
real(8),intent(in)::plon
real(8),intent(in),optional::psin
end
subroutine stats_reglatlon(cdtext,ydfll)
character(*,1),intent(in)::cdtext
type(reglatlon_field),intent(in)::ydfll
end
function xcap(px)
real(8),intent(in)::px
real(8)::xcap
end
function xmod(px)
real(8),intent(in)::px
real(8)::xmod
end
end
