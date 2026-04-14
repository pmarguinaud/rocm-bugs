!mod$ v1 sum:a9246b2b196281c8
!need$ 77fb39ac8a05f8f4 n radiation_cloud_optics_data
!need$ a83a6bbda36607c6 n radiation_general_cloud_optics_data
!need$ 7d80797ce7c3abdb n radiation_aerosol_optics_data
!need$ 5993bc012c039fb9 n radiation_pdf_sampler
!need$ 12028d728883f57e n radiation_cloud_cover
!need$ e7e0c0c329f71842 n radiation_ecckd
!need$ fe3180dd7f22d4c1 n parkind1
module radiation_config
use parkind1,only:jprb
use radiation_cloud_optics_data,only:cloud_optics_type
use radiation_general_cloud_optics_data,only:general_cloud_optics_type
use radiation_aerosol_optics_data,only:aerosol_optics_type
use radiation_pdf_sampler,only:pdf_sampler_type
use radiation_cloud_cover,only:overlapname
use radiation_cloud_cover,only:ioverlapmaximumrandom
use radiation_cloud_cover,only:ioverlapexponentialrandom
use radiation_cloud_cover,only:ioverlapexponential
use radiation_ecckd,only:ckd_model_type
integer(4),parameter::isolvercloudless=0_4
integer(4),parameter::isolverhomogeneous=1_4
integer(4),parameter::isolvermcica=2_4
integer(4),parameter::isolverspartacus=3_4
integer(4),parameter::isolvertripleclouds=4_4
character(*,1),parameter::solvername(0_8:4_8)=[CHARACTER(KIND=1,LEN=12)::"Cloudless   ","Homogeneous ","McICA       ","SPARTACUS   ","Tripleclouds"]
integer(4),parameter::ientrapmentzero=0_4
integer(4),parameter::ientrapmentedgeonly=1_4
integer(4),parameter::ientrapmentexplicit=2_4
integer(4),parameter::ientrapmentexplicitnonfractal=3_4
integer(4),parameter::ientrapmentmaximum=4_4
character(*,1),parameter::entrapmentname(0_8:4_8)=[CHARACTER(KIND=1,LEN=11)::"Zero       ","Edge-only  ","Explicit   ","Non-fractal","Maximum    "]
character(*,1),parameter::encroachmentname(0_8:4_8)=[CHARACTER(KIND=1,LEN=8)::"Zero    ","Minimum ","Fractal ","Computed","Maximum "]
integer(4),parameter::igasmodelmonochromatic=0_4
integer(4),parameter::igasmodelifsrrtmg=1_4
integer(4),parameter::igasmodelecckd=2_4
character(*,1),parameter::gasmodelname(0_8:2_8)=[CHARACTER(KIND=1,LEN=13)::"Monochromatic","RRTMG-IFS    ","ECCKD        "]
integer(4),parameter::iliquidmodelmonochromatic=0_4
integer(4),parameter::iliquidmodelsocrates=1_4
integer(4),parameter::iliquidmodelslingo=2_4
integer(4),parameter::iliquidmodeljahangir=3_4
integer(4),parameter::iliquidmodelnielsen=4_4
character(*,1),parameter::liquidmodelname(0_8:4_8)=[CHARACTER(KIND=1,LEN=13)::"Monochromatic","SOCRATES     ","Slingo       ","Jahangir     ","Nielsen      "]
integer(4),parameter::iicemodelmonochromatic=0_4
integer(4),parameter::iicemodelfu=1_4
integer(4),parameter::iicemodelbaran=2_4
integer(4),parameter::iicemodelbaran2016=3_4
integer(4),parameter::iicemodelbaran2017=4_4
integer(4),parameter::iicemodelyi=5_4
character(*,1),parameter::icemodelname(0_8:5_8)=[CHARACTER(KIND=1,LEN=13)::"Monochromatic","Fu-IFS       ","Baran        ","Baran2016    ","Baran2017    ","Yi           "]
integer(4),parameter::ipdfshapelognormal=0_4
integer(4),parameter::ipdfshapegamma=1_4
character(*,1),parameter::pdfshapename(0_8:1_8)=[CHARACTER(KIND=1,LEN=9)::"Lognormal","Gamma    "]
integer(4),parameter::nmaxaerosoltypes=256_4
integer(4),parameter::nmaxcloudtypes=12_4
integer(4),parameter::nmaxalbedointervals=256_4
integer(4),parameter::nprintstringlen=60_4
type::config_type
logical(4)::use_spectral_solar_scaling=.false._4
logical(4)::use_spectral_solar_cycle=.false._4
character(511_4,1)::directory_name=".                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              "
logical(4)::use_general_cloud_optics=.true._4
logical(4)::use_general_aerosol_optics=.true._4
real(8)::cloud_fraction_threshold=9.99999999999999954748111825886258685613938723690807819366455078125e-7_8
real(8)::cloud_mixing_ratio_threshold=1.0000000000000000622815914577798564188970686927859787829220294952392578125e-9_8
integer(4)::i_overlap_scheme=1_4
logical(4)::use_beta_overlap=.false._4
logical(4)::use_vectorizable_generator=.false._4
integer(4)::i_cloud_pdf_shape=1_4
real(8)::cloud_inhom_decorr_scaling=5.e-1_8
real(8)::clear_to_thick_fraction=0._8
real(8)::overhead_sun_factor=0._8
real(8)::min_gas_od_lw=1.00000000000000007770539987666107923830718560119501514549256171449087560176849365234375e-15_8
real(8)::min_gas_od_sw=0._8
real(8)::max_gas_od_3d=8._8
real(8)::max_cloud_od=1.6e1_8
logical(4)::do_lw_cloud_scattering=.true._4
logical(4)::do_lw_aerosol_scattering=.true._4
integer(4)::nregions=3_4
integer(4)::i_solver_sw=2_4
integer(4)::i_solver_lw=2_4
logical(4)::do_sw_delta_scaling_with_gases=.false._4
integer(4)::i_gas_model=1_4
real(8)::mono_lw_wavelength=-1._8
real(8)::mono_lw_total_od=0._8
real(8)::mono_sw_total_od=0._8
real(8)::mono_sw_single_scattering_albedo=9.9999899999999997124433548378874547779560089111328125e-1_8
real(8)::mono_sw_asymmetry_factor=8.5999999999999998667732370449812151491641998291015625e-1_8
real(8)::mono_lw_single_scattering_albedo=5.380000000000000337507799486047588288784027099609375e-1_8
real(8)::mono_lw_asymmetry_factor=9.250000000000000444089209850062616169452667236328125e-1_8
integer(4)::i_liq_model=1_4
integer(4)::i_ice_model=2_4
logical(4)::do_nearest_spectral_sw_albedo=.false._4
logical(4)::do_nearest_spectral_lw_emiss=.false._4
real(8)::sw_albedo_wavelength_bound(1_8:255_8)=[REAL(8)::-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8]
real(8)::lw_emiss_wavelength_bound(1_8:255_8)=[REAL(8)::-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8,-1._8]
integer(4)::i_sw_albedo_index(1_8:256_8)=[INTEGER(4)::0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4]
integer(4)::i_lw_emiss_index(1_8:256_8)=[INTEGER(4)::0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4,0_4]
logical(4)::do_lw=.true._4
logical(4)::do_sw=.true._4
logical(4)::do_clear=.true._4
logical(4)::do_sw_direct=.true._4
logical(4)::do_3d_effects=.true._4
character(511_4,1)::cloud_type_name(1_8:12_8)=[CHARACTER(KIND=1,LEN=511)::"                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ","                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ","                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ","                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ","                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ","                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ","                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ","                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ","                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ","                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ","                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               ","                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               "]
logical(4)::use_thick_cloud_spectral_averaging(1_8:12_8)=[LOGICAL(4)::.true._4,.true._4,.true._4,.true._4,.true._4,.true._4,.true._4,.true._4,.true._4,.true._4,.true._4,.true._4]
integer(4)::i_3d_sw_entrapment=2_4
logical(4)::do_3d_lw_multilayer_effects=.false._4
logical(4)::do_lw_side_emissivity=.true._4
real(8)::max_3d_transfer_rate=1.e1_8
real(8)::min_cloud_effective_size=1.e2_8
real(8)::overhang_factor=0._8
logical(4)::use_expm_everywhere=.false._4
logical(4)::use_aerosols=.false._4
integer(4)::n_aerosol_types=0_4
integer(4)::i_aerosol_type_map(1_8:256_8)
logical(4)::do_save_radiative_properties=.false._4
logical(4)::do_save_spectral_flux=.false._4
logical(4)::do_surface_sw_spectral_flux=.true._4
logical(4)::do_toa_spectral_flux=.false._4
logical(4)::do_lw_derivatives=.false._4
logical(4)::do_save_gpoint_flux=.false._4
logical(4)::do_setup_ifsrrtm=.true._4
logical(4)::do_fu_lw_ice_optics_bug=.false._4
integer(4)::iverbosesetup=2_4
integer(4)::iverbose=1_4
logical(4)::do_canopy_fluxes_sw=.false._4
logical(4)::do_canopy_fluxes_lw=.false._4
logical(4)::use_canopy_full_spectrum_sw=.false._4
logical(4)::use_canopy_full_spectrum_lw=.false._4
logical(4)::do_canopy_gases_sw=.false._4
logical(4)::do_canopy_gases_lw=.false._4
character(511_4,1)::ice_optics_override_file_name="                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               "
character(511_4,1)::liq_optics_override_file_name="                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               "
character(511_4,1)::aerosol_optics_override_file_name="                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               "
character(511_4,1)::gas_optics_sw_override_file_name="                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               "
character(511_4,1)::gas_optics_lw_override_file_name="                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               "
character(511_4,1)::ssi_override_file_name="                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               "
logical(4)::use_updated_solar_spectrum=.false._4
character(511_4,1)::cloud_pdf_override_file_name="                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               "
logical(4)::do_cloud_aerosol_per_sw_g_point=.true._4
logical(4)::do_cloud_aerosol_per_lw_g_point=.true._4
logical(4)::do_weighted_surface_mapping=.true._4
logical(4)::is_consolidated=.false._4
real(8),allocatable::g_frac_sw(:,:)
real(8),allocatable::g_frac_lw(:,:)
integer(4),allocatable::i_albedo_from_band_sw(:)
integer(4),allocatable::i_emiss_from_band_lw(:)
real(8),allocatable::sw_albedo_weights(:,:)
real(8),allocatable::lw_emiss_weights(:,:)
integer(4),allocatable::i_band_from_g_lw(:)
integer(4),allocatable::i_band_from_g_sw(:)
integer(4),allocatable::i_g_from_reordered_g_lw(:)
integer(4),allocatable::i_g_from_reordered_g_sw(:)
integer(4),allocatable::i_band_from_reordered_g_lw(:)
integer(4),allocatable::i_band_from_reordered_g_sw(:)
integer(4),pointer::i_spec_from_reordered_g_lw(:)
integer(4),pointer::i_spec_from_reordered_g_sw(:)
integer(4)::n_canopy_bands_sw=1_4
integer(4)::n_canopy_bands_lw=1_4
type(ckd_model_type)::gas_optics_sw
type(ckd_model_type)::gas_optics_lw
type(cloud_optics_type)::cloud_optics
integer(4)::n_cloud_types=2_4
type(general_cloud_optics_type),allocatable::cloud_optics_sw(:)
type(general_cloud_optics_type),allocatable::cloud_optics_lw(:)
type(aerosol_optics_type)::aerosol_optics
type(pdf_sampler_type)::pdf_sampler
character(511_4,1)::ice_optics_file_name
character(511_4,1)::liq_optics_file_name
character(511_4,1)::aerosol_optics_file_name
character(511_4,1)::gas_optics_sw_file_name
character(511_4,1)::gas_optics_lw_file_name
character(511_4,1)::ssi_file_name
character(511_4,1)::cloud_pdf_file_name
integer(4)::n_g_sw=0_4
integer(4)::n_g_lw=0_4
integer(4)::n_bands_sw=0_4
integer(4)::n_bands_lw=0_4
integer(4)::n_spec_sw=0_4
integer(4)::n_spec_lw=0_4
integer(4)::n_wav_frac_sw=0_4
integer(4)::n_wav_frac_lw=0_4
integer(4)::n_g_lw_if_scattering=0_4
integer(4)::n_bands_lw_if_scattering=0_4
logical(4)::is_homogeneous=.false._4
logical(4)::do_clouds=.true._4
contains
procedure::read=>read_config_from_namelist
procedure::consolidate=>consolidate_config
procedure::set=>set_config
procedure::print=>print_config
procedure::get_sw_weights
procedure::get_sw_mapping
procedure::define_sw_albedo_intervals
procedure::define_lw_emiss_intervals
procedure::set_aerosol_wavelength_mono
procedure::consolidate_sw_albedo_intervals
procedure::consolidate_lw_emiss_intervals
end type
contains
subroutine read_config_from_namelist(this,file_name,unit,is_success)
class(config_type),intent(inout)::this
character(*,1),intent(in),optional::file_name
integer(4),intent(in),optional::unit
logical(4),intent(out),optional::is_success
end
subroutine consolidate_config(this)
class(config_type),intent(inout)::this
end
subroutine set_config(config,directory_name,do_lw,do_sw,do_lw_aerosol_scattering,do_lw_cloud_scattering,do_sw_direct)
class(config_type),intent(inout)::config
character(*,1),intent(in),optional::directory_name
logical(4),intent(in),optional::do_lw
logical(4),intent(in),optional::do_sw
logical(4),intent(in),optional::do_lw_aerosol_scattering
logical(4),intent(in),optional::do_lw_cloud_scattering
logical(4),intent(in),optional::do_sw_direct
end
subroutine print_config(this,iverbose)
class(config_type),intent(in)::this
integer(4),intent(in),optional::iverbose
end
subroutine get_sw_weights(this,wavelength1,wavelength2,nweights,iband,weight,weighting_name)
class(config_type),intent(in)::this
real(8),intent(in)::wavelength1
real(8),intent(in)::wavelength2
integer(4),intent(out)::nweights
integer(4),intent(out)::iband(:)
real(8),intent(out)::weight(:)
character(*,1),intent(in),optional::weighting_name
end
subroutine get_sw_mapping(this,wavelength_bound,mapping,weighting_name)
class(config_type),intent(in)::this
real(8),intent(in)::wavelength_bound(:)
real(8),allocatable,intent(out)::mapping(:,:)
character(*,1),intent(in),optional::weighting_name
end
subroutine define_sw_albedo_intervals(this,ninterval,wavelength_bound,i_intervals,do_nearest)
class(config_type),intent(inout)::this
integer(4),intent(in)::ninterval
real(8),intent(in)::wavelength_bound(1_8:int(ninterval-1_4,kind=8))
integer(4),intent(in)::i_intervals(1_8:int(ninterval,kind=8))
logical(4),intent(in),optional::do_nearest
end
subroutine define_lw_emiss_intervals(this,ninterval,wavelength_bound,i_intervals,do_nearest)
class(config_type),intent(inout)::this
integer(4),intent(in)::ninterval
real(8),intent(in)::wavelength_bound(1_8:int(ninterval-1_4,kind=8))
integer(4),intent(in)::i_intervals(1_8:int(ninterval,kind=8))
logical(4),intent(in),optional::do_nearest
end
subroutine set_aerosol_wavelength_mono(this,wavelength_mono)
class(config_type),intent(inout)::this
real(8),intent(in)::wavelength_mono(:)
end
subroutine consolidate_sw_albedo_intervals(this)
class(config_type),intent(inout)::this
end
subroutine consolidate_lw_emiss_intervals(this)
class(config_type),intent(inout)::this
end
subroutine get_enum_code(str,enum_str,var_name,icode)
character(*,1),intent(in)::str
character(*,1),intent(in)::enum_str(0_8:)
character(*,1),intent(in)::var_name
integer(4),intent(out)::icode
end
subroutine print_logical(message_str,name,val)
character(*,1),intent(in)::message_str
character(*,1),intent(in)::name
logical(4),intent(in)::val
end
subroutine print_integer(message_str,name,val)
character(*,1),intent(in)::message_str
character(*,1),intent(in)::name
integer(4),intent(in)::val
end
subroutine print_real(message_str,name,val)
character(*,1),intent(in)::message_str
character(*,1),intent(in)::name
real(8),intent(in)::val
end
subroutine print_enum(message_str,enum_str,name,val)
character(*,1),intent(in)::message_str
character(*,1),intent(in)::enum_str(0_8:)
character(*,1),intent(in)::name
integer(4),intent(in)::val
end
end
