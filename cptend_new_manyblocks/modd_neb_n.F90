!mod$ v1 sum:2adff6fcc34baac3
!need$ 25b02d753545073c n modd_parameters
module modd_neb_n
use modd_parameters,only:jpmodelmax
type::neb_t
real(8)::xtminmix
real(8)::xtmaxmix
logical(4)::lhgt_qs
character(1_4,1)::cfrac_ice_adjust
character(1_4,1)::cfrac_ice_shallow_mf
real(8)::vsigqsat
character(80_4,1)::ccondens
character(4_4,1)::clambda3
logical(4)::lstatnw
logical(4)::lsigmas
logical(4)::lsubg_cond
logical(4)::lcondborn
end type
type(neb_t),save,target::neb_model(1_8:8_8)
type(neb_t),pointer,save::nebn
intrinsic::null
real(8),pointer::xtminmix
real(8),pointer::xtmaxmix
logical(4),pointer::lhgt_qs
character(1_4,1),pointer::cfrac_ice_adjust
character(1_4,1),pointer::cfrac_ice_shallow_mf
real(8),pointer::vsigqsat
character(80_4,1),pointer::ccondens
character(4_4,1),pointer::clambda3
logical(4),pointer::lstatnw
logical(4),pointer::lsigmas
logical(4),pointer::lsubg_cond
logical(4),pointer::lcondborn
namelist/nam_nebn/xtminmix,xtmaxmix,lhgt_qs,cfrac_ice_adjust,cfrac_ice_shallow_mf,vsigqsat,ccondens,clambda3,lstatnw,lsigmas,lsubg_cond,lcondborn
contains
subroutine neb_goto_model(kfrom,kto)
integer(4),intent(in)::kfrom
integer(4),intent(in)::kto
end
subroutine nebn_init(hprogram,tfilenam,ldneednam,kluout,lddefaultval,ldreadnam,ldcheck,kprint)
use modd_io,only:tfiledata
character(6_4,1),intent(in)::hprogram
type(tfiledata),intent(in)::tfilenam
logical(4),intent(in)::ldneednam
integer(4),intent(in)::kluout
logical(4),intent(in),optional::lddefaultval
logical(4),intent(in),optional::ldreadnam
logical(4),intent(in),optional::ldcheck
integer(4),intent(in),optional::kprint
end
end
