!mod$ v1 sum:2197d6deb875bf0f
!need$ fe3180dd7f22d4c1 n parkind1
module yomcompo
use parkind1,only:jpim
use parkind1,only:jprb
integer(4),parameter::npemis2d=500_4
integer(4),parameter::npemis2daux=10_4
integer(4),parameter::npemis3d=10_4
type::tcompo_emis
character(16_4,1)::species="                "
character(20_4,1)::sector="                    "
integer(4)::paramid=-9999_4
integer(4)::param_index=-9999_4
integer(4)::nreqin=1_4
real(8)::scaling=1._8
character(16_4,1)::diurnal_cycle_type="Uniform         "
real(8)::diurnal_amplitude=0._8
real(8)::diurnal_peak_hour=1.2e1_8
real(8)::diurnal_baseline=0._8
character(16_4,1)::vertical_profile_type="Surface         "
real(8)::vertical_surface_fraction=0._8
real(8)::vertical_base_height=0._8
real(8)::vertical_top_height=0._8
real(8)::vertical_threshold=0._8
integer(4)::vertical_base_level=0_4
integer(4)::vertical_top_level=0_4
integer(4)::vertical_paramid=-9999_4
integer(4)::vertical_param_index=-9999_4
character(8_4,1)::temporality="Default "
integer(4)::legacy_chem_override=0_4
logical(4)::non_simple_tracer=.false._4
end type
type::tcompo_emis_aux
integer(4)::paramid=0_4
character(8_4,1)::temporality="Default "
character(16_4,1)::cname="                "
end type
type::tcompo
logical(4)::lchem_dia
real(8)::rchem_dia_period
logical(4)::lchem_ddflx
logical(4)::lcompo_ddflx_dir
logical(4)::lchem_tropo
logical(4)::laereqsam4clim
logical(4)::lchem_eqsam4climph
logical(4)::laerosfc
logical(4)::lcompo_dcdd
logical(4)::laernitrate
logical(4)::laerresuspension
logical(4)::laersoa
logical(4)::laersoa_coupled
integer(4)::kghg_chemtend_ch4
logical(4)::laernucl
character(10_4,1)::aero_scheme
integer(4)::nemis2d_desc
type(tcompo_emis),allocatable::yemis2d_desc(:)
integer(4)::nemis3d_desc
type(tcompo_emis),allocatable::yemis3d_desc(:)
type(tcompo_emis_aux),allocatable::yemis2daux_desc(:)
end type
character(10_4,1)::aero_scheme_op_obs
contains
function compo_emis_read_namelist(this_out) result(llok)
type(tcompo_emis),intent(out)::this_out
logical(4)::llok
end
function compo_emis_aux_read_namelist(this_out) result(llok)
type(tcompo_emis_aux),intent(out)::this_out
logical(4)::llok
end
end
