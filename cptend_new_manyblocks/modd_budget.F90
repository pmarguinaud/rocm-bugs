!mod$ v1 sum:d3f62b89c13fb83e
module modd_budget
integer(4),parameter::nbudget_rho=0_4
integer(4),parameter::nbudget_u=1_4
integer(4),parameter::nbudget_v=2_4
integer(4),parameter::nbudget_w=3_4
integer(4),parameter::nbudget_th=4_4
integer(4),parameter::nbudget_tke=5_4
integer(4),parameter::nbudget_rv=6_4
integer(4),parameter::nbudget_rc=7_4
integer(4),parameter::nbudget_rr=8_4
integer(4),parameter::nbudget_ri=9_4
integer(4),parameter::nbudget_rs=10_4
integer(4),parameter::nbudget_rg=11_4
integer(4),parameter::nbudget_rh=12_4
integer(4),parameter::nbudget_sv1=13_4
type,abstract::tbudgetdata
integer(4)::nbudget
contains
procedure(tbudgetdata_store_init),deferred::init
procedure(tbudgetdata_store_init_phy),deferred::init_phy
procedure(tbudgetdata_store_end),deferred::end
procedure(tbudgetdata_store_end_phy),deferred::end_phy
procedure(tbudgetdata_store_add),deferred::add
procedure(tbudgetdata_store_add_phy),deferred::add_phy
end type
abstract interface
subroutine tbudgetdata_store_init(self,hsource,pvars)
import::tbudgetdata
class(tbudgetdata),intent(inout)::self
character(*,1),intent(in)::hsource
real(8),intent(in)::pvars(:,:)
end
end interface
abstract interface
subroutine tbudgetdata_store_init_phy(self,d,hsource,pvars)
use modd_dimphyex,only:dimphyex_t
import::tbudgetdata
class(tbudgetdata),intent(inout)::self
type(dimphyex_t),intent(in)::d
character(*,1),intent(in)::hsource
real(8),intent(in)::pvars(1_8:int(d%nijt,kind=8),1_8:int(d%nkt,kind=8))
end
end interface
abstract interface
subroutine tbudgetdata_store_end(self,hsource,pvars)
import::tbudgetdata
class(tbudgetdata),intent(inout)::self
character(*,1),intent(in)::hsource
real(8),intent(in)::pvars(:,:)
end
end interface
abstract interface
subroutine tbudgetdata_store_end_phy(self,d,hsource,pvars)
use modd_dimphyex,only:dimphyex_t
import::tbudgetdata
class(tbudgetdata),intent(inout)::self
type(dimphyex_t),intent(in)::d
character(*,1),intent(in)::hsource
real(8),intent(in)::pvars(1_8:int(d%nijt,kind=8),1_8:int(d%nkt,kind=8))
end
end interface
abstract interface
subroutine tbudgetdata_store_add_phy(self,d,hsource,pvars)
use modd_dimphyex,only:dimphyex_t
import::tbudgetdata
class(tbudgetdata),intent(inout)::self
type(dimphyex_t),intent(in)::d
character(*,1),intent(in)::hsource
real(8),intent(in)::pvars(1_8:int(d%nijt,kind=8),1_8:int(d%nkt,kind=8))
end
end interface
abstract interface
subroutine tbudgetdata_store_add(self,hsource,pvars)
import::tbudgetdata
class(tbudgetdata),intent(inout)::self
character(*,1),intent(in)::hsource
real(8),intent(in)::pvars(:,:)
end
end interface
type::tbudgetdata_ptr
class(tbudgetdata),pointer::ptr=>NULL()
end type
intrinsic::null
type::tbudgetconf_t
logical(4)::lbu_enable=.false._4
logical(4)::lbudget_u=.false._4
logical(4)::lbudget_v=.false._4
logical(4)::lbudget_w=.false._4
logical(4)::lbudget_th=.false._4
logical(4)::lbudget_tke=.false._4
logical(4)::lbudget_rv=.false._4
logical(4)::lbudget_rc=.false._4
logical(4)::lbudget_rr=.false._4
logical(4)::lbudget_ri=.false._4
logical(4)::lbudget_rs=.false._4
logical(4)::lbudget_rg=.false._4
logical(4)::lbudget_rh=.false._4
logical(4)::lbudget_sv=.false._4
end type
type(tbudgetconf_t),target::tbuconf
logical(4),pointer::lbu_enable
integer(4)::nbumod
logical(4),pointer::lbudget_u
logical(4),pointer::lbudget_v
logical(4),pointer::lbudget_w
logical(4),pointer::lbudget_th
logical(4),pointer::lbudget_tke
logical(4),pointer::lbudget_rv
logical(4),pointer::lbudget_rc
logical(4),pointer::lbudget_rr
logical(4),pointer::lbudget_ri
logical(4),pointer::lbudget_rs
logical(4),pointer::lbudget_rg
logical(4),pointer::lbudget_rh
logical(4),pointer::lbudget_sv
contains
subroutine tbuconf_associate()
end
end
