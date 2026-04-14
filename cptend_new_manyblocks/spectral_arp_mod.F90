!mod$ v1 sum:775436aa59b0cb65
!need$ 74989393e9f80743 n spectral_fields_mod
!need$ fac01a461819e988 n spectral_fields_data
!need$ 02fa50acb5949c1e n random_numbers_mix
!need$ 53043a6cfafbf68a n geometry_mod
!need$ bdbfc04e27b91448 n spectral_fields_oper_mod
!need$ fe3180dd7f22d4c1 n parkind1
!need$ 99f7ec52259902ea n yomhook
module spectral_arp_mod
use geometry_mod,only:geometry
use parkind1,only:jpim
use parkind1,only:jprb
use parkind1,only:jprd
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use spectral_fields_data,only:lelam
use spectral_fields_mod,only:spectral_field
use spectral_fields_mod,only:assignment(=)
use spectral_fields_mod,only:operator(.eqv.)
use spectral_fields_mod,only:operator(.neqv.)
use spectral_fields_mod,only:self_add
use spectral_fields_mod,only:self_sub
use spectral_fields_mod,only:self_mul
use spectral_fields_mod,only:self_axpy
use spectral_fields_mod,only:dot_product
use spectral_fields_mod,only:spectral_norm
use spectral_fields_mod,only:spectral_norm_levs
use spectral_fields_mod,only:spectral_max_levs
use spectral_fields_mod,only:yomhook$yomhook$dr_hook_default8
use spectral_fields_mod,only:spectral_dummy2d
use spectral_fields_mod,only:spectral_dummy3d
use spectral_fields_mod,only:spectral_dummy4d
use spectral_fields_mod,only:spectral_field_container
use spectral_fields_mod,only:allocate_spec
use spectral_fields_mod,only:setup_spec
use spectral_fields_mod,only:wrap_spec
use spectral_fields_mod,only:unwrap_spec
use spectral_fields_mod,only:host_spec
use spectral_fields_mod,only:alloc_spec
use spectral_fields_mod,only:create_spec
use spectral_fields_mod,only:allocated_spec
use spectral_fields_mod,only:deallocate_spec
use spectral_fields_mod,only:inq_spec
use spectral_fields_mod,only:random_spectral_field
use random_numbers_mix,only:randomnumberstream
use random_numbers_mix,only:initialize_random_numbers
use random_numbers_mix,only:uniform_distribution
use random_numbers_mix,only:gaussian_distribution
use random_numbers_mix,only:random_number_restartfile
use random_numbers_mix,only:wr_rangen_state
use spectral_fields_oper_mod,only:spectral_fields_mod$spectral_fields_oper_mod$assign_scalar_sp=>assign_scalar_sp
private::geometry
private::jpim
private::jprb
private::jprd
private::lhook
private::dr_hook
private::jphook
private::lelam
private::spectral_field
private::assignment(=)
private::operator(.eqv.)
private::operator(.neqv.)
private::self_add
private::self_sub
private::self_mul
private::self_axpy
private::dot_product
private::spectral_norm
private::spectral_norm_levs
private::spectral_max_levs
private::yomhook$yomhook$dr_hook_default8
private::spectral_dummy2d
private::spectral_dummy3d
private::spectral_dummy4d
private::spectral_field_container
private::allocate_spec
private::setup_spec
private::wrap_spec
private::unwrap_spec
private::host_spec
private::alloc_spec
private::create_spec
private::allocated_spec
private::deallocate_spec
private::inq_spec
private::random_spectral_field
private::randomnumberstream
private::initialize_random_numbers
private::uniform_distribution
private::gaussian_distribution
private::random_number_restartfile
private::wr_rangen_state
private::spectral_fields_mod$spectral_fields_oper_mod$assign_scalar_sp
type::spectral_arp
type(spectral_field)::sf
logical(4)::lsum
type(spectral_field)::sfsum
integer(4)::iseed0
integer(4)::iseed0t0
integer(4),pointer::iseed2d(:,:)=>NULL()
integer(4),pointer::iseed3d(:,:,:)=>NULL()
type(randomnumberstream),pointer::rs2d(:,:)=>NULL()
type(randomnumberstream),pointer::rs3d(:,:,:)=>NULL()
real(8),pointer::sdev2d(:,:)=>NULL()
real(8),pointer::sdev3d(:,:,:)=>NULL()
logical(4)::lclip
real(8),pointer::aclip2d(:,:)=>NULL()
real(8),pointer::aclip3d(:,:,:)=>NULL()
real(8),pointer::aclipar2d(:,:)=>NULL()
real(8),pointer::aclipar3d(:,:,:)=>NULL()
real(8),pointer::phi2d(:,:)=>NULL()
real(8),pointer::phi3d(:,:,:)=>NULL()
end type
intrinsic::null
private::null
contains
subroutine allocate_arp(ydgeometry,ydarp,ks3d,ks2d,ks1d,kgrib,kseed,ldclip,ldsum)
type(geometry),intent(in)::ydgeometry
type(spectral_arp),intent(out)::ydarp
integer(4),intent(in)::ks3d
integer(4),intent(in)::ks2d
integer(4),intent(in)::ks1d
integer(4),intent(in)::kgrib(1_8:int(ks3d+ks2d,kind=8))
integer(4),intent(in)::kseed
logical(4),intent(in),optional::ldclip
logical(4),intent(in),optional::ldsum
end
subroutine set_seed_arp(ydarp,kseed)
type(spectral_arp),intent(inout)::ydarp
integer(4),intent(in)::kseed
end
subroutine deallocate_arp(ydarp)
type(spectral_arp),intent(inout)::ydarp
end
subroutine set_arp2d(ydarp,sdev2d,phi2d,aclip2d)
type(spectral_arp),intent(inout)::ydarp
real(8),intent(in)::sdev2d(:,:)
real(8),intent(in)::phi2d(:,:)
real(8),intent(in),optional::aclip2d(:,:)
end
subroutine set_arp(ydarp,sdev2d,sdev3d,phi2d,phi3d,aclip2d,aclip3d)
type(spectral_arp),intent(inout)::ydarp
real(8),intent(in)::sdev2d(:,:)
real(8),intent(in)::sdev3d(:,:,:)
real(8),intent(in)::phi2d(:,:)
real(8),intent(in)::phi3d(:,:,:)
real(8),intent(in),optional::aclip2d(:,:)
real(8),intent(in),optional::aclip3d(:,:,:)
end
subroutine evolve_arp(ydarp,karp,ldinit)
type(spectral_arp),intent(inout)::ydarp
integer(4),intent(in),optional::karp
logical(4),intent(in),optional::ldinit
end
subroutine sum_arps(ydarp)
type(spectral_arp),intent(inout)::ydarp
end
end
