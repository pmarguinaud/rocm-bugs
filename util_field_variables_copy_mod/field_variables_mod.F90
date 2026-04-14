!mod$ v1 sum:7d8779b0bd6187a0
!need$ d9863b2992cbe6fc n yomgmv
!need$ 8e7d67711c50bb10 n yomgfl
!need$ fe3180dd7f22d4c1 n parkind1
!need$ 2ed18a7587b74ab0 n variable_module
module field_variables_mod
use parkind1,only:jpim
use parkind1,only:jprb
use yomgmv,only:tgmv
use yomgfl,only:tgfl
use variable_module,only:field_2rb
use variable_module,only:field_3rb
use variable_module,only:field_4rb
use variable_module,only:type_gfl_comp
use variable_module,only:variable_base
use variable_module,only:variable_base_final
use variable_module,only:variable_2rb_clone
use variable_module,only:variable_2rb_assign_variable_2rb
use variable_module,only:variable_3rb_clone
use variable_module,only:variable_3rb_assign_variable_3rb
use variable_module,only:variable_4rb_clone
use variable_module,only:variable_4rb_assign_variable_4rb
use variable_module,only:variable_clone_opts
use variable_module,only:variable_2rb
use variable_module,only:variable_3rb
use variable_module,only:variable_4rb
use variable_module,only:argument_value
use variable_module,only:argument_value_real
use variable_module,only:argument_value_integer
use variable_module,only:argument_value_string
use variable_module,only:argument_value_logical
use variable_module,only:variable_2rb_init
use variable_module,only:variable_3rb_init
use variable_module,only:variable_4rb_init
use variable_module,only:variable_2rb_update_view
use variable_module,only:variable_3rb_update_view
use variable_module,only:variable_4rb_update_view
use variable_module,only:variable_2rb_ph9tot0
use variable_module,only:variable_3rb_ph9tot0
use variable_module,only:variable_4rb_ph9tot0
use variable_module,only:variable_2rb_ph9tot9
use variable_module,only:variable_3rb_ph9tot9
use variable_module,only:variable_4rb_ph9tot9
use variable_module,only:variable_2rb_final
use variable_module,only:variable_3rb_final
use variable_module,only:variable_4rb_final
type::field_variables
type(variable_3rb)::u
type(variable_3rb)::v
type(variable_3rb)::t
type(variable_3rb)::div
type(variable_3rb)::vor
type(variable_3rb)::spd
type(variable_3rb)::svd
type(variable_3rb)::cspdnl
type(variable_3rb)::cspnl
type(variable_3rb)::csvdpt
type(variable_3rb)::ctnl
type(variable_3rb)::ctpt
type(variable_3rb)::cunl
type(variable_3rb)::cupt
type(variable_3rb)::cvnl
type(variable_3rb)::cvpt
type(variable_3rb)::cvwvnl
type(variable_3rb)::dphi
type(variable_3rb)::edot
type(variable_3rb)::gw
type(variable_3rb)::nhx
type(variable_3rb)::nhy
type(variable_3rb)::sgrtl
type(variable_3rb)::sgrtm
type(variable_3rb)::spdnl
type(variable_3rb)::spdnl_si
type(variable_3rb)::spnl
type(variable_3rb)::spnl_si
type(variable_3rb)::svdnl_si
type(variable_3rb)::tnl
type(variable_3rb)::tnl_si
type(variable_3rb)::unl
type(variable_3rb)::unl_si
type(variable_3rb)::vnl
type(variable_3rb)::vnl_si
type(variable_3rb)::vwvnl
type(variable_3rb)::curhs
type(variable_3rb)::cvrhs
type(variable_3rb)::ctrhs
type(variable_3rb)::cspdrhs
type(variable_3rb)::csvdrhs
type(variable_3rb)::nhxnl
type(variable_3rb)::cnhxnl
type(variable_3rb)::pcf_u
type(variable_3rb)::pcf_v
type(variable_3rb)::pcf_t
type(variable_3rb)::pcf_spd
type(variable_3rb)::pcf_svd
type(variable_3rb)::pcf_nhx
type(variable_3rb)::pcf_sp
type(variable_3rb)::pcf_cp
type(variable_3rb)::pcf_up
type(variable_3rb)::pcf_vp
type(variable_3rb)::pcf_tp
type(variable_2rb)::sp
type(variable_2rb)::spnl2
type(variable_2rb)::prehyds
type(variable_2rb)::dbbc
type(variable_2rb)::csppt
type(variable_2rb)::cspnl2
type(variable_2rb)::csprhs
type(variable_2rb)::gws
type(variable_2rb)::pcf_bbc
type(variable_2rb)::pcf_dphi
type(variable_2rb)::pcf_gws
type(variable_3rb)::q
type(variable_3rb)::i
type(variable_3rb)::l
type(variable_3rb)::imf
type(variable_3rb)::lmf
type(variable_3rb)::hlmf
type(variable_3rb)::himf
type(variable_3rb)::lconv
type(variable_3rb)::iconv
type(variable_3rb)::rconv
type(variable_3rb)::sconv
type(variable_3rb)::irad
type(variable_3rb)::lrad
type(variable_3rb)::s
type(variable_3rb)::r
type(variable_3rb)::g
type(variable_3rb)::h
type(variable_3rb)::tke
type(variable_3rb)::tte
type(variable_3rb)::efb1
type(variable_3rb)::efb2
type(variable_3rb)::efb3
type(variable_3rb)::a
type(variable_3rb)::amf
type(variable_3rb)::wmfc
type(variable_3rb)::hlcfmf
type(variable_3rb)::hicfmf
type(variable_3rb)::o3
type(variable_3rb)::src
type(variable_3rb)::mxl
type(variable_3rb)::shtur
type(variable_3rb)::fqtur
type(variable_3rb)::fstur
type(variable_3rb)::cpf
type(variable_3rb)::spf
type(variable_3rb)::cvgq
type(variable_3rb)::qva
type(variable_3rb),allocatable::ghg(:)
type(variable_3rb),allocatable::chem(:)
type(variable_3rb),allocatable::aero(:)
type(variable_3rb)::lrch4
type(variable_3rb),allocatable::forc(:)
type(variable_3rb),allocatable::ezdiag(:)
type(variable_3rb),allocatable::era40(:)
type(variable_3rb),allocatable::nogw(:)
type(variable_3rb),allocatable::emis3d(:)
type(variable_3rb),allocatable::edrp(:)
type(variable_3rb),allocatable::sldia(:)
type(variable_3rb),allocatable::aeraot(:)
type(variable_3rb),allocatable::aerlisi(:)
type(variable_3rb),allocatable::aerout(:)
type(variable_3rb),allocatable::aeroclim(:)
type(variable_3rb),allocatable::uvp(:)
type(variable_3rb)::phycty
type(variable_3rb)::rspec
type(variable_3rb)::sdsat
type(variable_3rb)::cvv
type(variable_3rb)::rkth
type(variable_3rb)::rktqv
type(variable_3rb)::rktqc
type(variable_3rb)::uom
type(variable_3rb)::ual
type(variable_3rb)::dom
type(variable_3rb)::dal
type(variable_3rb)::uen
type(variable_3rb)::mo
type(variable_3rb)::unebh
type(variable_3rb),allocatable::lima(:)
type(variable_3rb)::fsd
type(variable_3rb),allocatable::ext(:)
type(variable_3rb)::thrad
type(variable_3rb),allocatable::gfl_ptr(:)
contains
procedure::update_view=>field_variables_update_view
procedure::final=>field_variables_final
procedure::gfl_ph9tot0=>field_variables_gfl_ph9tot0
procedure::gfl_ph9tot9=>field_variables_gfl_ph9tot9
procedure::gmv_reset_ph9=>field_variables_gmv_reset_ph9
procedure::assign=>field_variables_assign
procedure::clone=>field_variables_clone
end type
interface
module subroutine field_variables_assign(self,ydvars,ydopts)
use variable_module,only:variable_clone_opts
class(field_variables),intent(inout)::self
type(field_variables),intent(in)::ydvars
type(variable_clone_opts),intent(in)::ydopts
end
end interface
interface
module function field_variables_clone(self,ydopts) result(ydvars)
use variable_module,only:variable_clone_opts
class(field_variables),intent(in)::self
type(variable_clone_opts),intent(in)::ydopts
type(field_variables)::ydvars
end
end interface
contains
subroutine field_variables_update_view(self,block_index)
class(field_variables)::self
integer(4),intent(in)::block_index
end
subroutine field_variables_final(self)
class(field_variables)::self
end
subroutine field_variables_gfl_ph9tot0(self)
class(field_variables)::self
end
subroutine field_variables_gfl_ph9tot9(self)
class(field_variables)::self
end
subroutine field_variables_gmv_reset_ph9(self,ydgmv,ydgfl)
class(field_variables)::self
type(tgmv),intent(inout),target::ydgmv
type(tgfl),intent(inout),target::ydgfl
end
end
