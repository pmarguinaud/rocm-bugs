!mod$ v1 sum:cc4110b8c3466855
!need$ fe3180dd7f22d4c1 n parkind1
module yoeaerc
use parkind1,only:jpim
use parkind1,only:jprb
type::teaerc
real(8),allocatable::column_mass_mon(:,:,:,:)
real(8),allocatable::scale_height_mon(:,:)
real(8),allocatable::column_mass(:,:,:)
real(8),allocatable::cum_fraction(:,:)
character(2_4,1),allocatable::aer_type(:)
real(8),allocatable::mmr_mon1(:,:,:,:)
real(8),allocatable::mmr_mon2(:,:,:,:)
real(8),pointer::pressure_mon1(:,:,:)
real(8),pointer::pressure_mon2(:,:,:)
real(8),allocatable::mmr(:,:,:,:)
real(8),allocatable::pressure(:,:,:)
integer(4),allocatable::epoch(:)
integer(4)::year1
integer(4)::year2
integer(4)::mon1
integer(4)::mon2
character(512_4,1)::file_name
character(128_4,1),allocatable::var_name(:)
logical(4),allocatable::is_species_4d(:)
integer(4),allocatable::ispecies_index(:)
integer(4)::nlat=0_4
integer(4)::nlon=0_4
integer(4)::nlev=0_4
integer(4)::nmon=0_4
integer(4)::naer=0_4
real(8)::lat1=0._8
real(8)::lon1=0._8
real(8)::dlat=0._8
real(8)::dlon=0._8
logical(4)::is_initialised=.false._4
integer(4)::dimensionality=2_4
contains
procedure::setup
procedure::update
procedure::load_month
procedure::calc_profiles
procedure::calc_surface
procedure::su_climatology2d
procedure::su_climatology4d
procedure::set_scale_height
procedure::set_variable_scale_height
procedure::get_interp_points
end type
real(8),parameter::rpressure_scale_height=8.434e3_8
interface
subroutine abor1(cdtext)
character(*,1),intent(in)::cdtext
end
end interface
interface
subroutine abor1fl(cdfile,klinenum,cdtext)
character(*,1),intent(in)::cdfile
integer(4),intent(in)::klinenum
character(*,1),intent(in)::cdtext
end
end interface
interface
subroutine abor1_exception_handler()
end
end interface
interface
subroutine set_abor1_exception_handler() bind(c,name="set_abor1_exception_handler")
end
end interface
contains
subroutine setup(self,ldaer3d,yaer_rad_desc,cdfilename)
use yoeaerraddesc,only:taer_rad_desc
class(teaerc),intent(inout)::self
logical(4),intent(in)::ldaer3d
type(taer_rad_desc),intent(in)::yaer_rad_desc
character(*,1),intent(in)::cdfilename
end
subroutine su_climatology2d(self,yaer_rad_desc,cdfilename)
use yoeaerraddesc,only:taer_rad_desc
class(teaerc),intent(inout)::self
type(taer_rad_desc),intent(in)::yaer_rad_desc
character(*,1),intent(in)::cdfilename
end
subroutine su_climatology4d(self,yaer_rad_desc,cdfilename)
use yoeaerraddesc,only:taer_rad_desc
class(teaerc),intent(inout)::self
type(taer_rad_desc),intent(in)::yaer_rad_desc
character(*,1),intent(in)::cdfilename
end
subroutine set_scale_height(self,cdaer_type,pscale_height)
class(teaerc),intent(inout)::self
character(2_4,1),intent(in)::cdaer_type
real(8),intent(in)::pscale_height
end
subroutine set_variable_scale_height(self,cdaer_type,pscale_height)
class(teaerc),intent(inout)::self
character(2_4,1),intent(in)::cdaer_type
real(8),intent(in)::pscale_height(:)
end
subroutine update(self,kyear,pmonth,p_eta_hl)
class(teaerc),intent(inout)::self
integer(4),intent(in)::kyear
real(8),intent(in)::pmonth
real(8),intent(in),optional::p_eta_hl(:)
end
subroutine load_month(self,kyear,kmon,pmmr_mon,ppressure_mon)
class(teaerc),intent(inout)::self
integer(4),intent(in)::kyear
integer(4),intent(in)::kmon
real(8),intent(out)::pmmr_mon(:,:,:,:)
real(8),intent(out)::ppressure_mon(:,:,:)
end
subroutine calc_profiles(self,kstart,kend,kcol,klev,psinlat,plon,ppressureh,paero_mmr,ldleavespace)
class(teaerc),intent(in)::self
integer(4),intent(in)::kstart
integer(4),intent(in)::kend
integer(4),intent(in)::kcol
integer(4),intent(in)::klev
real(8),intent(in)::psinlat(1_8:int(kcol,kind=8))
real(8),intent(in)::plon(1_8:int(kcol,kind=8))
real(8),intent(in)::ppressureh(1_8:int(kcol,kind=8),1_8:int(klev+1_4,kind=8))
real(8),intent(inout)::paero_mmr(:,:,:)
logical(4),intent(in),optional::ldleavespace
end
subroutine calc_surface(self,kstart,kend,kcol,klev,psinlat,plon,ppressureh,paero_mmr,ldleavespace)
class(teaerc),intent(in)::self
integer(4),intent(in)::kstart
integer(4),intent(in)::kend
integer(4),intent(in)::kcol
integer(4),intent(in)::klev
real(8),intent(in)::psinlat(1_8:int(kcol,kind=8))
real(8),intent(in)::plon(1_8:int(kcol,kind=8))
real(8),intent(in)::ppressureh(1_8:int(kcol,kind=8),1_8:int(klev+1_4,kind=8))
real(8),intent(out)::paero_mmr(1_8:int(kcol,kind=8),1_8:int(self%naer,kind=8))
logical(4),intent(in),optional::ldleavespace
end
subroutine get_interp_points(self,kstart,kend,psinlat,plon,platweight,plonweight,klat1,klat2,klon1,klon2)
class(teaerc),intent(in)::self
integer(4),intent(in)::kstart
integer(4),intent(in)::kend
real(8),intent(in)::psinlat(int(kstart,kind=8):int(kend,kind=8))
real(8),intent(in)::plon(int(kstart,kind=8):int(kend,kind=8))
real(8),intent(out)::platweight(int(kstart,kind=8):int(kend,kind=8))
real(8),intent(out)::plonweight(int(kstart,kind=8):int(kend,kind=8))
integer(4),intent(out)::klat1(int(kstart,kind=8):int(kend,kind=8))
integer(4),intent(out)::klat2(int(kstart,kind=8):int(kend,kind=8))
integer(4),intent(out)::klon1(int(kstart,kind=8):int(kend,kind=8))
integer(4),intent(out)::klon2(int(kstart,kind=8):int(kend,kind=8))
end
end
