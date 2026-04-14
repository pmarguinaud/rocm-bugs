!mod$ v1 sum:9cd4154a5b07d237
!need$ 02fa50acb5949c1e n random_numbers_mix
!need$ fe3180dd7f22d4c1 n parkind1
module yoe_cuconvca
use parkind1,only:jpim
use parkind1,only:jprb
use random_numbers_mix,only:randomnumberstream
integer(4)::nijh
integer(4),parameter::nbmax=8_4
type::tecuconvca
type(randomnumberstream)::yd_random_stream_ca
integer(4)::nlives
integer(4)::nfertyrs
integer(4)::nspinup
integer(4),allocatable::ncellcu(:,:)
integer(4),allocatable::nfertcu(:,:)
integer(4),allocatable::nbls(:,:)
integer(4),allocatable::nbss(:,:,:,:)
integer(4),allocatable::nrnbls(:)
integer(4),allocatable::nrnbss(:,:)
integer(4),allocatable::nbew(:,:,:)
integer(4),allocatable::nbns(:,:,:)
real(8),allocatable::rcuconvca(:)
real(8),allocatable::rnlconvca(:)
real(8),allocatable::rcapeconvca(:)
real(8),allocatable::rwasalive(:)
real(8),allocatable::rwghtcu(:)
real(8),allocatable::rlatlonnbls(:,:,:)
real(8),allocatable::rlatlonnbss(:,:,:,:)
real(8)::rprob_survive(0_8:8_8,0_8:8_8)
real(8)::rprob_birth(0_8:8_8,0_8:8_8)
real(8)::rprob_fun_fert_s(0_8:16_8)
real(8)::rprob_fun_uw_dw_s(0_8:16_8)
real(8)::rprob_fun_fert_b(0_8:16_8)
real(8)::rprob_fun_uw_dw_b(0_8:16_8)
real(8),allocatable::rlondep(:,:,:)
real(8),allocatable::rlatdep(:,:,:)
real(8)::rca_seedprob
real(8)::rcadelx
logical(4)::lcuconv_ca
logical(4)::lca_advect
logical(4)::lca_global
logical(4)::lca_smooth
logical(4)::lca_test
logical(4)::lca_advtest
logical(4)::lca_rantrop
logical(4)::lca_nbdebug
logical(4)::lca_extract
character(10_4,1)::ca_forc
character(10_4,1)::ca_wind
character(10_4,1)::ca_prob
integer(4)::nfrcaseed
integer(4)::ntestproc
integer(4)::ntestgp
integer(4)::ndxunreal
integer(4)::ndyunreal
real(8),allocatable::sllong(:)
real(8),allocatable::sllat(:)
real(8),allocatable::sldlong(:)
real(8),allocatable::sldlat(:)
real(8),allocatable::slddlat(:)
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(tecuconvca),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
subroutine ini_cuconvca(ydgeometry,yddyna,ydecuconvca,ydsl)
use geometry_mod,only:geometry
use eint_mod,only:sl_struct
use yomdyna,only:tdyna
type(geometry),intent(in)::ydgeometry
type(tdyna),intent(in)::yddyna
type(tecuconvca),intent(inout),target::ydecuconvca
type(sl_struct),intent(inout)::ydsl
end
subroutine setup_latlonghelp(ydgeometry,ydecuconvca,ydsl)
use geometry_mod,only:geometry
use eint_mod,only:sl_struct
type(geometry),intent(in)::ydgeometry
type(tecuconvca),intent(inout)::ydecuconvca
type(sl_struct),intent(inout)::ydsl
end
subroutine calculate_neighbours(ydecuconvca,ydgeometry,ydsl)
use geometry_mod,only:geometry
use eint_mod,only:sl_struct
type(tecuconvca),intent(inout)::ydecuconvca
type(geometry),intent(in)::ydgeometry
type(sl_struct),intent(inout)::ydsl
end
subroutine initialize_cells(ydecuconvca,ydgeometry,kini,klives,kcell,kfert)
use geometry_mod,only:geometry
type(tecuconvca),intent(inout)::ydecuconvca
type(geometry),intent(in)::ydgeometry
integer(4),intent(in)::kini(1_8:int(ydgeometry%yrgem%ngptot,kind=8))
integer(4),intent(in)::klives(1_8:int(ydgeometry%yrgem%ngptot,kind=8))
integer(4),intent(inout)::kcell(1_8:int(ydgeometry%yrgem%ngptot,kind=8),1_8:int(nijh*nijh,kind=8))
integer(4),intent(inout)::kfert(1_8:int(ydgeometry%yrgem%ngptot,kind=8),1_8:int(nijh*nijh,kind=8))
end
subroutine updcelaut_rgg(ydgeometry,ydecuconvca,ydecumf,ydsl,klive,kdx,kdy,kfert,kcell,pfertin,pcellin,pwght,prand1d,ld_advect)
use geometry_mod,only:geometry
use eint_mod,only:sl_struct
use yoecumf,only:tecumf
type(geometry),intent(in)::ydgeometry
type(tecuconvca),intent(inout)::ydecuconvca
type(tecumf),intent(inout)::ydecumf
type(sl_struct),intent(inout)::ydsl
integer(4),intent(inout)::klive(1_8:int(ydgeometry%yrgem%ngptot,kind=8))
integer(4),intent(in)::kdx(1_8:int(ydgeometry%yrgem%ngptot,kind=8))
integer(4),intent(in)::kdy(1_8:int(ydgeometry%yrgem%ngptot,kind=8))
integer(4),intent(out)::kfert(1_8:int(ydgeometry%yrgem%ngptot,kind=8),1_8:int(nijh*nijh,kind=8))
integer(4),intent(out)::kcell(1_8:int(ydgeometry%yrgem%ngptot,kind=8),1_8:int(nijh*nijh,kind=8))
real(8),intent(inout)::pfertin(1_8:int(ydsl%naslb1,kind=8),1_8:int(nijh*nijh,kind=8))
real(8),intent(inout)::pcellin(1_8:int(ydsl%naslb1,kind=8),1_8:int(nijh*nijh,kind=8))
real(8),intent(out)::pwght(1_8:int(ydgeometry%yrgem%ngptot,kind=8))
real(8),intent(in)::prand1d(1_8:int(nijh*nijh*ydgeometry%yrgem%ngptot,kind=8))
logical(4),intent(in)::ld_advect
end
subroutine weighting_field(ydgeometry,ydecuconvca,ydsl,kcell,pwght)
use geometry_mod,only:geometry
use eint_mod,only:sl_struct
type(geometry),intent(in)::ydgeometry
type(tecuconvca),intent(inout)::ydecuconvca
type(sl_struct),intent(inout)::ydsl
integer(4),intent(in)::kcell(1_8:int(ydgeometry%yrgem%ngptot,kind=8),1_8:int(nijh*nijh,kind=8))
real(8),intent(inout)::pwght(1_8:int(ydgeometry%yrgem%ngptot,kind=8))
end
subroutine smooth_ca(ydgeometry,ydecuconvca,ydsl,pfld)
use geometry_mod,only:geometry
use eint_mod,only:sl_struct
type(geometry),intent(in)::ydgeometry
type(tecuconvca),intent(inout)::ydecuconvca
type(sl_struct),intent(inout)::ydsl
real(8),intent(inout)::pfld(1_8:int(ydgeometry%yrgem%ngptot,kind=8))
end
subroutine advect_ca_soph(ydgeometry,ydecuconvca,ydecumf,ydsl,kcell,kfert,pfertin,pcellin)
use geometry_mod,only:geometry
use eint_mod,only:sl_struct
use yoecumf,only:tecumf
type(geometry),intent(in)::ydgeometry
type(tecuconvca),intent(inout)::ydecuconvca
type(tecumf),intent(inout)::ydecumf
type(sl_struct),intent(inout)::ydsl
integer(4),intent(inout)::kcell(1_8:int(ydgeometry%yrgem%ngptot,kind=8),1_8:int(nijh*nijh,kind=8))
integer(4),intent(inout)::kfert(1_8:int(ydgeometry%yrgem%ngptot,kind=8),1_8:int(nijh*nijh,kind=8))
real(8),intent(inout)::pfertin(1_8:int(ydsl%naslb1,kind=8),1_8:int(nijh*nijh,kind=8))
real(8),intent(inout)::pcellin(1_8:int(ydsl%naslb1,kind=8),1_8:int(nijh*nijh,kind=8))
end
subroutine write_field(cdfilename,pfield,kpoints,klevs)
character(*,1),intent(in)::cdfilename
integer(4),intent(in)::kpoints
integer(4),intent(in)::klevs
real(8),intent(in)::pfield(1_8:int(kpoints,kind=8),1_8:int(klevs,kind=8))
end
end
