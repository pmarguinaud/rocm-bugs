!mod$ v1 sum:b68d3f84e65e2753
!need$ 02fa50acb5949c1e n random_numbers_mix
module yomrandom_streams
use random_numbers_mix,only:randomnumberstream
type::trandom_streams
type(randomnumberstream)::scan2mtl
type(randomnumberstream)::stochphys_cabs
type(randomnumberstream)::stochphys_spbs
type(randomnumberstream)::stochphys_rvp
type(randomnumberstream)::stoph_spbs_t
type(randomnumberstream)::stoph_rvp_t
end type
end
