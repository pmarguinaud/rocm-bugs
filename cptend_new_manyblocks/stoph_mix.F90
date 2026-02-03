!mod$ v1 sum:84b6cac4990167bf
!need$ fe3180dd7f22d4c1 n parkind1
module stoph_mix
use parkind1,only:jpim
use parkind1,only:jprb
type::tstoph
real(8),allocatable::rstophca(:)
real(8),allocatable::sqrtcorr(:,:)
real(8),allocatable::spstream(:,:)
real(8),allocatable::spvelpot(:,:)
real(8),allocatable::spstream_forc(:,:)
real(8),allocatable::spvelpot_forc(:,:)
real(8),allocatable::spg_amp(:)
real(8),allocatable::alpha_sto(:)
real(8),allocatable::oneminalpha_nfrspbs(:)
real(8),allocatable::rsmooth(:)
real(8),allocatable::gpstream(:,:,:)
real(8),allocatable::gpvelpot(:,:,:)
real(8),allocatable::gptotdiss(:,:,:)
real(8),allocatable::gptotdiss_smooth(:,:,:)
real(8),allocatable::gpvortgrad(:,:,:)
integer(4),allocatable::mcell(:,:)
real(8),allocatable::rwght(:,:)
integer(4)::nfrstoph_spbs
integer(4)::nfrstoph_spbs_pat
integer(4)::nfrstoph_vc
integer(4)::nforcestart
integer(4)::nforceend
integer(4)::nstochopt
real(8)::alpha_deep_conv
real(8)::alpha_shal_conv
real(8)::sldissfac
real(8)::ratio_backscat
real(8)::rspbs_tau
real(8)::ratio_backscat_con2num
real(8)::rexponent
real(8)::vc_con
real(8)::rflux_det_clip
real(8)::biharm
real(8)::rsmoothscale
real(8)::rsigma2_eps
integer(4)::incut
real(8)::amagstoph_casbs
real(8)::adlatstoph_ca
real(8)::adlonstoph_ca
logical(4)::lstoph_spbs
logical(4)::lstoph_spbs_fast
logical(4)::lextrafields
logical(4)::lstoph_jbcor
logical(4)::lstoph_uncorr
logical(4)::lstoph_uniform
logical(4)::lstoph_spbs_vort
logical(4)::lstoph_rvp
logical(4)::lstoph_rvpold
logical(4)::lstoph_taper
logical(4)::lstoph_ini
logical(4)::lstoph_casbs
logical(4)::lvortcon
logical(4)::lforcenl
logical(4)::lstoph_varalpha
logical(4)::lstoph_gauss
logical(4)::lspbs_dissgw
logical(4)::lspbs_dissnum
logical(4)::lspbs_disscu
logical(4)::lspbs_dissnum_ct
logical(4)::lspbsnorm
logical(4)::lspbsdiss
real(8),allocatable::spdp(:)
integer(4),allocatable::nimran(:)
integer(4)::nsmaxspbs
real(8)::rvp_mulmin
real(8)::rvp_mulmax
real(8)::rvp_mulexp
real(8)::rvp_mulnsmax
real(8),allocatable::rvp_mulfact(:)
real(8)::rvp_mul_a
real(8)::rvp_mul_b
real(8)::rvp_mul_c
real(8)::rvp_mul_d
real(8)::rvp_mul_1
real(8)::rvp_mul_2
real(8),allocatable::rvp_mul(:)
real(8)::taper_sigmatop
real(8)::taper_sigmabot
real(8)::taper0
real(8)::taper1
real(8)::taper2
real(8)::taper3
real(8),allocatable::taper_fact(:)
logical(4)::lstoph_spbs_t
real(8)::rexponent_t
real(8)::ratio_ape2ke
real(8),allocatable::sptemp(:,:)
real(8),allocatable::sptemp_forc(:,:)
real(8),allocatable::spg_amp_t(:)
real(8),allocatable::alpha_sto_t(:)
real(8),allocatable::oneminalpha_nfrspbs_t(:)
real(8),allocatable::gptemp(:,:,:)
real(8)::rvp_mulmin_t
real(8)::rvp_mulmax_t
real(8)::rvp_mulexp_t
real(8)::rvp_mulnsmax_t
real(8),allocatable::rvp_mulfact_t(:)
real(8)::rvp_mul_a_t
real(8)::rvp_mul_b_t
real(8)::rvp_mul_c_t
real(8)::rvp_mul_d_t
real(8)::rvp_mul_1_t
real(8)::rvp_mul_2_t
real(8),allocatable::rvp_mul_t(:)
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine initialize_cells(yd_random_streams,kcell,pwght,kiip,kjjp)
use yomrandom_streams,only:trandom_streams
type(trandom_streams),intent(inout)::yd_random_streams
integer(4),intent(in)::kiip
integer(4),intent(in)::kjjp
integer(4),intent(inout)::kcell(1_8:int(4_4*kiip,kind=8),1_8:int(4_4*kjjp,kind=8))
real(8),intent(inout)::pwght(1_8:int(kiip,kind=8),1_8:int(kjjp,kind=8))
end
subroutine weighting_field(kcell,pwght,kiip,kjjp)
integer(4),intent(in)::kiip
integer(4),intent(in)::kjjp
integer(4),intent(inout)::kcell(1_8:int(4_4*kiip,kind=8),1_8:int(4_4*kjjp,kind=8))
real(8),intent(inout)::pwght(1_8:int(kiip,kind=8),1_8:int(kjjp,kind=8))
end
subroutine smooth121(pfld,kiip,kjjp)
integer(4),intent(in)::kiip
integer(4),intent(in)::kjjp
real(8),intent(inout)::pfld(1_8:int(kiip,kind=8),1_8:int(kjjp,kind=8))
end
subroutine update_cells(kcell,kcells,kiip,kjjp)
integer(4),intent(in)::kiip
integer(4),intent(in)::kjjp
integer(4),intent(inout)::kcell(1_8:int(4_4*kiip,kind=8),1_8:int(4_4*kjjp,kind=8))
integer(4),intent(inout)::kcells(0_8:int(4_4*kiip+1_4,kind=8),0_8:int(4_4*kjjp+1_4,kind=8))
end
subroutine wrap_cells(kcells,kiip,kjjp)
integer(4),intent(in)::kiip
integer(4),intent(in)::kjjp
integer(4),intent(inout)::kcells(0_8:int(4_4*kiip+1_4,kind=8),0_8:int(4_4*kjjp+1_4,kind=8))
end
function neighbour_count(kcol,krow,kcells,kiip,kjjp)
integer(4),intent(in)::kcol
integer(4),intent(in)::krow
integer(4),intent(in)::kiip
integer(4),intent(in)::kjjp
integer(4),intent(inout)::kcells(0_8:int(4_4*kiip+1_4,kind=8),0_8:int(4_4*kjjp+1_4,kind=8))
integer(4)::neighbour_count
end
function fertile_neighbour_count(kcol,krow,kcells,kiip,kjjp)
integer(4),intent(in)::kcol
integer(4),intent(in)::krow
integer(4),intent(in)::kiip
integer(4),intent(in)::kjjp
integer(4),intent(inout)::kcells(0_8:int(4_4*kiip+1_4,kind=8),0_8:int(4_4*kjjp+1_4,kind=8))
integer(4)::fertile_neighbour_count
end
function sigtofact(psig)
real(8),intent(in)::psig
real(8)::sigtofact
end
subroutine spnormbs(ydgeometry,ydstoph,ydrip,pvor,pdiv,pvorforc,pdivforc,ldetail)
use geometry_mod,only:geometry
use yomrip,only:trip
type(geometry),intent(in)::ydgeometry
type(tstoph),intent(in)::ydstoph
type(trip),intent(in)::ydrip
real(8),intent(in)::pvor(:,:)
real(8),intent(in)::pdiv(:,:)
real(8),intent(in)::pvorforc(:,:)
real(8),intent(in)::pdivforc(:,:)
logical(4),intent(in)::ldetail
end
subroutine spnormei(ydlap,yddim,px,pxforc,psm,klev)
use yomdim,only:tdim
use yomlap,only:tlap
type(tlap),intent(in)::ydlap
type(tdim),intent(in)::yddim
real(8),intent(in)::px(:,:)
real(8),intent(in)::pxforc(:,:)
real(8),intent(out)::psm(:,:)
integer(4),intent(in)::klev
end
subroutine gmtotdiss(ydgeometry,ydstoph,ydrip,pdiss,ldetail)
use geometry_mod,only:geometry
use yomrip,only:trip
type(geometry),intent(in)::ydgeometry
type(tstoph),intent(in)::ydstoph
type(trip),intent(in)::ydrip
real(8),intent(in)::pdiss(:,:)
logical(4),intent(in)::ldetail
end
subroutine print_configuration(self,kdepth,koutno)
class(tstoph),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
