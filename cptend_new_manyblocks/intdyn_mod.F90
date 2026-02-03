!mod$ v1 sum:fa74942710692fe7
!need$ 53043a6cfafbf68a n geometry_mod
!need$ 99f7ec52259902ea n yomhook
!need$ fe3180dd7f22d4c1 n parkind1
module intdyn_mod
use parkind1,only:jpim
use parkind1,only:jprb
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use geometry_mod,only:geometry
use yomhook,only:yomhook$yomhook$dr_hook_default8=>dr_hook_default8
type::txyb
integer(4)::m_delp
integer(4)::m_rdelp
integer(4)::m_lnpr
integer(4)::m_alph
integer(4)::m_rtgr
integer(4)::m_rpre
integer(4)::m_rpp
integer(4)::ndim
end type
type::txybder
integer(4)::m_lnprl
integer(4)::m_lnprm
integer(4)::m_alphl
integer(4)::m_alphm
integer(4)::m_alphpll
integer(4)::m_alphplm
integer(4)::m_coefd
integer(4)::m_coefa
integer(4)::m_coefapl
integer(4)::ndim
end type
type::trcp
integer(4)::m_cp
integer(4)::m_r
integer(4)::m_kap
integer(4)::ndim
end type
type::tcty
integer(4)::m_evel
integer(4)::m_vvel
integer(4)::m_psdiv
integer(4)::m_psdvbc
integer(4)::m_divdp
integer(4)::ndim
end type
type::thwind
integer(4)::m_uh
integer(4)::m_vh
integer(4)::m_wwi
integer(4)::ndim
end type
type::ttnd
integer(4)::m_tndu
integer(4)::m_tndv
integer(4)::m_tndu_noc
integer(4)::m_tndv_noc
integer(4)::m_tndt
integer(4)::m_tndpd
integer(4)::m_tndvd
integer(4)::m_tndgw
integer(4)::ndim
end type
type::tgmvt
integer(4)::m_u
integer(4)::m_v
integer(4)::m_t
integer(4)::m_div
integer(4)::m_spd
integer(4)::m_svd
integer(4)::ndim
end type
type::tgflt
integer(4)::m_q
integer(4)::m_l
integer(4)::m_i
integer(4)::ndim
end type
type(txyb)::yytxyb0
type(txyb)::yytxyb5
type(txyb)::yytxyb9
type(txyb)::yytxyb95
type(txyb)::yytxyb0_phy
type(txyb)::yytxyb9_phy
type(txyb)::yytxybpp
type(txyb)::yytxyb
type(txyb)::yytxybt
type(txybder)::yytxybder0
type(txybder)::yytxybder5
type(txybder)::yytxybderpp
type(txybder)::yytxybder
type(txybder)::yytxybdert
type(trcp)::yytrcp0
type(trcp)::yytrcp5
type(trcp)::yytrcp9
type(trcp)::yytrcp95
type(tcty)::yytcty0
type(tcty)::yytcty5
type(tcty)::yytctypp
type(tcty)::yytcty
type(thwind)::yythw0
type(thwind)::yythw9
type(thwind)::yythw5
type(thwind)::yythw95
type(thwind)::yythwpp
type(thwind)::yythw
contains
subroutine suintdyn()
end
subroutine suptr_txyb(ld,yd)
logical(4),intent(in)::ld
type(txyb),intent(out)::yd
end
subroutine suptr_txybder(ld,yd)
logical(4),intent(in)::ld
type(txybder),intent(out)::yd
end
subroutine suptr_trcp(yd)
type(trcp),intent(out)::yd
end
subroutine suptr_tcty(yd)
type(tcty),intent(out)::yd
end
subroutine suptr_thwind(yd)
type(thwind),intent(out)::yd
end
subroutine suptr_ttnd(yd,ldnhdyn)
type(ttnd),intent(out)::yd
logical(4),intent(in)::ldnhdyn
end
subroutine suptr_tgmvt(yd,ldnhdyn)
type(tgmvt),intent(out)::yd
logical(4),intent(in)::ldnhdyn
end
subroutine suptr_tgflt(yd)
type(tgflt),intent(out)::yd
end
end
