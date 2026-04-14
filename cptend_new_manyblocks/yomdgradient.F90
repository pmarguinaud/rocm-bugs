!mod$ v1 sum:4e76599c795205f8
!need$ 99f7ec52259902ea n yomhook
module yomdgradient
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use yomhook,only:yomhook$yomhook$dr_hook_default8=>dr_hook_default8
type::tgradient_ptr
integer(4)::m_dudx
integer(4)::m_dudy
integer(4)::m_dvdx
integer(4)::m_dvdy
integer(4)::m_dtdx
integer(4)::m_dtdy
integer(4)::m_dqvdx
integer(4)::m_dqvdy
integer(4)::m_dqldx
integer(4)::m_dqldy
integer(4)::m_dqidx
integer(4)::m_dqidy
integer(4)::m_dqrdx
integer(4)::m_dqrdy
integer(4)::m_dqsdx
integer(4)::m_dqsdy
integer(4)::m_dqgdx
integer(4)::m_dqgdy
integer(4)::m_du2dx2
integer(4)::m_du2dy2
integer(4)::m_dv2dx2
integer(4)::m_dv2dy2
integer(4)::m_dudxz
integer(4)::m_dudyz
integer(4)::m_dvdxz
integer(4)::m_dvdyz
integer(4)::m_dwdxz
integer(4)::m_dwdyz
integer(4)::m_drvdxz
integer(4)::m_drvdyz
integer(4)::m_drldxz
integer(4)::m_drldyz
integer(4)::m_dridxz
integer(4)::m_dridyz
integer(4)::m_dthetadxz
integer(4)::m_dthetadyz
integer(4)::nfldcore
integer(4)::ndim
integer(4)::ndimleo
integer(4)::ndimgog
end type
type::tgradient
type(tgradient_ptr)::yptr
end type
contains
subroutine suptgrad(ldleo,ldgog,yd)
logical(4)::ldleo
logical(4)::ldgog
type(tgradient_ptr),intent(out)::yd
end
end
