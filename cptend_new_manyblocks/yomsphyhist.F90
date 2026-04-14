!mod$ v1 sum:a6debf48650cc284
!need$ fe3180dd7f22d4c1 n parkind1
module yomsphyhist
use parkind1,only:jprb
type::sphys_hist_type
real(8),pointer::ya5(:,:)=>NULL()
real(8),pointer::yl5(:,:)=>NULL()
real(8),pointer::yi5(:,:)=>NULL()
real(8),pointer::radlwm(:,:)=>NULL()
real(8),pointer::radlwm5(:,:)=>NULL()
real(8),pointer::tgwdwmsu(:,:)=>NULL()
real(8),pointer::tgwdwmsu5(:,:)=>NULL()
real(8),pointer::tgwdwmsv(:,:)=>NULL()
real(8),pointer::tgwdwmsv5(:,:)=>NULL()
real(8),pointer::diftq_s(:)=>NULL()
real(8),pointer::diftq_s5(:)=>NULL()
real(8),pointer::difts_s(:)=>NULL()
real(8),pointer::difts_s5(:)=>NULL()
real(8),pointer::tenu_vd9(:,:)=>NULL()
real(8),pointer::tenv_vd9(:,:)=>NULL()
real(8),pointer::tent_vd9(:,:)=>NULL()
real(8),pointer::tenq_vd9(:,:)=>NULL()
end type
intrinsic::null
end
