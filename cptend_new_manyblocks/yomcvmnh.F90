!mod$ v1 sum:4152d172561e5dab
!need$ fe3180dd7f22d4c1 n parkind1
!need$ ab1e9304ded2a06a n modd_nsv
!need$ 04d5ac1c259fa1a1 n modd_convpar
!need$ 54eedcf7d239315b n modd_cst
!need$ 20d3ca7e8040120a n modd_convparext
!need$ 60966fd19d15adf0 n modd_convpar_shal
module yomcvmnh
use parkind1,only:jpim
use parkind1,only:jprb
use modd_nsv,only:nsv_t
use modd_convpar,only:convpar_t
use modd_cst,only:cst_t
use modd_convparext,only:convparext
use modd_convpar_shal,only:convpar_shal
type::tcvmnh
logical(4)::ldeep
logical(4)::lshallow
logical(4)::ldiagconv
logical(4)::lsettadj
logical(4)::lrefresh_all
logical(4)::ldown
logical(4)::lsmooth
real(8)::otadjd
real(8)::otadjs
integer(4)::nsetens
integer(4)::niice
real(8)::xa25
real(8)::xcrad
real(8)::xcdepth
real(8)::xcdepth_d
real(8)::xdtpert
real(8)::xentr
real(8)::xzlcl
real(8)::xzpbl
real(8)::xwtrig
real(8)::xnhgam
real(8)::xtfrz1
real(8)::xtfrz2
real(8)::xstabt
real(8)::xstabc
real(8)::xaw
real(8)::xbw
real(8)::xatpert
real(8)::xbtpert
type(convparext)::yrcvpext
type(convpar_shal)::yrcvp_shal
type(cst_t)::yrcst_mnh
type(nsv_t)::yrnsv
type(convpar_t)::yrconvpar
end type
end
