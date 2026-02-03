!mod$ v1 sum:377450d9a8f5d0c4
!need$ 575a1788d710f477 n modd_phyex
!need$ e0aa65167f0b313a n yomtendra
!need$ f088110c4f20764d n yomedmf
!need$ fe3180dd7f22d4c1 n parkind1
module yomparar
use parkind1,only:jpim
use parkind1,only:jprb
use modd_phyex,only:phyex_t
use yomtendra,only:ttendra
use yomedmf,only:tedmf
type::tparar
character(4_4,1)::cmicro
character(4_4,1)::cturb
type(phyex_t)::phyex
type(ttendra)::yrtendra
type(tedmf)::yredmf
integer(4)::nrr
integer(4)::nrrl
integer(4)::nrri
integer(4)::nsv
integer(4)::nswb_mnh
integer(4)::ngpar
integer(4)::minprr
integer(4)::macprr
integer(4)::minprs
integer(4)::macprs
integer(4)::minprg
integer(4)::macprg
integer(4)::malbdir
integer(4)::malbsca
integer(4)::mrain
integer(4)::msnow
integer(4)::mgz0
integer(4)::mgz0h
integer(4)::mvqs
integer(4)::mvts
integer(4)::mvemis
integer(4)::mswdir
integer(4)::mswdif
integer(4)::mlsm
integer(4)::mcd
integer(4)::mch
real(8),allocatable::xsw_bands(:)
logical(4)::lolsmc
logical(4)::lotownc
logical(4)::licerad
real(8)::radgr
real(8)::radsn
logical(4)::llcrit
logical(4)::ltotprec
logical(4)::ltotprecl
logical(4)::ldualmf
logical(4)::lscawaremf
logical(4)::lwthresh
logical(4)::lwthreshmoist
real(8)::xvmaxthp
real(8)::xvmaxthm
logical(4)::lsquall
integer(4)::nrefroi1
integer(4)::nrefroi2
real(8)::vsquall
logical(4)::larobu_enable
real(8)::xcqvr
real(8)::gqvplim
real(8)::gqvtop
logical(4)::lqvtop
logical(4)::limit_tendq
real(8)::zwl
real(8)::zwt
real(8)::zel
real(8)::zet
real(8)::zw2thresh
real(8)::zmfdrycon
real(8)::zmbclosurecon
real(8)::zrg
real(8)::zlat2cp
real(8)::zel2r
real(8)::zei2r
real(8)::zcons13
real(8)::zeps
real(8)::zc_0
real(8)::zc_d
real(8)::zc_n
real(8)::zwstf
real(8)::ztkemin
real(8)::zprandt
real(8)::zi2
real(8)::zalpha_n
real(8)::zalpha_c
real(8)::zb
real(8)::zc_m_max
real(8)::zrepust
end type
end
