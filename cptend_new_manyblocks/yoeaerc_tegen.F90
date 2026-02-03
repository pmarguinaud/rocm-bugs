!mod$ v1 sum:8e6d6a9ab3aa095c
!need$ fe3180dd7f22d4c1 n parkind1
module yoeaerc_tegen
use parkind1,only:jpim
use parkind1,only:jprb
integer(4),parameter::nfdecso4dim=185_4
integer(4),parameter::nldecso4dim=210_4
integer(4),parameter::ishist=1850_4
integer(4),parameter::iehist=2100_4
integer(4),parameter::inlat=24_4
type::teaerc_tegen
real(8)::repaer=-1.79769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368e308_8
real(8),pointer::raerbc(:,:,:)=>NULL()
real(8),pointer::raeror(:,:,:)=>NULL()
real(8),pointer::raersd(:,:,:)=>NULL()
real(8),pointer::raerss(:,:,:)=>NULL()
real(8),pointer::raersu(:,:,:)=>NULL()
real(8),pointer::raerv(:,:,:)=>NULL()
real(8),pointer::rlatv(:)=>NULL()
real(8)::rtaebc(1_8:72_8,1_8:46_8)
real(8)::rtaeor(1_8:72_8,1_8:46_8)
real(8)::rtaesd(1_8:72_8,1_8:46_8)
real(8)::rtaess(1_8:72_8,1_8:46_8)
real(8)::rtaesu(1_8:72_8,1_8:46_8)
real(8)::rtaevo(1_8:46_8)
integer(4)::isyear=1850_4
integer(4)::ieyear=2100_4
logical(4)::is_initialised=.false._4
contains
procedure::setup=>setup_tegen
final::finalize_tegen
end type
intrinsic::huge
intrinsic::null
real(8),allocatable,private,target::raerbc_storage(:,:,:)
real(8),allocatable,private,target::raeror_storage(:,:,:)
real(8),allocatable,private,target::raersd_storage(:,:,:)
real(8),allocatable,private,target::raerss_storage(:,:,:)
real(8),allocatable,private,target::raersu_storage(:,:,:)
real(8),allocatable,private,target::raerv_storage(:,:,:)
real(8),allocatable,private,target::rlatv_storage(:)
integer(4)::smart_tegen_pointer_copies
character(260_4,1)::clistso4
character(260_4,1)::fileso4(185_8:210_8)
logical(4)::lvolcdata
character(260_4,1)::cvolcdata
interface
subroutine abor1(cdtext)
character(*,1),intent(in)::cdtext
end
end interface
interface
subroutine abor1fl(cdfile,klinenum,cdtext)
character(*,1),intent(in)::cdfile
integer(4),intent(in)::klinenum
character(*,1),intent(in)::cdtext
end
end interface
interface
subroutine abor1_exception_handler()
end
end interface
interface
subroutine set_abor1_exception_handler() bind(c,name="set_abor1_exception_handler")
end
end interface
contains
subroutine setup_tegen(self,lcall_suecaec)
class(teaerc_tegen),intent(inout)::self
logical(4),intent(in)::lcall_suecaec
end
subroutine finalize_tegen(self)
type(teaerc_tegen),intent(inout)::self
end
subroutine suecaec(ydeaerc_tegen)
type(teaerc_tegen),intent(inout)::ydeaerc_tegen
end
end
