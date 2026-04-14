!mod$ v1 sum:82866dfe85b9ecf1
!need$ 728a2604fdd3f4c0 n yom_ygfl
!need$ fe3180dd7f22d4c1 n parkind1
module yomaero
use parkind1,only:jpim
use parkind1,only:jprb
use yom_ygfl,only:jpaero
use yom_ygfl,only:jpaeromass2d
integer(4),parameter::nsw_max=14_4
integer(4),parameter::nlw_max=16_4
type::taero
integer(4)::naero_gfl
integer(4)::map_aero_gfl2nc(1_8:42_8)
integer(4)::map_aero_cms2gfl(1_8:11_8)
logical(4)::laero_gfl_from_cms(1_8:42_8)
integer(4)::numgfl_aero_om2
integer(4)::numgfl_aero_su
real(8)::rbgst_mmr_om2
real(8)::rbgtr_mmr_om2
real(8)::rext550_su
real(8)::raero_height_scale(1_8:11_8)
real(8)::raero_gamma_exp(1_8:11_8)
real(8)::raero_weight_sw(1_8:14_8)
real(8)::raero_weight_lw(1_8:16_8)
real(8)::raero_mask_sw(1_8:14_8,1_8:14_8)
real(8)::raero_mask_lw(1_8:16_8,1_8:16_8)
real(8),allocatable::vdaer(:,:)
character(256_4,1)::cfaero
end type
end
