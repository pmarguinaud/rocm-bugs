!mod$ v1 sum:575a1788d710f477
!need$ 54eedcf7d239315b n modd_cst
!need$ 541798f82b757715 n modd_param_ice_n
!need$ 0b09809203dac56a n modd_rain_ice_descr_n
!need$ 293086545750eba9 n modd_rain_ice_param_n
!need$ dd13c8f448279d4f n modd_cloudpar_n
!need$ ca95dcf298f8bbcf n modd_param_mfshall_n
!need$ e13df4e7c0f096e5 n modd_turb_n
!need$ af4bc4e8aa24a446 n modd_cturb
!need$ 2adff6fcc34baac3 n modd_neb_n
!need$ 9206eb5ddd5977fb n modd_param_lima
!need$ ae0737809c65fa28 n modd_param_lima_warm
!need$ 2957080609654ec2 n modd_param_lima_cold
!need$ 0888039919d409d3 n modd_param_lima_mixed
!need$ 5df798c736e3cb58 n modd_elec_descr
!need$ f6813cfbdf20d0e1 n modd_elec_param
!need$ ab1e9304ded2a06a n modd_nsv
!need$ 77ceabc06d4172bd n modd_misc
module modd_phyex
use modd_cst,only:cst_t
use modd_param_ice_n,only:param_ice_t
use modd_rain_ice_descr_n,only:rain_ice_descr_t
use modd_rain_ice_param_n,only:rain_ice_param_t
use modd_cloudpar_n,only:cloudpar_t
use modd_param_mfshall_n,only:param_mfshall_t
use modd_turb_n,only:turb_t
use modd_cturb,only:csturb_t
use modd_neb_n,only:neb_t
use modd_param_lima,only:param_lima_t
use modd_param_lima_warm,only:param_lima_warm_t
use modd_param_lima_cold,only:param_lima_cold_t
use modd_param_lima_mixed,only:param_lima_mixed_t
use modd_elec_descr,only:elec_descr_t
use modd_elec_param,only:elec_param_t
use modd_nsv,only:nsv_t
use modd_misc,only:misc_t
type::phyex_t
type(cst_t)::cst
type(param_ice_t)::param_icen
type(rain_ice_descr_t)::rain_ice_descrn
type(rain_ice_param_t)::rain_ice_paramn
type(cloudpar_t)::cloudparn
type(param_mfshall_t)::param_mfshalln
type(csturb_t)::csturb
type(turb_t)::turbn
type(neb_t)::nebn
type(param_lima_t)::param_lima
type(param_lima_warm_t)::param_lima_warm
type(param_lima_cold_t)::param_lima_cold
type(param_lima_mixed_t)::param_lima_mixed
type(elec_descr_t)::elec_descr
type(elec_param_t)::elec_param
type(nsv_t)::tnsv
type(misc_t)::misc
end type
end
