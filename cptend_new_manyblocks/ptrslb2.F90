!mod$ v1 sum:7e6b88d14e860c86
!need$ fe3180dd7f22d4c1 n parkind1
module ptrslb2
use parkind1,only:jpim
type::tptrslb2
integer(4)::nfldslb2
integer(4)::mslbuf2
integer(4)::mslb2dbbc1
integer(4)::mslb2dphi1
integer(4)::mslb2usi
integer(4)::mslb2vsi
integer(4)::mslb2tsi
integer(4)::mslb2pdsi
integer(4)::mslb2vdsi
integer(4)::mslb2spsi
integer(4)::mslb2vvel
integer(4)::mslb2url
integer(4)::mslb2vrl
integer(4)::mslb2wrl
integer(4)::mslb2zrl
integer(4)::mslb2url5
integer(4)::mslb2vrl5
integer(4)::mslb2wrl5
integer(4)::mslb2zrl5
integer(4)::mslb2usi5
integer(4)::mslb2vsi5
integer(4)::mslb2u15
integer(4)::mslb2v15
integer(4)::mslb2t15
integer(4)::mslb2q15
integer(4)::mslb2kappa
integer(4)::mslb2kappat
integer(4)::mslb2kappam
integer(4)::mslb2kappah
integer(4)::mslb2kappa5
integer(4)::mslb2kappat5
integer(4)::mslb2gwf
integer(4)::mslb2gdw
integer(4)::mslb2gws
integer(4)::mslb2stddisu
integer(4)::mslb2stddisv
integer(4)::mslb2stddisw
integer(4)::mslb2stddisu5
integer(4)::mslb2stddisv5
integer(4)::mslb2stddisw5
contains
procedure,pass::print=>print_configuration
end type
contains
subroutine print_configuration(self,kdepth,koutno)
class(tptrslb2),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
