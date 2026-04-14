!mod$ v1 sum:fac01a461819e988
!need$ 361d06fccc280491 n field_module
!need$ fe3180dd7f22d4c1 n parkind1
module spectral_fields_data
use parkind1,only:jpim
use parkind1,only:jprb
use field_module,only:field_1rb
use field_module,only:field_1rb_ptr
use field_module,only:field_1rd
use field_module,only:field_1rd_ptr
use field_module,only:field_2rb
use field_module,only:field_2rb_ptr
use field_module,only:field_2rd
use field_module,only:field_2rd_ptr
use field_module,only:field_2rb_view
use field_module,only:field_2rd_view
use field_module,only:field_3rb
use field_module,only:field_3rb_ptr
use field_module,only:field_3rd
use field_module,only:field_3rd_ptr
use field_module,only:field_3rb_view
use field_module,only:field_3rd_view
use field_module,only:field_4rb
use field_module,only:field_4rb_ptr
use field_module,only:field_4rd
use field_module,only:field_4rd_ptr
use field_module,only:field_4rb_view
use field_module,only:field_4rd_view
use field_module,only:field_5rb
use field_module,only:field_5rb_ptr
use field_module,only:field_5rd
use field_module,only:field_5rd_ptr
use field_module,only:field_5rb_view
use field_module,only:field_5rd_view
use field_module,only:field_1rm
use field_module,only:field_1rm_ptr
use field_module,only:field_2rm
use field_module,only:field_2rm_ptr
use field_module,only:field_2rm_view
use field_module,only:field_3rm
use field_module,only:field_3rm_ptr
use field_module,only:field_3rm_view
use field_module,only:field_4rm
use field_module,only:field_4rm_ptr
use field_module,only:field_4rm_view
use field_module,only:field_5rm
use field_module,only:field_5rm_ptr
use field_module,only:field_5rm_view
use field_module,only:field_1im
use field_module,only:field_1im_ptr
use field_module,only:field_2im
use field_module,only:field_2im_ptr
use field_module,only:field_2im_view
use field_module,only:field_3im
use field_module,only:field_3im_ptr
use field_module,only:field_3im_view
use field_module,only:field_4im
use field_module,only:field_4im_ptr
use field_module,only:field_4im_view
use field_module,only:field_5im
use field_module,only:field_5im_ptr
use field_module,only:field_5im_view
use field_module,only:field_1lm
use field_module,only:field_1lm_ptr
use field_module,only:field_2lm
use field_module,only:field_2lm_ptr
use field_module,only:field_2lm_view
use field_module,only:field_3lm
use field_module,only:field_3lm_ptr
use field_module,only:field_3lm_view
use field_module,only:field_4lm
use field_module,only:field_4lm_ptr
use field_module,only:field_4lm_view
use field_module,only:field_5lm
use field_module,only:field_5lm_ptr
use field_module,only:field_5lm_view
type::spectral_field
real(8),allocatable::sp2d(:,:)
real(8),allocatable::sp3d(:,:,:)
real(8),allocatable::sp1d(:,:)
integer(4)::nsmax
integer(4)::nmsmax
integer(4)::ns2d
integer(4)::ns3d
integer(4)::ns1d
integer(4)::ns2g
integer(4)::nflevl
integer(4)::nflevg
integer(4)::nspec2
integer(4)::nspec2g
integer(4)::nump
integer(4)::nspsizel
integer(4)::nspsizeg
integer(4),allocatable::ns2l(:)
integer(4),allocatable::nasm0(:)
integer(4),allocatable::nasm0g(:)
integer(4),allocatable::nesm0(:)
integer(4),allocatable::nesm0g(:)
integer(4),allocatable::ncpl4m(:)
integer(4),allocatable::numpp(:)
integer(4),allocatable::nallms(:)
integer(4),allocatable::ms_proc(:,:)
integer(4),allocatable::numll(:)
integer(4),allocatable::nptrll(:)
integer(4),allocatable::npsurf(:)
integer(4),allocatable::nptrms(:)
integer(4),allocatable::myms(:)
integer(4),allocatable::mylevs(:)
integer(4),allocatable::ngrib(:)
integer(4),pointer::ngrib2(:)=>NULL()
integer(4),pointer::ngrib3(:)=>NULL()
real(8),pointer::vor(:,:)=>NULL()
class(field_2rb),pointer::f_vor=>NULL()
real(8),pointer::div(:,:)=>NULL()
class(field_2rb),pointer::f_div=>NULL()
real(8),pointer::t(:,:)=>NULL()
class(field_2rb),pointer::f_t=>NULL()
real(8),pointer::q(:,:)=>NULL()
class(field_2rb),pointer::f_q=>NULL()
real(8),pointer::o3(:,:)=>NULL()
class(field_2rb),pointer::f_o3=>NULL()
real(8),pointer::l(:,:)=>NULL()
class(field_2rb),pointer::f_l=>NULL()
real(8),pointer::i(:,:)=>NULL()
class(field_2rb),pointer::f_i=>NULL()
real(8),pointer::spd(:,:)=>NULL()
class(field_2rb),pointer::f_spd=>NULL()
real(8),pointer::svd(:,:)=>NULL()
class(field_2rb),pointer::f_svd=>NULL()
real(8),pointer::nhx(:,:)=>NULL()
class(field_2rb),pointer::f_nhx=>NULL()
real(8),pointer::sp(:)=>NULL()
class(field_1rb),pointer::f_sp=>NULL()
real(8),pointer::orog(:)=>NULL()
class(field_1rb),pointer::f_orog=>NULL()
real(8),pointer::scal(:,:,:)=>NULL()
real(8),pointer::gfl(:,:,:)=>NULL()
real(8),pointer::hv(:,:,:)=>NULL()
real(8),pointer::ub(:)=>NULL()
real(8),pointer::vb(:)=>NULL()
end type
intrinsic::null
integer(4)::nprtrv
integer(4)::nprtrw
integer(4)::mysetv
integer(4)::mysetw
integer(4)::ngrbvo
integer(4)::ngrbd
integer(4)::ngrbt
integer(4)::ngrbq
integer(4)::ngrbo3
integer(4)::ngrblnsp
integer(4)::ngrbclwc
integer(4)::ngrbciwc
integer(4)::ngrb118
integer(4)::ngrb119
integer(4)::ngrbnhx
integer(4)::ngrbz
integer(4)::nulout
logical(4)::lelam
end
