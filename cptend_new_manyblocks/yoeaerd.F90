!mod$ v1 sum:c4c2dcd908da92b4
!need$ fe3180dd7f22d4c1 n parkind1
module yoeaerd
use parkind1,only:jprb
type::teaerd
real(8),allocatable::cvdaes(:)
real(8),allocatable::cvdael(:)
real(8),allocatable::cvdaeu(:)
real(8),allocatable::cvdaed(:)
real(8)::raesc(1_8:66_8)
real(8)::raess(1_8:55_8)
real(8)::raelc(1_8:66_8)
real(8)::raels(1_8:55_8)
real(8)::raeuc(1_8:66_8)
real(8)::raeus(1_8:55_8)
real(8)::raedc(1_8:66_8)
real(8)::raeds(1_8:55_8)
real(8)::rcaeops
real(8)::rcaeopl
real(8)::rcaeopu
real(8)::rcaeopd
real(8)::rctrbga
real(8)::rcvobga
real(8)::rcstbga
real(8)::rctrpt
real(8)::rcaeadk(1_8:3_8)
real(8)::rcaeadm
real(8)::rcaeros
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(teaerd),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
