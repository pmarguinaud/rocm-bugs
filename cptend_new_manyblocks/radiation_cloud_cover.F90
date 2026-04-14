!mod$ v1 sum:12028d728883f57e
!need$ fe3180dd7f22d4c1 n parkind1
module radiation_cloud_cover
use parkind1,only:jprb
integer(4),parameter::ioverlapmaximumrandom=0_4
integer(4),parameter::ioverlapexponentialrandom=1_4
integer(4),parameter::ioverlapexponential=2_4
character(*,1),parameter::overlapname(0_8:2_8)=[CHARACTER(KIND=1,LEN=7)::"Max-Ran","Exp-Ran","Exp-Exp"]
real(8),parameter::maxcloudfrac=9.99999999999997779553950749686919152736663818359375e-1_8
intrinsic::epsilon
contains
elemental function beta2alpha(beta,frac1,frac2)
real(8),intent(in)::beta
real(8),intent(in)::frac1
real(8),intent(in)::frac2
real(8)::beta2alpha
end
function cloud_cover(nlev,i_overlap_scheme,frac,overlap_param,is_beta_overlap)
integer(4),intent(in)::nlev
integer(4),intent(in)::i_overlap_scheme
real(8),intent(in)::frac(1_8:int(nlev,kind=8))
real(8),intent(in)::overlap_param(1_8:int(nlev-1_4,kind=8))
logical(4),intent(in),optional::is_beta_overlap
real(8)::cloud_cover
end
subroutine cum_cloud_cover_max_ran(nlev,frac,cum_cloud_cover,pair_cloud_cover)
integer(4),intent(in)::nlev
real(8),intent(in)::frac(1_8:int(nlev,kind=8))
real(8),intent(out)::cum_cloud_cover(1_8:int(nlev,kind=8))
real(8),intent(out)::pair_cloud_cover(1_8:int(nlev-1_4,kind=8))
end
subroutine cum_cloud_cover_exp_ran(nlev,frac,overlap_param,cum_cloud_cover,pair_cloud_cover,is_beta_overlap)
integer(4),intent(in)::nlev
real(8),intent(in)::frac(1_8:int(nlev,kind=8))
real(8),intent(in)::overlap_param(1_8:int(nlev-1_4,kind=8))
real(8),intent(out)::cum_cloud_cover(1_8:int(nlev,kind=8))
real(8),intent(out)::pair_cloud_cover(1_8:int(nlev-1_4,kind=8))
logical(4),intent(in),optional::is_beta_overlap
end
subroutine cum_cloud_cover_exp_exp(nlev,frac,overlap_param,cum_cloud_cover,pair_cloud_cover,is_beta_overlap)
integer(4),intent(in)::nlev
real(8),intent(in)::frac(1_8:int(nlev,kind=8))
real(8),intent(in)::overlap_param(1_8:int(nlev-1_4,kind=8))
real(8),intent(out)::cum_cloud_cover(1_8:int(nlev,kind=8))
real(8),intent(out)::pair_cloud_cover(1_8:int(nlev-1_4,kind=8))
logical(4),intent(in),optional::is_beta_overlap
end
end
