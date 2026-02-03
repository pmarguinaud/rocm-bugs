!mod$ v1 sum:44579edf3f1a9194
!need$ fe3180dd7f22d4c1 n parkind1
module yomdphy
use parkind1,only:jpim
type::tdphy
integer(4)::ncss
integer(4)::nvxp
integer(4)::nvxp2
integer(4)::ncxp
integer(4)::ncsi
integer(4)::ncom
integer(4)::ncsnec
integer(4)::ntiles
integer(4)::nvextr
integer(4)::nvextrdi
integer(4)::nvextrrad
integer(4)::nvextrdyn
integer(4)::nvxtr2
integer(4)::nvecout
integer(4)::ncextr
integer(4)::nvclis
integer(4)::ntoz1d
integer(4)::ntoz2d
integer(4)::ntoz3d
integer(4)::ntssg
logical(4)::ltprof
logical(4)::ldirclsmod
logical(4)::ldirsicmod
contains
procedure,pass::print=>print_configuration
end type
type(tdphy),pointer::yrdphy
intrinsic::null
contains
subroutine print_configuration(self,kdepth,koutno)
class(tdphy),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
