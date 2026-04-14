!mod$ v1 sum:99f7ec52259902ea
!need$ 2d97711792dc972b n ec_parkind
module yomhook
use ec_parkind,only:jpim
use ec_parkind,only:jprm
use ec_parkind,only:jprd
private::jpim
private::jprm
private::jprd
integer(4),parameter::jphook=8_4
intrinsic::selected_real_kind
logical(4)::lhook
interface
subroutine dr_hook_util(ldhook,cdname,kcase,pkey,cdfilename,ksizeinfo)
logical(4),intent(inout)::ldhook
character(*,1),intent(in)::cdname
integer(4),intent(in)::kcase
real(8),intent(inout)::pkey
character(*,1),intent(in)::cdfilename
integer(4),intent(in)::ksizeinfo
end
end interface
interface
subroutine dr_hook_util_multi(ldhook,cdname,kcase,pkey,kpkey,cdfilename,ksizeinfo)
logical(4),intent(in)::ldhook
character(*,1),intent(in)::cdname
integer(4),intent(in)::kcase
integer(4),intent(in)::kpkey
real(8),intent(inout)::pkey(1_8:int(kpkey,kind=8))
character(*,1),intent(in)::cdfilename
integer(4),intent(in)::ksizeinfo
end
end interface
interface
subroutine dr_hook_init()
end
end interface
interface
subroutine dr_hook_end()
end
end interface
interface dr_hook
procedure::dr_hook_default8
procedure::dr_hook_file
procedure::dr_hook_size
procedure::dr_hook_file_size
procedure::dr_hook_multi_default
procedure::dr_hook_multi_file
procedure::dr_hook_multi_size
procedure::dr_hook_multi_file_size
end interface
contains
subroutine dr_hook_default4(cdname,kswitch,pkey)
character(*,1),intent(in)::cdname
integer(4),intent(in)::kswitch
real(4),intent(inout)::pkey
end
subroutine dr_hook_default8(cdname,kswitch,pkey)
character(*,1),intent(in)::cdname
integer(4),intent(in)::kswitch
real(8),intent(inout)::pkey
end
subroutine dr_hook_multi_default(cdname,kswitch,pkey)
character(*,1),intent(in)::cdname
integer(4),intent(in)::kswitch
real(8),intent(inout)::pkey(:)
end
subroutine dr_hook_file(cdname,kswitch,pkey,cdfile)
character(*,1),intent(in)::cdname
integer(4),intent(in)::kswitch
real(8),intent(inout)::pkey
character(*,1),intent(in)::cdfile
end
subroutine dr_hook_multi_file(cdname,kswitch,pkey,cdfile)
character(*,1),intent(in)::cdname
integer(4),intent(in)::kswitch
real(8),intent(inout)::pkey(:)
character(*,1),intent(in)::cdfile
end
subroutine dr_hook_size(cdname,kswitch,pkey,ksizeinfo)
character(*,1),intent(in)::cdname
integer(4),intent(in)::kswitch
real(8),intent(inout)::pkey
integer(4),intent(in)::ksizeinfo
end
subroutine dr_hook_multi_size(cdname,kswitch,pkey,ksizeinfo)
character(*,1),intent(in)::cdname
integer(4),intent(in)::kswitch
real(8),intent(inout)::pkey(:)
integer(4),intent(in)::ksizeinfo
end
subroutine dr_hook_file_size(cdname,kswitch,pkey,cdfile,ksizeinfo)
character(*,1),intent(in)::cdname
integer(4),intent(in)::kswitch
real(8),intent(inout)::pkey
character(*,1),intent(in)::cdfile
integer(4),intent(in)::ksizeinfo
end
subroutine dr_hook_multi_file_size(cdname,kswitch,pkey,cdfile,ksizeinfo)
character(*,1),intent(in)::cdname
integer(4),intent(in)::kswitch
real(8),intent(inout)::pkey(:)
character(*,1),intent(in)::cdfile
integer(4),intent(in)::ksizeinfo
end
subroutine dr_hook_calltree(ktid)
integer(4),intent(in),optional::ktid
end
end
