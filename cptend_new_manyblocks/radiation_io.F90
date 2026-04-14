!mod$ v1 sum:7266944e5e92cbf3
!need$ 03ed86a8aa341055 n yomlun_ifsaux
module radiation_io
use yomlun_ifsaux,only:nulout
use yomlun_ifsaux,only:nulerr
integer(4)::nulrad
contains
subroutine radiation_abort(text)
character(*,1),intent(in),optional::text
end
end
