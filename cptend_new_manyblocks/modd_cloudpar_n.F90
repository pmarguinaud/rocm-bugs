!mod$ v1 sum:dd13c8f448279d4f
!need$ 25b02d753545073c n modd_parameters
module modd_cloudpar_n
use modd_parameters,only:jpmodelmax
type::cloudpar_t
integer(4)::nsplitr
integer(4)::nsplitg
end type
type(cloudpar_t),save,target::cloudpar_model(1_8:8_8)
type(cloudpar_t),pointer,save::cloudparn
intrinsic::null
integer(4),pointer::nsplitr
integer(4),pointer::nsplitg
contains
subroutine cloudpar_goto_model(kfrom,kto)
integer(4),intent(in)::kfrom
integer(4),intent(in)::kto
end
end
