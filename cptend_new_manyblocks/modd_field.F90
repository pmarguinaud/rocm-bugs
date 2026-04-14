!mod$ v1 sum:a2371872ecd17c2d
!need$ 25b02d753545073c n modd_parameters
module modd_field
use modd_parameters,only:ngridunknown
use modd_parameters,only:nmnhnamelgtmax
use modd_parameters,only:nstdnamelgtmax
integer(4),parameter::nmnhdim_unknown=-2_4
integer(4),parameter::nmnhmaxdims=6_4
integer(4),parameter::typeundef=-1_4
integer(4),parameter::typeint=1_4
integer(4),parameter::typelog=2_4
integer(4),parameter::typereal=3_4
integer(4),parameter::typechar=4_4
integer(4),parameter::typedate=5_4
type::tfieldmetadata
character(32_4,1)::cmnhname="                                "
character(64_4,1)::cstdname="                                                                "
character(32_4,1)::clongname="                                "
character(40_4,1)::cunits="                                        "
character(100_4,1)::ccomment="                                                                                                    "
integer(4)::ngrid=-1_4
integer(4)::ntype=-1_4
integer(4)::ndims=0_4
character(2_4,1)::cdir="  "
logical(4)::ltimedep=.false._4
end type
end
