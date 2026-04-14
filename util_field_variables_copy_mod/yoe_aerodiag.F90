!mod$ v1 sum:bb2c01705a786d89
!need$ fe3180dd7f22d4c1 n parkind1
module yoe_aerodiag
use parkind1,only:jpim
use parkind1,only:jprb
integer(4),parameter::npaerodiag=8_4
integer(4),parameter::npaeraot=3_4
integer(4),parameter::npaerlisi_var=6_4
integer(4),parameter::npaerlisi_wvl=3_4
integer(4),parameter::npaerlisi=18_4
integer(4),parameter::jpaerodiag_src=1_4
integer(4),parameter::jpaerodiag_ddp=2_4
integer(4),parameter::jpaerodiag_sdm=3_4
integer(4),parameter::jpaerodiag_wdl=4_4
integer(4),parameter::jpaerodiag_wdc=5_4
integer(4),parameter::jpaerodiag_ngt=6_4
integer(4),parameter::jpaerodiag_od=7_4
integer(4),parameter::jpaerodiag_mss=8_4
character(3_4,1),parameter::cpaerodiag_label(1_8:8_8)=[CHARACTER(KIND=1,LEN=3)::"SRC","DDP","SDM","WDL","WDC","NGT","OD.","TC."]
integer(4),parameter::jpaeraot_total=1_4
integer(4),parameter::jpaeraot_natural=2_4
integer(4),parameter::jpaeraot_anthro=3_4
integer(4),parameter::jpaerlisi_ext=1_4
integer(4),parameter::jpaerlisi_ssa=2_4
integer(4),parameter::jpaerlisi_bstoa=3_4
integer(4),parameter::jpaerlisi_bsgnd=4_4
integer(4),parameter::jpaerlisi_molbsc=5_4
integer(4),parameter::jpaerlisi_aerbsc=6_4
integer(4),parameter::jpaerlisi_355=1_4
integer(4),parameter::jpaerlisi_532=2_4
integer(4),parameter::jpaerlisi_1064=3_4
integer(4),parameter::npaero_wvl_diag=20_4
integer(4),parameter::npaero_wvl_diag_types=5_4
type::type_aero_wvl_diag
integer(4)::iwvl
integer(4)::igribdiag(1_8:5_8)
end type
integer(4),parameter::jpaero_wvl_aod=1_4
integer(4),parameter::jpaero_wvl_aodabs=2_4
integer(4),parameter::jpaero_wvl_aodfm=3_4
integer(4),parameter::jpaero_wvl_ssa=4_4
integer(4),parameter::jpaero_wvl_assimetry=5_4
character(8_4,1),parameter::cpaero_wvl_diag_label(1_8:5_8)=[CHARACTER(KIND=1,LEN=8)::"OptDepth","AbOptDep","FMOptDep","SScatAlb","Asymmetr"]
end
