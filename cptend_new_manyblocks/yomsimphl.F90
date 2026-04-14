!mod$ v1 sum:146c2b76671d6513
!need$ fe3180dd7f22d4c1 n parkind1
module yomsimphl
use parkind1,only:jprb
type::tsimphl
logical(4)::lsimph
logical(4)::ltrajps
logical(4)::ltrajpst
logical(4)::lsmoothd
logical(4)::lsmootha
logical(4)::lsmoothb
logical(4)::lcvrasp
logical(4)::lgwdsp
logical(4)::lraysp
logical(4)::lstrasp
logical(4)::lvdifsp
logical(4)::lvdifspnl
logical(4)::lrrmessp
logical(4)::lclouds
logical(4)::lgwdspnl
logical(4)::lstraspn
logical(4)::lprocldtl
logical(4)::lmelttl
logical(4)::lmeltnl
logical(4)::lmicrotl
logical(4)::ltrajrain
logical(4)::ltrajcond
logical(4)::lnebcvppkf
logical(4)::lcollectl
logical(4)::levaptl
logical(4)::lsmoothevp
logical(4)::ligelrepro
logical(4)::lcvrasbm
logical(4)::lconsenth
logical(4)::lapproxconv
real(8)::rhcrit1s
real(8)::rhcrit2s
real(8)::tadj
real(8)::rminevp
real(8)::deltah
real(8)::rmodulqcprog
end type
end
