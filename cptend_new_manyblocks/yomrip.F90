!mod$ v1 sum:127606aff608c7a3
!need$ 9a92b3c5480fc554 n yoeozoc
!need$ a6b3481ff7807678 n yoecmip
!need$ e715736f906b2231 n yoeradghg
!need$ 8e6d6a9ab3aa095c n yoeaerc_tegen
!need$ cc4110b8c3466855 n yoeaerc
!need$ 46ab9d6be1de2d65 n reglatlon_field_mix
!need$ fe3180dd7f22d4c1 n parkind1
module yomrip
use parkind1,only:jpim
use parkind1,only:jprb
use parkind1,only:jprd
use yoeozoc,only:teozoc
use yoecmip,only:tecmip
use yoeradghg,only:tradghg
use yoeaerc_tegen,only:teaerc_tegen
use yoeaerc,only:teaerc
use reglatlon_field_mix,only:reglatlon_field
type::trip
integer(4)::nstart
integer(4)::nstop
character(8_4,1)::cstop
integer(4)::nstadd
integer(4)::nstass
integer(4)::nfost
real(8)::rstati
real(8)::rtimtr
real(8)::rhgmt
real(8)::reqtim
real(8)::rsovr
real(8)::rdeaso
real(8)::rdecli
real(8)::rwsovr
real(8)::rip0
real(8)::rcodec
real(8)::rsidec
real(8)::rcovsr
real(8)::rsivsr
real(8)::rcodecn
real(8)::rsidecn
real(8)::rcovsrn
real(8)::rsivsrn
real(8)::rcodecf
real(8)::rsidecf
real(8)::rcovsrf
real(8)::rsivsrf
real(8)::tstep
real(8)::tdt
real(8)::rdtsa
real(8)::rdtsa2
real(8)::rdts62
real(8)::rdts22
real(8)::rtdt
real(8)::rdeclu
real(8)::rtmolt
real(8)::rjusmp
real(8)::rlundi
real(8)::rip0lu
real(8)::rcodeclu
real(8)::rsideclu
real(8)::rcovsrlu
real(8)::rsivsrlu
type(teozoc)::yreozoc
type(tecmip)::yrecmip
type(tradghg)::yreradghg
type(teaerc_tegen)::yreaerc_tegen
type(teaerc)::yreaerc
type(reglatlon_field)::raerso4
integer(4)::jpordt=11_4
real(8)::gcoefs_ascension_droite(1_8:7585_8,0_8:10_8,1_8:2_8)
real(8)::gcoefs_declinaison(1_8:7585_8,0_8:10_8,1_8:2_8)
real(8)::gcoefs_distance(1_8:7585_8,0_8:10_8,1_8:2_8)
real(8)::gtdebut(1_8:7585_8,1_8:2_8)
real(8)::gtfin(1_8:7585_8,1_8:2_8)
integer(4)::nintt_moon
integer(4)::nintt_sun
character(200_4,1)::cgsolec_sun
character(200_4,1)::cgsolec_moon
logical(4)::lcallsfx=.true._4
contains
procedure::get_year
procedure,pass::print=>print_configuration
end type
contains
function get_year(self,ldtwotl)
class(trip),intent(in)::self
logical(4),intent(in)::ldtwotl
real(8)::get_year
end
subroutine print_configuration(self,kdepth,koutno)
class(trip),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
