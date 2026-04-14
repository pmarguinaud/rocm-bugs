!mod$ v1 sum:e6b25046c60c203c
!need$ a189d1ef2eaf7142 n model_atmos_ocean_coupling_mod
!need$ bff837e9b47d401c n model_dynamics_mod
!need$ 2c22e91de4c13f8c n model_physics_general_mod
!need$ fc823f7cc2fb0503 n model_physics_ecmwf_mod
!need$ a9b149ac94879e97 n model_physics_simplinear_mod
!need$ b5d8b3c26002a64b n model_physics_aerosol_mod
!need$ 45b7ddf8fe8fddb6 n model_physics_radiation_mod
!need$ 57a672f60de8da4b n model_physics_stochast_mod
!need$ b77cc2ea4287f65e n model_physics_mf_mod
!need$ e15bb8637dc8f8af n model_physics_forcing_mod
!need$ a883d7a6fa273c7c n model_physics_scm_mod
!need$ dd2ae631312de062 n model_chem_mod
!need$ 4ce4dada4ac8958f n model_diagnostics_mod
!need$ be88108cb913e406 n yoewcou
!need$ 63d2912c9610bc6f n yomcst
!need$ ee76c246cd9ac178 n yomspsdt
!need$ 482d9c54920ee62c n spp_mod
!need$ e60bbe89bdb122e8 n yemlbc_model
!need$ fe3180dd7f22d4c1 n parkind1
!need$ b1898997335bab45 n model_general_conf_mod
module type_model
use parkind1,only:jpim
use model_general_conf_mod,only:model_general_conf_type
use model_atmos_ocean_coupling_mod,only:model_atmos_ocean_coupling_type
use model_dynamics_mod,only:model_dynamics_type
use model_physics_general_mod,only:model_physics_general_type
use model_physics_ecmwf_mod,only:model_physics_ecmwf_type
use model_physics_simplinear_mod,only:model_physics_simplinear_type
use model_physics_aerosol_mod,only:model_physics_aerosol_type
use model_physics_radiation_mod,only:model_physics_radiation_type
use model_physics_stochast_mod,only:model_physics_stochast_type
use model_physics_mf_mod,only:model_physics_mf_type
use model_physics_forcing_mod,only:model_physics_forcing_type
use model_physics_scm_mod,only:model_physics_scm_type
use model_chem_mod,only:model_chem_type
use model_diagnostics_mod,only:model_diagnostics_type
use yoewcou,only:tewcou
use yomcst,only:tcst
use yomspsdt,only:tsppt_data
use spp_mod,only:tspp_data
use yemlbc_model,only:telbc_model
type::model
logical(4)::linear_model=.false._4
type(model_general_conf_type)::yrml_gconf
type(model_atmos_ocean_coupling_type)::yrml_aoc
type(model_dynamics_type)::yrml_dyn
type(model_physics_general_type)::yrml_phy_g
type(model_physics_ecmwf_type)::yrml_phy_ec
type(model_physics_simplinear_type)::yrml_phy_slin
type(model_physics_aerosol_type)::yrml_phy_aer
type(model_physics_radiation_type)::yrml_phy_rad
type(model_physics_stochast_type)::yrml_phy_stoch
type(model_physics_mf_type)::yrml_phy_mf
type(model_physics_forcing_type)::yrml_phy_forcing
type(model_physics_scm_type)::yrml_phy_scm
type(model_chem_type)::yrml_chem
type(model_diagnostics_type)::yrml_diag
type(tsppt_data)::yrml_sppt
type(tspp_data)::yrml_spp
type(tewcou)::yrewcou
type(tcst),pointer::yrcst=>NULL()
type(telbc_model)::yrml_lbc
integer(4)::mobject_id=0_4
character(17_4,1)::cobject_id="                 "
contains
procedure,pass::print=>print_model_configuration
end type
intrinsic::null
contains
subroutine print_model_configuration(self,cdstring,koutno)
class(model),intent(in)::self
character(*,1),intent(in)::cdstring
integer(4),intent(in),optional::koutno
end
end
