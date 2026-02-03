!mod$ v1 sum:bdf62e4a5bded414
!need$ fe3180dd7f22d4c1 n parkind1
!need$ 99f7ec52259902ea n yomhook
module yomslphy
use parkind1,only:jpim
use parkind1,only:jprb
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use yomhook,only:yomhook$yomhook$dr_hook_default8=>dr_hook_default8
type::tslphy
real(8),allocatable::rslwx(:)
integer(4)::nvtend
integer(4)::nvtend_vd
real(8),allocatable::savtend(:,:,:,:)
real(8),allocatable::savtend5(:,:,:,:)
real(8),allocatable::savtend_vd(:,:,:,:)
integer(4)::mu_savtend
integer(4)::mv_savtend
integer(4)::mt_savtend
integer(4)::mus_savtend
integer(4)::mvs_savtend
integer(4)::mts_savtend
integer(4)::mqs_savtend
integer(4)::mspptclear_savtend
integer(4)::mq_savtend
integer(4)::m_rad_sw
integer(4)::m_rad_lw
integer(4)::m_conv_mfd
integer(4)::m_conv_mfu
integer(4)::m_conv_ludeli(1_8:4_8)
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(tslphy),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
