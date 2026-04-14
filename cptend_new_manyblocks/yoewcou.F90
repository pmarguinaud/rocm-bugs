!mod$ v1 sum:be88108cb913e406
!need$ fe3180dd7f22d4c1 n parkind1
module yoewcou
use parkind1,only:jpim
use parkind1,only:jprb
type::tewcou
integer(4)::natmflx
integer(4)::ngaussw
integer(4)::nlonw
integer(4)::nlatw
integer(4)::nlon1w
integer(4)::nlat1w
integer(4)::nnorxw
integer(4)::nstpw
integer(4)::ngrib_handle_for_wam
real(8)::rsoutw
real(8)::rnortw
real(8)::rdegrew
real(8)::rmissw
logical(4)::lwcou
logical(4)::lwcou2w
logical(4)::lwcounorms
logical(4)::lwcur
logical(4)::lwcournw
logical(4)::lwcouhmf
logical(4)::lwstokes
logical(4)::lwflux
character(14_8,1)::cbegdat
integer(4),allocatable::mask_wave_in(:)
integer(4),allocatable::mask_wave_out(:,:)
logical(4)::lwvin_mask_not_set
logical(4)::lwvout_mask_not_set
logical(4)::lwvin_uninitialised
integer(4)::mwvin_sendtot
integer(4)::mwvin_recvtot
integer(4),allocatable::mwvin_sendcnt(:)
integer(4),allocatable::mwvin_recvcnt(:)
integer(4),allocatable::mwvin_sendoff(:)
integer(4),allocatable::mwvin_recvoff(:)
integer(4),allocatable::mwvin_sendbuf(:)
integer(4),allocatable::mwvin_recvbuf(:)
integer(4),allocatable::mwvin_sendind(:)
logical(4)::lwfrstime
logical(4)::lwinit
integer(4)::nadv_wave
integer(4)::nwv_w2iwght
integer(4),allocatable::iwv_lon(:,:)
integer(4),allocatable::iwv_lat(:,:)
real(8),allocatable::wv_w2iwght(:,:)
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(tewcou),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
