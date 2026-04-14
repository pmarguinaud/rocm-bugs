!mod$ v1 sum:77ceabc06d4172bd
!need$ d3f62b89c13fb83e n modd_budget
module modd_misc
use modd_budget,only:tbudgetconf_t
type::misc_t
logical(4)::lmfconv=.true._4
logical(4)::ocompute_src=.true._4
integer(4)::khalo=1_4
character(6_4,1)::cprogram="AROME "
logical(4)::onomixlg=.false._4
logical(4)::oocean=.false._4
logical(4)::odeepoc=.false._4
logical(4)::ocouples=.false._4
logical(4)::oblowsnow=.false._4
real(8)::xrsnow=1._8
character(4_4,1)::hlbcx(1_8:2_8)=[CHARACTER(KIND=1,LEN=4)::"CYCL","CYCL"]
character(4_4,1)::hlbcy(1_8:2_8)=[CHARACTER(KIND=1,LEN=4)::"CYCL","CYCL"]
logical(4)::oibm=.false._4
logical(4)::oflyer=.false._4
logical(4)::odiag_in_run=.false._4
logical(4)::o2d=.false._4
character(4_4,1)::celec="NONE"
logical(4)::oelec=.false._4
logical(4)::osedim_beard=.false._4
logical(4)::oflat
type(tbudgetconf_t)::tbuconf
end type
end
