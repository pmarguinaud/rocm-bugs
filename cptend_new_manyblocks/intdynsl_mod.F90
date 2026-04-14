!mod$ v1 sum:1b45cf014c5706b0
!need$ 5f747a7ce3877eca n yomdyn
!need$ 99f7ec52259902ea n yomhook
!need$ fe3180dd7f22d4c1 n parkind1
module intdynsl_mod
use parkind1,only:jpim
use parkind1,only:jprb
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use yomdyn,only:jpsldimk
use yomhook,only:yomhook$yomhook$dr_hook_default8=>dr_hook_default8
type::tlscaw
integer(4)::m_wdlo
integer(4)::m_wdlat
integer(4)::m_wdver
integer(4)::m_wdlomad
integer(4)::m_wdlamad
integer(4)::m_wdvermad
integer(4)::ndim
contains
procedure,pass::print=>print_tlscaw_configuration
end type
type::trscaw
integer(4)::m_wclo(1_8:4_8)
integer(4)::m_wcla(1_8:4_8)
integer(4)::m_wvintw
integer(4)::m_wclosld(1_8:4_8)
integer(4)::m_wclasld(1_8:4_8)
integer(4)::m_wcloslt
integer(4)::m_wclaslt
integer(4)::m_wvintwsld
integer(4)::m_wvintwslt
integer(4)::m_wvintwslvf
integer(4)::m_wclomad(1_8:4_8)
integer(4)::m_wclamad(1_8:4_8)
integer(4)::m_wvintwmad
integer(4)::m_wvintws
integer(4)::m_wvderw
integer(4)::m_whvw
integer(4)::m_cw
integer(4)::ndim
contains
procedure,pass::print=>print_trscaw_configuration
end type
type::tsco
integer(4)::m_cosco
integer(4)::m_sinco
integer(4)::m_sinla
integer(4)::m_cophi
integer(4)::ndim
contains
procedure,pass::print=>print_tsco_configuration
end type
type::tcco
integer(4)::m_rlon
integer(4)::m_rlat
integer(4)::m_rqx
integer(4)::m_rqy
integer(4)::ndim
contains
procedure,pass::print=>print_tcco_configuration
end type
contains
subroutine suintdynsl(yddyn,yddyna,ygfl,ydtlscaw,ydtlscawh,ydtrscaw,ydtrscawh,ydtsco,ydtcco)
use yomdyn,only:tdyn
use yomdyna,only:tdyna
use yom_ygfl,only:type_gfld
type(tdyn),intent(inout)::yddyn
type(tdyna),intent(inout)::yddyna
type(type_gfld),intent(inout)::ygfl
type(tlscaw),intent(inout)::ydtlscaw
type(tlscaw),intent(inout)::ydtlscawh
type(trscaw),intent(inout)::ydtrscaw
type(trscaw),intent(inout)::ydtrscawh
type(tsco),intent(inout)::ydtsco
type(tcco),intent(inout)::ydtcco
end
subroutine suptr_tlscaw(yd)
type(tlscaw),intent(out)::yd
end
subroutine suptr_trscaw(yddyn,yddyna,ksldimk,ldvintws,ldhvi,yd)
use yomdyn,only:tdyn
use yomdyna,only:tdyna
type(tdyn),intent(inout)::yddyn
type(tdyna),intent(inout)::yddyna
integer(4),intent(in)::ksldimk
logical(4),intent(in)::ldvintws
logical(4),intent(in)::ldhvi
type(trscaw),intent(out)::yd
end
subroutine suptr_tsco(yd)
type(tsco),intent(out)::yd
end
subroutine suptr_tcco(yd)
type(tcco),intent(out)::yd
end
subroutine print_tlscaw_configuration(self,kdepth,koutno,cname)
class(tlscaw),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
character(*,1),intent(in)::cname
end
subroutine print_trscaw_configuration(self,kdepth,koutno,cname)
class(trscaw),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
character(*,1),intent(in)::cname
end
subroutine print_tsco_configuration(self,kdepth,koutno)
class(tsco),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
subroutine print_tcco_configuration(self,kdepth,koutno)
class(tcco),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
