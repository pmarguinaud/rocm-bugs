!mod$ v1 sum:dd3b36233b09d6ed
!need$ fe3180dd7f22d4c1 n parkind1
module yoeneur
use parkind1,only:jpim
use parkind1,only:jprb
type::teneur
integer(4)::ncou
integer(4)::nbr
integer(4)::nbneurmax
integer(4)::klev_nn
integer(4),allocatable::nbneur(:,:)
real(8),allocatable::wneln(:,:,:,:)
real(8),allocatable::entreemoy(:,:)
real(8),allocatable::rapin(:,:)
real(8),allocatable::sortiemoy(:,:)
real(8),allocatable::rapout(:,:)
real(8),allocatable::pdfsdx(:,:,:,:)
real(8),allocatable::aam_nn(:)
real(8),allocatable::bbm_nn(:)
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(teneur),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
