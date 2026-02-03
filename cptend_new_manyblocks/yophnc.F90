!mod$ v1 sum:10e0c1f422d1e1df
module yophnc
type::tphnc
logical(4)::letrajp
logical(4)::letrajpt
logical(4)::leradi2
logical(4)::lerads2
logical(4)::leradsw2
logical(4)::leradn2
logical(4)::leradfl2
logical(4)::leradlw2
logical(4)::lh2oco2
logical(4)::lwlopt
logical(4)::lwsopt
logical(4)::ledcld2
logical(4)::lepcld2
logical(4)::lencld2
logical(4)::levapls2
logical(4)::levdif2
logical(4)::legwdg2
logical(4)::legwdgf2
logical(4)::lecumf2
logical(4)::lecond2
logical(4)::legwwms2
logical(4)::leqngt2
logical(4)::lesurf2
logical(4)::lekpert
logical(4)::lekperts
logical(4)::ltraclnph
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(tphnc),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
