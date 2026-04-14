!mod$ v1 sum:6b9c4ab02eb25578
!need$ 361d06fccc280491 n field_module
!need$ fbbf2ac468b1d175 n field_factory_module
!need$ 61a1fce3ad703d64 n field_2rd_factory_module
!need$ fe3180dd7f22d4c1 n parkind1
module yomgeomvars
use parkind1,only:jpim
use parkind1,only:jprb
use parkind1,only:jprd
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
use field_factory_module,only:host_pool
use field_factory_module,only:field_new
use field_factory_module,only:field_delete
use field_factory_module,only:field_resize
use field_factory_module,only:field_host_pool_delete
use field_2rd_factory_module
use field_2rd_factory_module
















































































type::tgeomvars
class(field_2rb),pointer::f_rcori=>NULL()
real(8),pointer::rcori(:)=>NULL()
class(field_2rb),pointer::f_rcoric=>NULL()
real(8),pointer::rcoric(:)=>NULL()
class(field_2rb),pointer::f_gemu=>NULL()
real(8),pointer::gemu(:)=>NULL()
class(field_2rb),pointer::f_gsqm2=>NULL()
real(8),pointer::gsqm2(:)=>NULL()
class(field_2rb),pointer::f_gelam=>NULL()
real(8),pointer::gelam(:)=>NULL()
class(field_2rb),pointer::f_gelat=>NULL()
real(8),pointer::gelat(:)=>NULL()
class(field_2rb),pointer::f_geclo=>NULL()
real(8),pointer::geclo(:)=>NULL()
class(field_2rb),pointer::f_geslo=>NULL()
real(8),pointer::geslo(:)=>NULL()
class(field_2rb),pointer::f_gm=>NULL()
real(8),pointer::gm(:)=>NULL()
class(field_2rb),pointer::f_gmappa=>NULL()
real(8),pointer::gmappa(:)=>NULL()
class(field_2rb),pointer::f_gomvrl=>NULL()
real(8),pointer::gomvrl(:)=>NULL()
class(field_2rb),pointer::f_gomvrm=>NULL()
real(8),pointer::gomvrm(:)=>NULL()
class(field_2rb),pointer::f_gnordl=>NULL()
real(8),pointer::gnordl(:)=>NULL()
class(field_2rb),pointer::f_gnordm=>NULL()
real(8),pointer::gnordm(:)=>NULL()
class(field_2rb),pointer::f_gnordlcl=>NULL()
real(8),pointer::gnordlcl(:)=>NULL()
class(field_2rb),pointer::f_gnordmcl=>NULL()
real(8),pointer::gnordmcl(:)=>NULL()
class(field_2rb),pointer::f_gnordmcm=>NULL()
real(8),pointer::gnordmcm(:)=>NULL()
class(field_2rb),pointer::f_gaw=>NULL()
real(8),pointer::gaw(:)=>NULL()
class(field_2rb),pointer::f_gexco=>NULL()
real(8),pointer::gexco(:)=>NULL()
class(field_2rb),pointer::f_geyco=>NULL()
real(8),pointer::geyco(:)=>NULL()
class(field_2rb),pointer::f_gezco=>NULL()
real(8),pointer::gezco(:)=>NULL()
class(field_2rb),pointer::f_orog=>NULL()
real(8),pointer::orog(:)=>NULL()
class(field_2rb),pointer::f_orogl=>NULL()
real(8),pointer::orogl(:)=>NULL()
class(field_2rb),pointer::f_orogm=>NULL()
real(8),pointer::orogm(:)=>NULL()
class(field_2rb),pointer::f_orogll=>NULL()
real(8),pointer::orogll(:)=>NULL()
class(field_2rb),pointer::f_orogmm=>NULL()
real(8),pointer::orogmm(:)=>NULL()
class(field_2rb),pointer::f_oroglm=>NULL()
real(8),pointer::oroglm(:)=>NULL()
class(field_2rd),pointer::f_rcolon=>NULL()
real(8),pointer::rcolon(:)=>NULL()
class(field_2rd),pointer::f_rsilon=>NULL()
real(8),pointer::rsilon(:)=>NULL()
class(field_2rb),pointer::f_rindx=>NULL()
real(8),pointer::rindx(:)=>NULL()
class(field_2rb),pointer::f_rindy=>NULL()
real(8),pointer::rindy(:)=>NULL()
class(field_2rb),pointer::f_ratath=>NULL()
real(8),pointer::ratath(:)=>NULL()
class(field_2rb),pointer::f_ratatx=>NULL()
real(8),pointer::ratatx(:)=>NULL()
contains
procedure::init=>tgeomvars_init
procedure::update_view=>tgeomvars_update_view
procedure::final=>tgeomvars_final
end type
intrinsic::null




contains
subroutine tgeomvars_init(self,ydgsgeom_b,ydorog_b,ydcsgeom_b)
use yomcsgeom,only:tcsgeom_blocked
use yomgsgeom,only:tgsgeom_blocked
use yomorog,only:torog_blocked
class(tgeomvars)::self
type(tgsgeom_blocked),intent(in)::ydgsgeom_b
type(torog_blocked),intent(in)::ydorog_b
type(tcsgeom_blocked),intent(in)::ydcsgeom_b
end
subroutine tgeomvars_update_view(self,block_index)
class(tgeomvars)::self
integer(4),intent(in)::block_index
end
subroutine tgeomvars_final(self)
class(tgeomvars)::self
end
end
