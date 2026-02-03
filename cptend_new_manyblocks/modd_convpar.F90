!mod$ v1 sum:04d5ac1c259fa1a1
module modd_convpar
type::convpar_t
real(8)::xa25
real(8)::xcrad
real(8)::xcdepth
real(8)::xentr
real(8)::xzlcl
real(8)::xzpbl
real(8)::xwtrig
real(8)::xnhgam
real(8)::xtfrz1
real(8)::xtfrz2
real(8)::xrhdbc
real(8)::xrconv
real(8)::xstabt
real(8)::xstabc
real(8)::xusrdpth
real(8)::xmeldpth
real(8)::xuvdp
end type
real(8)::xa25
real(8)::xcrad
real(8)::xcdepth
real(8)::xentr
real(8)::xzlcl
real(8)::xzpbl
real(8)::xwtrig
real(8)::xnhgam
real(8)::xtfrz1
real(8)::xtfrz2
real(8)::xrhdbc
real(8)::xrconv
real(8)::xstabt
real(8)::xstabc
real(8)::xusrdpth
real(8)::xmeldpth
real(8)::xuvdp
interface ini_convpar
procedure::ini_convpar0
procedure::ini_convpar1
end interface
contains
subroutine ini_convpar1(convpar)
type(convpar_t),intent(out)::convpar
end
subroutine ini_convpar0()
end
end
