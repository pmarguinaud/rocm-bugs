!mod$ v1 sum:f06c0c9b3bfbe536
!need$ fe3180dd7f22d4c1 n parkind1
module yomprad
use parkind1,only:jpim
use parkind1,only:jprb
use parkind1,only:jprd
type::radiation_grid_struct
integer(4)::nresol_id
integer(4)::ngptot
integer(4)::ngptotg
integer(4)::ngptotmx
integer(4)::nspec2
integer(4)::nsmax
integer(4)::nptrfloff
integer(4)::nump
integer(4)::ndlon
integer(4)::ndgsal
integer(4)::ndgenl
integer(4)::ndgsah
integer(4)::ndgenh
integer(4)::ndglg
integer(4)::ndgsag
integer(4)::ndgeng
integer(4)::ndlsur
integer(4)::nfrstloff
integer(4)::ndsur1
integer(4)::ndgsur
integer(4)::myfrstactlat
integer(4)::mylstactlat
integer(4),allocatable::nrgri(:)
integer(4),allocatable::nloeng(:)
integer(4),allocatable::nptrfrstlat(:)
integer(4),allocatable::nfrstlat(:)
integer(4),allocatable::nlstlat(:)
integer(4),allocatable::myms(:)
integer(4),allocatable::nasm0(:)
integer(4),allocatable::nsta(:,:)
integer(4),allocatable::nonl(:,:)
real(8),allocatable::gelam(:)
real(8),allocatable::gelat(:)
real(8),allocatable::geclo(:)
real(8),allocatable::geslo(:)
real(8),allocatable::rmu(:)
real(8),allocatable::rsqm2(:)
real(8),allocatable::rlatig(:)
real(8),allocatable::rlati(:)
real(8),allocatable::gemu(:)
real(8),allocatable::ripi(:,:)
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(radiation_grid_struct),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
