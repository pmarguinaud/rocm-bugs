!mod$ v1 sum:bdbfc04e27b91448
!need$ 99f7ec52259902ea n yomhook
!need$ fac01a461819e988 n spectral_fields_data
!need$ fe3180dd7f22d4c1 n parkind1
module spectral_fields_oper_mod
use parkind1,only:jpim
use parkind1,only:jprb
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use spectral_fields_data,only:spectral_field
use spectral_fields_data,only:lelam
use yomhook,only:yomhook$yomhook$dr_hook_default8=>dr_hook_default8
private::jpim
private::jprb
private::lhook
private::dr_hook
private::jphook
private::spectral_field
private::lelam
private::assign_scalar_sp
private::assign_sp_sp
private::assign_ar_sp
private::assign_sp_ar
private::equiv_spec
private::nequiv_spec
private::self_add_sp
private::self_axpy_sp
private::self_sub_sp
private::self_mul_sp
private::self_mul_scal
private::indxfind
interface assignment(=)
procedure::assign_sp_sp
procedure::assign_scalar_sp
procedure::assign_ar_sp
procedure::assign_sp_ar
end interface
interface operator(.eqv.)
procedure::equiv_spec
end interface
interface operator(.neqv.)
procedure::nequiv_spec
end interface
interface self_add
procedure::self_add_sp
end interface
interface self_sub
procedure::self_sub_sp
end interface
interface self_mul
procedure::self_mul_sp
procedure::self_mul_scal
end interface
interface self_axpy
procedure::self_axpy_sp
end interface
contains
subroutine assign_scalar_sp(ydsp,pval)
type(spectral_field),intent(inout)::ydsp
real(8),intent(in)::pval
end
subroutine assign_sp_sp(ydsp1,ydsp2)
type(spectral_field),intent(inout)::ydsp1
type(spectral_field),intent(in)::ydsp2
end
subroutine assign_ar_sp(ydsp,pflat)
type(spectral_field),intent(inout)::ydsp
real(8),intent(in)::pflat(:)
end
subroutine assign_sp_ar(pflat,ydsp)
real(8),intent(out)::pflat(:)
type(spectral_field),intent(in)::ydsp
end
function equiv_spec(ydsp1,ydsp2)
type(spectral_field),intent(in)::ydsp1
type(spectral_field),intent(in)::ydsp2
logical(4)::equiv_spec
end
function nequiv_spec(ydsp1,ydsp2)
type(spectral_field),intent(in)::ydsp1
type(spectral_field),intent(in)::ydsp2
logical(4)::nequiv_spec
end
subroutine self_add_sp(yda,ydb)
type(spectral_field),intent(inout)::yda
type(spectral_field),intent(in)::ydb
end
subroutine self_axpy_sp(yda,ydb,pz)
type(spectral_field),intent(inout)::yda
type(spectral_field),intent(in)::ydb
real(8),intent(in)::pz
end
subroutine self_sub_sp(yda,ydb)
type(spectral_field),intent(inout)::yda
type(spectral_field),intent(in)::ydb
end
subroutine self_mul_sp(yda,ydb)
type(spectral_field),intent(inout)::yda
type(spectral_field),intent(in)::ydb
end
subroutine self_mul_scal(yda,pb)
type(spectral_field),intent(inout)::yda
real(8),intent(in)::pb
end
function indxfind(karray,kval)
integer(4),intent(in)::karray(:)
integer(4),intent(in)::kval
integer(4)::indxfind
end
end
