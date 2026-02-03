!mod$ v1 sum:74b51ccaf9475fe6
!need$ 775436aa59b0cb65 n spectral_arp_mod
!need$ 74989393e9f80743 n spectral_fields_mod
!need$ 02fa50acb5949c1e n random_numbers_mix
!need$ bdbfc04e27b91448 n spectral_fields_oper_mod
!need$ 53043a6cfafbf68a n geometry_mod
!need$ 99f7ec52259902ea n yomhook
!need$ fe3180dd7f22d4c1 n parkind1
module spectral_spg_mod
use geometry_mod,only:geometry
use parkind1,only:jpim
use parkind1,only:jprb
use parkind1,only:jprd
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use spectral_arp_mod,only:spectral_arp
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
private::spectral_arp
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
type::spectral_spg
type(spectral_field)::sf(1_8:3_8)
end type
contains
subroutine allocate_spg(ydgeometry,ydspg,ks3d,ks2d,ks1d,kgrib)
type(geometry),intent(in)::ydgeometry
type(spectral_spg),intent(out)::ydspg
integer(4),intent(in)::ks3d
integer(4),intent(in)::ks2d
integer(4),intent(in)::ks1d
integer(4),intent(in)::kgrib(1_8:int(ks3d+ks2d,kind=8))
end
subroutine deallocate_spg(ydspg)
type(spectral_spg),intent(inout)::ydspg
end
subroutine evolve_spg(ydarp,ydspg,pspgq,pspgsigma,pspglambda,pspgmu,pspga_dt_max,pspga_dt_min,psdev,pspgtdt,karp,kmaxsubsteps,ldinit)
type(spectral_arp),intent(inout)::ydarp
type(spectral_spg),intent(inout)::ydspg
real(8),intent(in)::pspgq
real(8),intent(in)::pspgsigma
real(8),intent(in)::pspglambda
real(8),intent(in)::pspgmu
real(8),intent(in)::pspga_dt_max
real(8),intent(in)::pspga_dt_min
real(8),intent(in)::psdev
real(8),intent(in)::pspgtdt
integer(4),intent(in),optional::karp
integer(4),intent(in),optional::kmaxsubsteps
logical(4),intent(in),optional::ldinit
end
subroutine spgsolver(llinit,jn,im,jir,inn,spgnmax,spgmmax,maxsubsteps,q,sigma,lambda,mu,a_dt_max,a_dt_min,tdt,randnum,p1,p2,p3)
logical(4),intent(in),optional::llinit
integer(4),intent(in)::jn
integer(4),intent(in)::im
integer(4),intent(in)::jir
integer(4),intent(in)::inn
integer(4),intent(in)::spgnmax
integer(4),intent(in)::spgmmax
integer(4),intent(in)::maxsubsteps
real(8),intent(in)::q
real(8),intent(in)::sigma
real(8),intent(in)::lambda
real(8),intent(in)::mu
real(8),intent(in)::a_dt_max
real(8),intent(in)::a_dt_min
real(8),intent(in)::tdt
real(8),intent(inout)::randnum(:)
real(8),intent(inout)::p1
real(8),intent(inout)::p2
real(8),intent(inout)::p3
end
subroutine spgtrans(jn,im,jir,inn,spgnmax,spgmmax,q,lambda,mu,a_dt_max,a_dt_min,tdt,a1,rep,ren,imp,imn)
integer(4),intent(in)::jn
integer(4),intent(in)::im
integer(4),intent(in)::jir
integer(4),intent(in)::inn
integer(4),intent(in)::spgnmax
integer(4),intent(in)::spgmmax
real(8),intent(in)::q
real(8),intent(in)::lambda
real(8),intent(in)::mu
real(8),intent(in)::a_dt_max
real(8),intent(in)::a_dt_min
real(8),intent(in)::tdt
real(8),intent(out)::a1
real(8),intent(in)::rep
real(8),intent(in)::ren
real(8),intent(in)::imp
real(8),intent(in)::imn
end
subroutine calc_corr(a_mnl,time,corr)
real(8),intent(in)::a_mnl
real(8),intent(in)::time
real(8),intent(out)::corr
end
end
