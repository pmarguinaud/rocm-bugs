!mod$ v1 sum:8564aa54dbfc829b
!need$ 2a836d50ed9d2ca0 n yoe_spectral_planck
!need$ b8b5ae4c39257556 n yoeaerraddesc
!need$ 99f7ec52259902ea n yomhook
!need$ fe3180dd7f22d4c1 n parkind1
module yoerad
use parkind1,only:jpim
use parkind1,only:jprb
use yoe_spectral_planck,only:tspectralplanck
use yoeaerraddesc,only:taer_rad_desc
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use yomhook,only:yomhook$yomhook$dr_hook_default8=>dr_hook_default8
type::terad
integer(4)::naer
integer(4)::nmode
integer(4)::nozocl
integer(4)::nradfr
integer(4)::nradpfr
integer(4)::nradpla
integer(4)::nradint
integer(4)::nradres
integer(4)::nradnfr
integer(4)::nradsfr
integer(4)::nrade1h
integer(4)::nrade3h
integer(4)::nradelg
integer(4)::novlp
integer(4)::nrproma
integer(4)::nsw
integer(4)::nlw
integer(4)::nswnl
integer(4)::nswtl
integer(4)::nlwemiss
integer(4)::nlwout
integer(4)::ntlw
integer(4)::ntsw
integer(4)::nuv
integer(4)::ncsradf
integer(4)::niceopt
integer(4)::nliqopt
integer(4)::nswiceopt
integer(4)::nswliqopt
integer(4)::nlwiceopt
integer(4)::nlwliqopt
integer(4)::nradip
integer(4)::nradlp
integer(4)::ninhom
integer(4)::nlayinh
integer(4)::nlngr1h
integer(4)::npertaer
integer(4)::npertoz
integer(4)::nscen
integer(4)::nhincsol
integer(4)::nmcica
integer(4)::nghgrad
integer(4)::ndecolat
integer(4)::nminice
integer(4)::nvolcvert
integer(4)::nredglw
integer(4)::nredgsw
integer(4)::naermacc
integer(4)::nspmapl(1_8:16_8)
integer(4)::nspmaps(1_8:14_8)
integer(4)::nlwscattering
integer(4)::nswsolver
integer(4)::nlwsolver
integer(4)::nswgasoptics
integer(4)::nlwgasoptics
integer(4)::kmodts
integer(4)::nsolarspectrum
integer(4)::nswwvcontinuum
integer(4)::ndumpbadinputs
integer(4)::ndumpinputs
integer(4)::ncloudoverlap
integer(4)::nrtcall
integer(4)::irtcallref
integer(4)::irtcallcln
real(8)::rcloud_frac_std
real(8)::rcloud_separation_scale_toa
real(8)::rcloud_separation_scale_surf
logical(4)::lfu_lw_ice_optics_bug
logical(4)::linterpincloudmean
logical(4)::lerad1h
logical(4)::lepo3ra
logical(4)::lonewsw
logical(4)::lecsrad
logical(4)::lrrtm
logical(4)::lsrtm
logical(4)::ldiffc
logical(4)::lhvolca
logical(4)::lnotroaer
logical(4)::lrayl
logical(4)::loptrproma
logical(4)::leco2var
logical(4)::lhghg
logical(4)::leso4his
logical(4)::letracgms
logical(4)::laerclim
logical(4)::laervisi
logical(4)::laer3d
logical(4)::lvolcspec
logical(4)::lvolcdamp
logical(4)::ldiagforcing
logical(4)::laeradcli
logical(4)::laeradjdu
logical(4)::lapproxlwupdate
logical(4)::lapproxswupdate
logical(4)::lmannersswupdate
logical(4)::lcentredtimesza
logical(4)::laveragesza
logical(4)::lecompgrid
logical(4)::lusepre2017rad
logical(4)::lduseason
logical(4)::lspectralsolarcycle
logical(4)::lccnl
logical(4)::lccno
logical(4)::lperpet
logical(4)::lclean
real(8)::raovlp
real(8)::rbovlp
real(8)::rccnlnd
real(8)::rccnsea
logical(4)::ledbug
real(8)::rpertoz
real(8)::rre2de
real(8)::rlwinhf
real(8)::rswinhf
real(8)::rminice
real(8)::rvolcspec(1_8:3_8)
real(8)::rns
real(8)::rsigair
real(8)::raeshss
real(8)::raeshdu
real(8)::raeshom
real(8)::raeshbc
real(8)::raeshsu
real(8)::trbkg
real(8)::stbkg
character(256_4,1)::cghgclimfile="                                                                                                                                                                                                                                                                "
character(256_4,1)::cghgtimeseriesfile="                                                                                                                                                                                                                                                                "
character(256_4,1)::csolarirradiancefile="                                                                                                                                                                                                                                                                "
character(256_4,1)::caerclimfile="                                                                                                                                                                                                                                                                "
character(256_4,1)::caeropticsmodel_dd="                                                                                                                                                                                                                                                                "
character(256_4,1)::caeropticsmodel_su="                                                                                                                                                                                                                                                                "
character(256_4,1)::caeropticsmodel_om="                                                                                                                                                                                                                                                                "
character(256_4,1)::caeropticsmodel_bc="                                                                                                                                                                                                                                                                "
real(8)::rratsea
real(8)::rratland
real(8)::rratdri
real(8)::rcadecor
real(8)::rcbdecor
real(8)::rfacdice
real(8),allocatable::cvdaess(:)
real(8),allocatable::cvdaedu(:)
real(8),allocatable::cvdaeom(:)
real(8),allocatable::cvdaebc(:)
real(8),allocatable::cvdaesu(:)
type(tspectralplanck)::yspectplanck
type(taer_rad_desc)::yaer_rad_desc
contains
procedure,pass::print=>print_configuration
end type
type(terad),pointer::yrerad
intrinsic::null
contains
subroutine print_configuration(self,kdepth,koutno)
class(terad),intent(in)::self
integer(4),intent(in)::kdepth
integer(4),intent(in)::koutno
end
end
