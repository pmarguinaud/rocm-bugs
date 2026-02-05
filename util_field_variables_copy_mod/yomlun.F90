!mod$ v1 sum:f1674ee58737d9c7
!need$ 03ed86a8aa341055 n yomlun_ifsaux
!need$ fe3180dd7f22d4c1 n parkind1
module yomlun
use parkind1,only:jpim
use yomlun_ifsaux,only:nulout
use yomlun_ifsaux,only:nulerr
private::jpim
integer(4),parameter::nulstat=1_4
integer(4),parameter::nulnam=4_4
integer(4),parameter::nulfp11=7_4
integer(4),parameter::nscrtch=8_4
integer(4),parameter::nulfp10=9_4
integer(4),parameter::nulcl1=10_4
integer(4),parameter::nulcl2=11_4
integer(4),parameter::nulfp09=12_4
integer(4),parameter::nulfp08=13_4
integer(4),parameter::nulfp07=14_4
integer(4),parameter::nulase=16_4
integer(4),parameter::nulass=17_4
integer(4),parameter::nulfp06=18_4
integer(4),parameter::nulfp05=19_4
integer(4),parameter::nulrad=25_4
integer(4),parameter::nulrtl=26_4
integer(4),parameter::nulfp04=30_4
integer(4),parameter::nulfp12=32_4
integer(4),parameter::nulfp13=33_4
integer(4),parameter::nulfp14=34_4
integer(4),parameter::nulfp15=35_4
integer(4),parameter::nscatab=36_4
integer(4),parameter::nscasig=37_4
integer(4),parameter::nscaspe=38_4
integer(4),parameter::negash=39_4
integer(4),parameter::nulfp03=43_4
integer(4),parameter::nuldila=46_4
integer(4),parameter::nulcont=47_4
integer(4),parameter::nulfp02=50_4
integer(4),parameter::npossh=51_4
integer(4),parameter::npoddh=53_4
integer(4),parameter::nulfp01=54_4
integer(4),parameter::nulco=55_4
integer(4),parameter::ntide=56_4
integer(4),parameter::nuio_serv_log=67_4
integer(4),parameter::ntrjsh=71_4
integer(4)::nultrajhr
integer(4)::neflss
integer(4),parameter::nulfpos=74_4
integer(4),parameter::nefls=78_4
integer(4),parameter::ninmsh=79_4
integer(4),parameter::ninish=81_4
integer(4),parameter::ninigg=82_4
integer(4),parameter::nfgish=83_4
integer(4),parameter::nultrajbg=83_4
integer(4),parameter::nprt0=85_4
integer(4),parameter::nprt1=86_4
integer(4),parameter::nprt2=87_4
integer(4),parameter::nprt3=88_4
integer(4),parameter::nprt4=89_4
integer(4),parameter::nbias=90_4
integer(4),parameter::npppsh=91_4
integer(4),parameter::npdirl=92_4
integer(4),parameter::nulhwf=93_4
integer(4),parameter::nulrcf=94_4
integer(4),parameter::nulusr1=95_4
integer(4),parameter::nulusr2=96_4
integer(4),parameter::nulusr3=97_4
integer(4),parameter::nulusr4=98_4
integer(4),parameter::nulusr5=99_4
integer(4),parameter::nulbdegp=100_4
integer(4),parameter::nulbdesh=200_4
integer(4),parameter,private::jp_reserve_first=57_4
integer(4),parameter,private::jp_reserve_last=70_4
integer(4),private::i
logical(4),private::lreserved(57_8:70_8)
contains
subroutine fopen(kunit,cdfile,cdform,cdtext)
integer(4),intent(out)::kunit
character(*,1),intent(in)::cdfile
character(*,1),intent(in),optional::cdform
character(*,1),intent(in),optional::cdtext
end
function reserve_lun()
integer(4)::reserve_lun
end
subroutine free_lun(klun)
integer(4),intent(in)::klun
end
end
