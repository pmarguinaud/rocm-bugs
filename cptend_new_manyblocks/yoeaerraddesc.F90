!mod$ v1 sum:b8b5ae4c39257556
!need$ fe3180dd7f22d4c1 n parkind1
module yoeaerraddesc
use parkind1,only:jpim
use parkind1,only:jprb
integer(4),parameter,private::jpmax_string_len=512_4
integer(4),parameter::iclimatological=0_4
integer(4),parameter::iprognostic=1_4
integer(4),parameter::iparametric=2_4
type::taer_rad_desc1
character(512_4,1)::name
integer(4)::nsource=0_4
logical(4)::lhydrophilic=.false._4
real(8)::scaling=1._8
character(2_4,1)::aer_type="  "
character(512_4,1)::optics_model="                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                "
integer(4)::size_bin=0_4
integer(4)::parametric_scheme=-1_4
end type
type::taer_rad_desc
type(taer_rad_desc1),allocatable::data(:)
integer(4)::naerosol
integer(4)::ndiagnostic
integer(4)::nprognostic
integer(4)::nparametric
integer(4)::nclimatological
integer(4),allocatable::prog_index(:)
contains
procedure::read_namelist
procedure::reserve
procedure::clear
procedure::print
procedure::print_namelist
procedure::add_climatological
procedure::add_parametric
procedure::add_prognostic
procedure::add_all_prognostics
procedure::find_prognostics
procedure::set_hydrophobic
procedure::parametric_index
procedure::get_index
end type
contains
subroutine read_namelist(self,kunit)
class(taer_rad_desc),intent(inout)::self
integer(4),intent(in)::kunit
end
subroutine reserve(self,kalloc)
class(taer_rad_desc),intent(inout)::self
integer(4),intent(in)::kalloc
end
subroutine clear(self)
class(taer_rad_desc),intent(inout)::self
end
subroutine print(self,kunit)
class(taer_rad_desc),intent(in)::self
integer(4),intent(in)::kunit
end
subroutine print_namelist(self,kunit)
class(taer_rad_desc),intent(in)::self
integer(4),intent(in)::kunit
end
subroutine add_climatological(self,name,aer_type,lhydrophilic,bin,optics_model,scaling,kindex,lwriteover)
class(taer_rad_desc),intent(inout)::self
character(*,1),intent(in)::name
character(2_4,1),intent(in)::aer_type
logical(4),intent(in)::lhydrophilic
integer(4),intent(in),optional::bin
character(*,1),intent(in),optional::optics_model
real(8),intent(in),optional::scaling
integer(4),intent(out),optional::kindex
logical(4),intent(in),optional::lwriteover
end
subroutine add_parametric(self,name,parametric_scheme,aer_type,lhydrophilic,bin,optics_model,scaling,kindex)
class(taer_rad_desc),intent(inout)::self
character(*,1),intent(in)::name
integer(4),intent(in)::parametric_scheme
character(2_4,1),intent(in)::aer_type
logical(4),intent(in)::lhydrophilic
integer(4),intent(in),optional::bin
character(*,1),intent(in),optional::optics_model
real(8),intent(in),optional::scaling
integer(4),intent(out),optional::kindex
end
subroutine add_prognostic(self,name,aer_type,lhydrophilic,bin,optics_model,scaling,kindex)
class(taer_rad_desc),intent(inout)::self
character(*,1),intent(in)::name
character(2_4,1),intent(in)::aer_type
logical(4),intent(in)::lhydrophilic
integer(4),intent(in),optional::bin
character(*,1),intent(in),optional::optics_model
real(8),intent(in),optional::scaling
integer(4),intent(out),optional::kindex
end
subroutine add_all_prognostics(self,yaero_desc)
use yoeaeratm,only:type_aero_desc
class(taer_rad_desc),intent(inout)::self
type(type_aero_desc),intent(in)::yaero_desc(:)
end
subroutine find_prognostics(self,yaero_desc)
use yoeaeratm,only:type_aero_desc
class(taer_rad_desc),intent(inout)::self
type(type_aero_desc),intent(in)::yaero_desc(:)
end
subroutine set_hydrophobic(self,aer_type)
class(taer_rad_desc),intent(inout)::self
character(2_4,1),intent(in)::aer_type
end
function parametric_index(self,parametric_scheme)
class(taer_rad_desc),intent(in)::self
integer(4),intent(in)::parametric_scheme
integer(4)::parametric_index
end
function get_index(self,aer_type,lhydrophilic,kbin)
class(taer_rad_desc),intent(in)::self
character(2_4,1),intent(in)::aer_type
logical(4),intent(in)::lhydrophilic
integer(4),intent(in)::kbin
integer(4)::get_index
end
end
