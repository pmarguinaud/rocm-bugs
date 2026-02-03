!mod$ v1 sum:9b429cfd3b7d4518
!need$ fe3180dd7f22d4c1 n parkind1
module eint_mod
use parkind1,only:jpim
use parkind1,only:jprb
private::jpim
private::jprb
type::sl_struct
character(2_4,1)::cver="XX"
integer(4)::nslgroup=0_4
integer(4),allocatable::nslsta(:)
integer(4),allocatable::nslonl(:)
integer(4),allocatable::nsloff(:)
integer(4),allocatable::nslptswest(:)
integer(4),allocatable::nslptseast(:)
integer(4),allocatable::nslext(:,:)
logical(4),allocatable::lcomplat(:)
integer(4),allocatable::nlatglo(:)
real(8),allocatable::dist1gp(:)
integer(4),allocatable::nslsendpos(:)
integer(4),allocatable::nslrecvpos(:)
integer(4),allocatable::nslsendptr(:)
integer(4),allocatable::nslrecvptr(:)
integer(4),allocatable::nslcomm(:)
logical(4),allocatable::lslcomm(:,:)
integer(4)::naslb1=0_4
integer(4)::naslmask=0_4
integer(4)::naslb1_true=0_4
integer(4)::nslpad=0_4
logical(4)::lslt_arrays_init=.false._4
logical(4)::lslondem=.false._4
integer(4)::nunusedhalo=999999_4
real(8)::distunusedhalo=9.99999e5_8
integer(4),allocatable::mask_sl1(:)
integer(4),allocatable::mask_sl2(:)
integer(4),allocatable::mask_sl2t(:,:)
integer(4),allocatable::mask_sld(:)
integer(4)::nslprocs=0_4
integer(4)::nslrpt=0_4
integer(4)::nslspt=0_4
integer(4)::nslwiden=0_4
integer(4)::nslwides=0_4
integer(4)::nslwidee=0_4
integer(4)::nslwidew=0_4
integer(4)::nslwide=0_4
integer(4),allocatable::nslmap(:,:)
integer(4),allocatable::nslcore(:)
logical(4),allocatable::lslcore(:)
integer(4),allocatable::mask_sltot(:)
integer(4)::ndglg=0_4
integer(4)::ndlon=0_4
integer(4)::ndgsag=0_4
integer(4)::ndgeng=0_4
integer(4)::ndgsal=0_4
integer(4)::ndgenl=0_4
integer(4)::ndgsah=0_4
integer(4)::ndgenh=0_4
integer(4)::ngptot=0_4
integer(4)::ndguxl=0_4
integer(4)::ndlung=0_4
integer(4)::ndluxg=0_4
integer(4)::ndgung=0_4
integer(4)::ndguxg=0_4
integer(4)::ndsur1=0_4
integer(4)::ndlsur=0_4
integer(4)::ndgsur=0_4
integer(4)::nptrfloff=0_4
integer(4)::nfrstloff=0_4
integer(4)::myfrstactlat=0_4
integer(4)::mylstactlat=0_4
integer(4),allocatable::nloeng(:)
integer(4)::nproc=0_4
integer(4),allocatable::nstalat(:)
integer(4),allocatable::naddr(:,:)
integer(4),allocatable::nofflev(:,:,:)
real(8),allocatable::rlsdepi(:)
integer(4),allocatable::nslextpolfista(:)
integer(4),allocatable::nslextpolijpta(:)
integer(4),allocatable::nslextpolipta(:)
contains
procedure,pass::print=>print_configuration
end type
private::print_configuration
private::unused_halo_stats1
contains
subroutine print_configuration(self,kdepth,koutno,cname)
class(sl_struct),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
character(*,1),intent(in)::cname
end
subroutine deallo_sl_struct(ydsl)
type(sl_struct),intent(inout)::ydsl
end
subroutine unused_halo_stats(ydsl,ydad,ydri,ydro)
type(sl_struct),intent(inout)::ydsl
type(sl_struct),intent(inout)::ydad
type(sl_struct),intent(inout)::ydri
type(sl_struct),intent(inout)::ydro
end
subroutine unused_halo_stats1(ydsl)
type(sl_struct),intent(in)::ydsl
end
subroutine slhalo_debug(ydsl,kind)
type(sl_struct),intent(in)::ydsl
integer(4),intent(in)::kind
end
end
