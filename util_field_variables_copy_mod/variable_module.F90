!mod$ v1 sum:2ed18a7587b74ab0
!need$ b6fe29095bba01a9 n field_module
!need$ 728a2604fdd3f4c0 n yom_ygfl
!need$ fe3180dd7f22d4c1 n parkind1
module variable_module
use parkind1,only:jpim
use parkind1,only:jprb
use field_module,only:field_2rb
use field_module,only:field_3rb
use field_module,only:field_4rb
use yom_ygfl,only:type_gfl_comp
type,abstract::variable_base
character(16_4,1)::name
character(16_4,1)::cname="                "
integer(4)::igrbcode=-999_4
logical(4)::lactive=.false._4
logical(4)::lt1=.false._4
logical(4)::lt9=.false._4
logical(4)::lph9=.false._4
logical(4)::ldl=.false._4
logical(4)::ldm=.false._4
logical(4)::ldl9=.false._4
logical(4)::ldm9=.false._4
logical(4)::lpc_ph=.false._4
logical(4)::ladv=.false._4
logical(4)::lgp=.false._4
logical(4)::lwater=.false._4
logical(4)::lthermact=.false._4
logical(4)::lcders=.false._4
real(8)::rcp=0._8
real(8)::r=0._8
type(type_gfl_comp)::ycomp
contains
procedure(variable_base_final),deferred::final
end type
abstract interface
subroutine variable_base_final(self)
import::variable_base
class(variable_base)::self
end
end interface
type,extends(variable_base)::variable_2rb
real(8),contiguous,pointer::p(:)=>NULL()
real(8),contiguous,pointer::t0(:)=>NULL()
real(8),contiguous,pointer::t1(:)=>NULL()
real(8),contiguous,pointer::t9(:)=>NULL()
real(8),contiguous,pointer::ph9(:)=>NULL()
real(8),contiguous,pointer::dl(:)=>NULL()
real(8),contiguous,pointer::dm(:)=>NULL()
real(8),contiguous,pointer::dl9(:)=>NULL()
real(8),contiguous,pointer::dm9(:)=>NULL()
real(8),contiguous,pointer::pc_ph(:)=>NULL()
class(field_2rb),pointer::ft0=>NULL()
class(field_2rb),pointer::ft1=>NULL()
class(field_2rb),pointer::ft9=>NULL()
class(field_2rb),pointer::fph9=>NULL()
class(field_2rb),pointer::fdl=>NULL()
class(field_2rb),pointer::fdm=>NULL()
class(field_2rb),pointer::fdl9=>NULL()
class(field_2rb),pointer::fdm9=>NULL()
class(field_2rb),pointer::fpc_ph=>NULL()
contains
procedure::update_view=>variable_2rb_update_view
procedure::final=>variable_2rb_final
procedure::ph9tot0=>variable_2rb_ph9tot0
procedure::ph9tot9=>variable_2rb_ph9tot9
procedure::clone=>variable_2rb_clone
procedure::assign_variable=>variable_2rb_assign_variable_2rb
generic::assign=>assign_variable
end type
intrinsic::null
type,extends(variable_base)::variable_3rb
real(8),contiguous,pointer::p(:,:)=>NULL()
real(8),contiguous,pointer::t0(:,:)=>NULL()
real(8),contiguous,pointer::t1(:,:)=>NULL()
real(8),contiguous,pointer::t9(:,:)=>NULL()
real(8),contiguous,pointer::ph9(:,:)=>NULL()
real(8),contiguous,pointer::dl(:,:)=>NULL()
real(8),contiguous,pointer::dm(:,:)=>NULL()
real(8),contiguous,pointer::dl9(:,:)=>NULL()
real(8),contiguous,pointer::dm9(:,:)=>NULL()
real(8),contiguous,pointer::pc_ph(:,:)=>NULL()
class(field_3rb),pointer::ft0=>NULL()
class(field_3rb),pointer::ft1=>NULL()
class(field_3rb),pointer::ft9=>NULL()
class(field_3rb),pointer::fph9=>NULL()
class(field_3rb),pointer::fdl=>NULL()
class(field_3rb),pointer::fdm=>NULL()
class(field_3rb),pointer::fdl9=>NULL()
class(field_3rb),pointer::fdm9=>NULL()
class(field_3rb),pointer::fpc_ph=>NULL()
contains
procedure::update_view=>variable_3rb_update_view
procedure::final=>variable_3rb_final
procedure::ph9tot0=>variable_3rb_ph9tot0
procedure::ph9tot9=>variable_3rb_ph9tot9
procedure::clone=>variable_3rb_clone
procedure::assign_variable=>variable_3rb_assign_variable_3rb
generic::assign=>assign_variable
end type
type,extends(variable_base)::variable_4rb
real(8),contiguous,pointer::p(:,:,:)=>NULL()
real(8),contiguous,pointer::t0(:,:,:)=>NULL()
real(8),contiguous,pointer::t1(:,:,:)=>NULL()
real(8),contiguous,pointer::t9(:,:,:)=>NULL()
real(8),contiguous,pointer::ph9(:,:,:)=>NULL()
real(8),contiguous,pointer::dl(:,:,:)=>NULL()
real(8),contiguous,pointer::dm(:,:,:)=>NULL()
real(8),contiguous,pointer::dl9(:,:,:)=>NULL()
real(8),contiguous,pointer::dm9(:,:,:)=>NULL()
real(8),contiguous,pointer::pc_ph(:,:,:)=>NULL()
class(field_4rb),pointer::ft0=>NULL()
class(field_4rb),pointer::ft1=>NULL()
class(field_4rb),pointer::ft9=>NULL()
class(field_4rb),pointer::fph9=>NULL()
class(field_4rb),pointer::fdl=>NULL()
class(field_4rb),pointer::fdm=>NULL()
class(field_4rb),pointer::fdl9=>NULL()
class(field_4rb),pointer::fdm9=>NULL()
class(field_4rb),pointer::fpc_ph=>NULL()
contains
procedure::update_view=>variable_4rb_update_view
procedure::final=>variable_4rb_final
procedure::ph9tot0=>variable_4rb_ph9tot0
procedure::ph9tot9=>variable_4rb_ph9tot9
procedure::clone=>variable_4rb_clone
procedure::assign_variable=>variable_4rb_assign_variable_4rb
generic::assign=>assign_variable
end type
type::variable_clone_opts
logical(4)::lt1=.true._4
logical(4)::lt0=.true._4
logical(4)::lt9=.true._4
logical(4)::lder=.true._4
logical(4)::lacc=.false._4
end type
interface
module subroutine variable_2rb_clone(self,ydvar,ydopts)
class(variable_2rb),intent(in)::self
type(variable_2rb),intent(inout)::ydvar
type(variable_clone_opts),intent(in)::ydopts
end
end interface
interface
module subroutine variable_2rb_assign_variable_2rb(self,ydvar,ydopts)
class(variable_2rb),intent(inout)::self
type(variable_2rb),intent(in)::ydvar
type(variable_clone_opts),intent(in)::ydopts
end
end interface
interface
module subroutine variable_3rb_clone(self,ydvar,ydopts)
class(variable_3rb),intent(in)::self
type(variable_3rb),intent(inout)::ydvar
type(variable_clone_opts),intent(in)::ydopts
end
end interface
interface
module subroutine variable_3rb_assign_variable_3rb(self,ydvar,ydopts)
class(variable_3rb),intent(inout)::self
type(variable_3rb),intent(in)::ydvar
type(variable_clone_opts),intent(in)::ydopts
end
end interface
interface
module subroutine variable_4rb_clone(self,ydvar,ydopts)
class(variable_4rb),intent(in)::self
type(variable_4rb),intent(inout)::ydvar
type(variable_clone_opts),intent(in)::ydopts
end
end interface
interface
module subroutine variable_4rb_assign_variable_4rb(self,ydvar,ydopts)
class(variable_4rb),intent(inout)::self
type(variable_4rb),intent(in)::ydvar
type(variable_clone_opts),intent(in)::ydopts
end
end interface
interface variable_2rb
procedure::variable_2rb_init
end interface
interface variable_3rb
procedure::variable_3rb_init
end interface
interface variable_4rb
procedure::variable_4rb_init
end interface
interface argument_value
procedure::argument_value_real
procedure::argument_value_integer
procedure::argument_value_string
procedure::argument_value_logical
end interface
contains
function argument_value_real(arg,default) result(val)
real(8),intent(in),optional::arg
real(8),intent(in)::default
real(8)::val
end
function argument_value_integer(arg,default) result(val)
integer(4),intent(in),optional::arg
integer(4),intent(in)::default
integer(4)::val
end
function argument_value_string(arg,default) result(val)
character(*,1),intent(in),optional::arg
character(*,1),intent(in)::default
character(:,1),allocatable::val
end
function argument_value_logical(arg,default) result(val)
logical(4),intent(in),optional::arg
logical(4),intent(in)::default
logical(4)::val
end
function variable_2rb_init(name,cname,igrbcode,lactive,ladv,lt1,lt9,lph9,ldl,ldm,ldl9,ldm9,lpc_ph,lgp,lwater,lthermact,lcders,rcp,r) result(self)
character(*,1),intent(in)::name
character(*,1),intent(in),optional::cname
integer(4),intent(in),optional::igrbcode
logical(4),intent(in),optional::lactive
logical(4),intent(in),optional::ladv
logical(4),intent(in),optional::lt1
logical(4),intent(in),optional::lt9
logical(4),intent(in),optional::lph9
logical(4),intent(in),optional::ldl
logical(4),intent(in),optional::ldm
logical(4),intent(in),optional::ldl9
logical(4),intent(in),optional::ldm9
logical(4),intent(in),optional::lpc_ph
logical(4),intent(in),optional::lgp
logical(4),intent(in),optional::lwater
logical(4),intent(in),optional::lthermact
logical(4),intent(in),optional::lcders
real(8),intent(in),optional::rcp
real(8),intent(in),optional::r
type(variable_2rb)::self
end
function variable_3rb_init(name,cname,igrbcode,lactive,ladv,lt1,lt9,lph9,ldl,ldm,ldl9,ldm9,lpc_ph,lgp,lwater,lthermact,lcders,rcp,r) result(self)
character(*,1),intent(in)::name
character(*,1),intent(in),optional::cname
integer(4),intent(in),optional::igrbcode
logical(4),intent(in),optional::lactive
logical(4),intent(in),optional::ladv
logical(4),intent(in),optional::lt1
logical(4),intent(in),optional::lt9
logical(4),intent(in),optional::lph9
logical(4),intent(in),optional::ldl
logical(4),intent(in),optional::ldm
logical(4),intent(in),optional::ldl9
logical(4),intent(in),optional::ldm9
logical(4),intent(in),optional::lpc_ph
logical(4),intent(in),optional::lgp
logical(4),intent(in),optional::lwater
logical(4),intent(in),optional::lthermact
logical(4),intent(in),optional::lcders
real(8),intent(in),optional::rcp
real(8),intent(in),optional::r
type(variable_3rb)::self
end
function variable_4rb_init(name,cname,igrbcode,lactive,ladv,lt1,lt9,lph9,ldl,ldm,ldl9,ldm9,lpc_ph,lgp,lwater,lthermact,lcders,rcp,r) result(self)
character(*,1),intent(in)::name
character(*,1),intent(in),optional::cname
integer(4),intent(in),optional::igrbcode
logical(4),intent(in),optional::lactive
logical(4),intent(in),optional::ladv
logical(4),intent(in),optional::lt1
logical(4),intent(in),optional::lt9
logical(4),intent(in),optional::lph9
logical(4),intent(in),optional::ldl
logical(4),intent(in),optional::ldm
logical(4),intent(in),optional::ldl9
logical(4),intent(in),optional::ldm9
logical(4),intent(in),optional::lpc_ph
logical(4),intent(in),optional::lgp
logical(4),intent(in),optional::lwater
logical(4),intent(in),optional::lthermact
logical(4),intent(in),optional::lcders
real(8),intent(in),optional::rcp
real(8),intent(in),optional::r
type(variable_4rb)::self
end
subroutine variable_2rb_update_view(self,block_index)
class(variable_2rb)::self
integer(4),intent(in)::block_index
end
subroutine variable_3rb_update_view(self,block_index)
class(variable_3rb)::self
integer(4),intent(in)::block_index
end
subroutine variable_4rb_update_view(self,block_index)
class(variable_4rb)::self
integer(4),intent(in)::block_index
end
subroutine variable_2rb_ph9tot0(self)
class(variable_2rb),target::self
end
subroutine variable_3rb_ph9tot0(self)
class(variable_3rb),target::self
end
subroutine variable_4rb_ph9tot0(self)
class(variable_4rb),target::self
end
subroutine variable_2rb_ph9tot9(self)
class(variable_2rb),target::self
end
subroutine variable_3rb_ph9tot9(self)
class(variable_3rb),target::self
end
subroutine variable_4rb_ph9tot9(self)
class(variable_4rb),target::self
end
subroutine variable_2rb_final(self)
class(variable_2rb)::self
end
subroutine variable_3rb_final(self)
class(variable_3rb)::self
end
subroutine variable_4rb_final(self)
class(variable_4rb)::self
end
end
