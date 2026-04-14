!mod$ v1 sum:74989393e9f80743
!need$ 53043a6cfafbf68a n geometry_mod
!need$ a298b913decd0880 n spectral_variables_mod
!need$ bdbfc04e27b91448 n spectral_fields_oper_mod
!need$ 6001be3656890dfb n spectral_fields_para_mod
!need$ fac01a461819e988 n spectral_fields_data
!need$ fe3180dd7f22d4c1 n parkind1
!need$ 99f7ec52259902ea n yomhook
module spectral_fields_mod
use parkind1,only:jpim
use parkind1,only:jprb
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use geometry_mod,only:geometry
use spectral_variables_mod,only:spectral_variables
use spectral_fields_data,only:spectral_field
use spectral_fields_data,only:nprtrv
use spectral_fields_data,only:nprtrw
use spectral_fields_data,only:mysetv
use spectral_fields_data,only:mysetw
use spectral_fields_data,only:lelam
use spectral_fields_data,only:nulout
use spectral_fields_data,only:ngrbvo
use spectral_fields_data,only:ngrbd
use spectral_fields_data,only:ngrbt
use spectral_fields_data,only:ngrbq
use spectral_fields_data,only:ngrbo3
use spectral_fields_data,only:ngrblnsp
use spectral_fields_data,only:ngrbz
use spectral_fields_data,only:ngrbclwc
use spectral_fields_data,only:ngrbciwc
use spectral_fields_data,only:ngrb118
use spectral_fields_data,only:ngrb119
use spectral_fields_data,only:ngrbnhx
use spectral_fields_oper_mod,only:assignment(=)
use spectral_fields_oper_mod,only:operator(.eqv.)
use spectral_fields_oper_mod,only:operator(.neqv.)
use spectral_fields_oper_mod,only:self_add
use spectral_fields_oper_mod,only:self_sub
use spectral_fields_oper_mod,only:self_mul
use spectral_fields_oper_mod,only:self_axpy
use spectral_fields_para_mod,only:dot_product
use spectral_fields_para_mod,only:spectral_norm
use spectral_fields_para_mod,only:spectral_norm_levs
use spectral_fields_para_mod,only:spectral_max_levs
use yomhook,only:yomhook$yomhook$dr_hook_default8=>dr_hook_default8
private::jpim
private::jprb
private::lhook
private::dr_hook
private::jphook
private::geometry
private::spectral_variables
private::nprtrv
private::nprtrw
private::mysetv
private::mysetw
private::lelam
private::nulout
private::ngrbvo
private::ngrbd
private::ngrbt
private::ngrbq
private::ngrbo3
private::ngrblnsp
private::ngrbz
private::ngrbclwc
private::ngrbciwc
private::ngrb118
private::ngrb119
private::ngrbnhx
real(8),target::spectral_dummy2d(1_8:1_8)
real(8),target::spectral_dummy3d(1_8:1_8,1_8:1_8)
real(8),target::spectral_dummy4d(1_8:1_8,1_8:1_8,1_8:1_8)
type::spectral_field_container
class(spectral_field),pointer::obj
end type
private::create_copy
interface allocate_spec
procedure::create_spec
procedure::create_copy
procedure::alloc_spec
end interface
contains
subroutine setup_spec(kprtrv,kprtrw,ksetv,ksetw,ldlam,kulout,kgrbvo,kgrbd,kgrbt,kgrbq,kgrbo3,kgrblnsp,kgrbz,kgrbclwc,kgrbciwc,kgrb118,kgrb119,kgrbnhx)
integer(4),intent(in)::kprtrv
integer(4),intent(in)::kprtrw
integer(4),intent(in)::ksetv
integer(4),intent(in)::ksetw
logical(4),intent(in)::ldlam
integer(4),intent(in)::kulout
integer(4),intent(in)::kgrbvo
integer(4),intent(in)::kgrbd
integer(4),intent(in)::kgrbt
integer(4),intent(in)::kgrbq
integer(4),intent(in)::kgrbo3
integer(4),intent(in)::kgrblnsp
integer(4),intent(in)::kgrbz
integer(4),intent(in)::kgrbclwc
integer(4),intent(in)::kgrbciwc
integer(4),intent(in)::kgrb118
integer(4),intent(in)::kgrb119
integer(4),intent(in)::kgrbnhx
end
subroutine wrap_spec(ydsp)
type(spectral_field),intent(inout),target::ydsp
end
subroutine unwrap_spec(ydsp)
type(spectral_field),intent(inout)::ydsp
end
subroutine host_spec(ydsp)
type(spectral_field),intent(inout)::ydsp
end
subroutine alloc_spec(ydsp,ydgeom,ydvar)
type(spectral_field),intent(inout),target::ydsp
type(geometry),intent(in)::ydgeom
type(spectral_variables),intent(in)::ydvar
end
subroutine create_spec(ydsp,kflevl,kflevg,knump,kmyms,ksmax,kmsmax,kallms,kptrms,knumll,kptrll,kpsurf,ks3d,ks2d,kgrib)
type(spectral_field),intent(inout),target::ydsp
integer(4),intent(in)::kflevl
integer(4),intent(in)::kflevg
integer(4),intent(in)::knump
integer(4),intent(in)::kmyms(1_8:int(knump,kind=8))
integer(4),intent(in)::ksmax
integer(4),intent(in)::kmsmax
integer(4),intent(in)::kallms(:)
integer(4),intent(in)::kptrms(1_8:int(nprtrw,kind=8))
integer(4),intent(in)::knumll(1_8:int(nprtrv,kind=8))
integer(4),intent(in)::kptrll(1_8:int(nprtrv,kind=8))
integer(4),intent(in)::kpsurf(1_8:int(nprtrv,kind=8))
integer(4),intent(in)::ks3d
integer(4),intent(in)::ks2d
integer(4),intent(in)::kgrib(1_8:int(ks3d+ks2d,kind=8))
end
subroutine create_copy(ydself,ydother)
type(spectral_field),intent(inout)::ydself
type(spectral_field),intent(in)::ydother
end
function allocated_spec(ydsp)
type(spectral_field),intent(in)::ydsp
logical(4)::allocated_spec
end
subroutine deallocate_spec(ydsp)
type(spectral_field),intent(inout)::ydsp
end
subroutine inq_spec(ydsp,kflevl,kflevg,knump,kmyms,ksmax,kmsmax,kallms,kptrms,knumll,kptrll,kpsurf,ks3d,ks2d)
use spectral_fields_data,only:nprtrw
use spectral_fields_data,only:nprtrv
use spectral_fields_data,only:spectral_field
type(spectral_field),intent(out)::ydsp
integer(4),intent(in)::kflevl
integer(4),intent(in)::kflevg
integer(4),intent(in)::knump
integer(4),intent(in)::kmyms(1_8:int(knump,kind=8))
integer(4),intent(in)::ksmax
integer(4),intent(in)::kmsmax
integer(4),intent(in)::kallms(:)
integer(4),intent(in)::kptrms(1_8:int(nprtrw,kind=8))
integer(4),intent(in)::knumll(1_8:int(nprtrv,kind=8))
integer(4),intent(in)::kptrll(1_8:int(nprtrv,kind=8))
integer(4),intent(in)::kpsurf(1_8:int(nprtrv,kind=8))
integer(4),intent(in)::ks3d
integer(4),intent(in)::ks2d
end
subroutine random_spectral_field(spec,kseed)
type(spectral_field),intent(inout)::spec
integer(4),intent(inout)::kseed
end
end
