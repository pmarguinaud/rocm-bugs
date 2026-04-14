!mod$ v1 sum:a883d7a6fa273c7c
!need$ fe3180dd7f22d4c1 n parkind1
module model_physics_scm_mod
use parkind1,only:jpim
use parkind1,only:jprb
integer(4),parameter::npnpst=240_4
type::model_physics_scm_type
logical(4)::lgscm
integer(4)::nfrscm
integer(4)::nscmts(0_8:240_8)
integer(4)::nscm_space_s
real(8)::gscm_lon1
real(8)::gscm_lon2
real(8)::gscm_lat1
real(8)::gscm_lat2
real(8)::gscm_radius
integer(4)::nscm_add_sampl
end type
end
