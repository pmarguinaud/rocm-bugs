!mod$ v1 sum:f50382efa5ad568f
!need$ 99f7ec52259902ea n yomhook
!need$ f1674ee58737d9c7 n yomlun
!need$ 67b29aa9476ac84e n yomct0
!need$ fe3180dd7f22d4c1 n parkind1
module yomcver
use parkind1,only:jpim
use parkind1,only:jprb
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use yomlun,only:nulout
use yomlun,only:nulnam
use yomct0,only:lr2d
use yomct0,only:lecmwf
use yomct0,only:larpegef
use yomhook,only:yomhook$yomhook$dr_hook_default8=>dr_hook_default8
type::tcver
logical(4)::laprxpk
integer(4)::ndlnpr
real(8)::rhydr0
real(8)::rexp_vrat
logical(4)::lregeta
logical(4)::lvfe_regeta
integer(4)::nvfe_type
integer(4)::nvfe_order
integer(4)::nvfe_internals
logical(4)::lvertfe
logical(4)::lvfe_lapl_bc
logical(4)::lvfe_gw
logical(4)::lvfe_gw_half
logical(4)::lvfe_gwmpa
logical(4)::lvfe_cheb
logical(4)::lvfe_ecmwf
logical(4)::lvfe_nobc
logical(4)::lvfe_verbose
logical(4)::lvfe_normalize
logical(4)::lpercentils
logical(4)::lvfe_compatible
logical(4)::lvfe_fd_mix
logical(4)::lvfe_lapl_half
logical(4)::lcompatible
logical(4)::lrefine_nhpre_bbc
real(8)::rvfe_alpha
real(8)::rvfe_beta
real(8)::rvfe_knot_stretch
real(8)::rfac1
real(8)::rfac2
character(8_4,1)::cvfe_etah
end type
contains
subroutine sucver_geom(ydcver,ldnhdyn_geom)
type(tcver),intent(inout),target::ydcver
logical(4),intent(in)::ldnhdyn_geom
end
subroutine prt_cver_geom(ydcver)
type(tcver),intent(inout)::ydcver
end
end
