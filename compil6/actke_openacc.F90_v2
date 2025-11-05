
SUBROUTINE ACTKE_OPENACC ( KIDIA, KLON, KLEV, YDSTACK)
!$OMP DECLARE TARGET

#include "fxtran_acdc_stack.h"
USE FXTRAN_ACDC_STACK_MOD

IMPLICIT NONE


INTEGER, INTENT (IN)::KIDIA
INTEGER, INTENT (IN)::KLON
INTEGER, INTENT (IN)::KLEV
TYPE(FXTRAN_ACDC_STACK), INTENT (IN) :: YDSTACK
TYPE(FXTRAN_ACDC_STACK) :: YLSTACK
INTEGER::JLON
INTEGER::JLEV
fxtran_acdc_temp (REAL (KIND=8), ZPHI3, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLMECT, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZUSLE, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZPRDY, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZPRODTH, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZDIAG, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZDISS, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZDIFF, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZECT1, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZECT, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZDELPSG, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZDET, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZDIFFAR, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTABFL, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTABHL, (KLON, 0:KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZFCORTKE, (KLON, 0:KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZFDIFF, (KLON, 0:KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZFDISS, (KLON, 0:KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZFPRDY, (KLON, 0:KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZFPRTH, (KLON, 0:KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZEDR, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTCORTKE, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTDIFF, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTDISS, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTPRTH, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZGDZH2, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZGDZF22, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZDTHETA2, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTHETA2, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTHETAH22, (KLON, 0:KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTHETAP2, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZPHIH2, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZGLMDN2, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZGLMUP2, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZRTV, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZZ, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZGDZF, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTHETA, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLOCPEXF, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTHETALF, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTHETAVL, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZECTF, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLMECTF, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZGKTF, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZGKUH, (KLON, 0:KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZGKTH, (KLON, 0:KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLM, (KLON, 0:KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZAH, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZQSLTLH2, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZGKEF44, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZDET44, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZGKU44, (KLON, 0:KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZPA44, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZE44, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZA44, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZDCIS5, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZDTH555, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZDTH55, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZRI55, (KLON, 0:KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTHETAVL55, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZFH_CLOUD55, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZFH_CLEAR55, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZFM_CLOUD55, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZFM_CLEAR55, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLUPH_CLOUD55, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLUPH_CLEAR55, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLUPM_CLOUD5, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLUPM_CLEAR5, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLDNH_CLOUD5, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLDNH_CLEAR5, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLDNM_CLOUD5, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLDNM_CLEAR5, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLSH_CLOUD5, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLSH_CLEAR5, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLSM_CLOUD5, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLSM_CLEAR5, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLINTH_CLOUD5, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLINTH_CLEAR5, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLINTM_CLOUD5, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLINTM_CLEAR5, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLENDH_CLEAR5, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLENDM_CLEAR5, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLENDH_CLOUD5, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLENDM_CLOUD5, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLENDMM5, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTHETA35, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLENDH5, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLENDM5, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZRIF5, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZNN_CLOUD5, (KLON, 0:KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZNN_CLEAR5, (KLON, 0:KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZGLMINF5, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLMIN5, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZQVS, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLH, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZCPH, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZRH, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZQL, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZQV, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTHUC, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTHDC, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTHU, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTHD, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZQSEUIL, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZRIF2, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZRI2, (KLON, 0:KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZDELTQH, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZAA, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZIGMAS_CLEAR, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZIGMAS_CLOUD, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZQVL, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZNEBI, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZNEB, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZG2LD2, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZDET9, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZDIFFAR9, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTABFL9, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTABHL9, (KLON, 0:KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZFCORTKE9, (KLON, 0:KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZFDIFF9, (KLON, 0:KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZFDISS9, (KLON, 0:KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZFPRDY9, (KLON, 0:KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZFPRTH9, (KLON, 0:KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZEDR9, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTCORTKE9, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTDIFF9, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTDISS9, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTPRTH9, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZGDZH29, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZGDZF229, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZDTHETA29, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTHETA29, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTHETAH229, (KLON, 0:KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTHETAP29, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZPHIH29, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZGLMDN29, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZGLMUP29, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZRTV9, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZZ9, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZGDZF9, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTHETA9, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLOCPEXF9, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTHETALF9, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTHETAVL9, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZECTF9, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLMECTF9, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZGKTF9, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZGKUH9, (KLON, 0:KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZGKTH9, (KLON, 0:KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLM9, (KLON, 0:KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZAH9, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZQSLTLH29, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZGKEF449, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZDET449, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZGKU449, (KLON, 0:KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZPA449, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZE449, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZA449, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZDCIS59, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZDTH5559, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZDTH559, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZRI559, (KLON, 0:KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTHETAVL559, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZFH_CLOUD559, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZFH_CLEAR559, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZFM_CLOUD559, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZFM_CLEAR559, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLUPH_CLOUD559, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLUPH_CLEAR559, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLUPM_CLOUD59, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLUPM_CLEAR59, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLDNH_CLOUD59, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLDNH_CLEAR59, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLDNM_CLOUD59, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLDNM_CLEAR59, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLSH_CLOUD59, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLSH_CLEAR59, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLSM_CLOUD59, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLSM_CLEAR59, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLINTH_CLOUD59, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLINTH_CLEAR59, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLINTM_CLOUD59, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLINTM_CLEAR59, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLENDH_CLEAR59, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLENDM_CLEAR59, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLENDH_CLOUD59, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLENDM_CLOUD59, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLENDMM59, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZTHETA359, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLENDH59, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), ZLENDM59, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), TABTEST2, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=8), TABTEST3, (KLON, KLEV, KLEV))


fxtran_acdc_temp (REAL (KIND=4), TABTESTDOUBLE, (KLON, KLEV))
fxtran_acdc_temp (REAL (KIND=4), TABTESTDOUBLE2, (KLON, KLEV))
fxtran_acdc_temp (LOGICAL, LLCONV, (KLON, KLEV))
fxtran_acdc_temp (LOGICAL, LLCONV9, (KLON, KLEV))
fxtran_acdc_temp (INTEGER, TABTESTI2, (KLON, KLEV))

REAL (KIND=8)::ZECTCLS 
REAL (KIND=8)::ZKCLS 
REAL (KIND=8)::ZEPSQ
REAL (KIND=8)::ZTESTSAVE2 
REAL (KIND=8)::ZLWK12 
REAL (KIND=8)::ZLWK0
REAL (KIND=8)::ZLDN
REAL (KIND=8)::ZLUP2 
REAL (KIND=8)::ZBLH 
REAL (KIND=8)::ZRS 
REAL (KIND=8)::ZSTAB 
REAL (KIND=8)::ZWSTAR 
REAL (KIND=8)::ZUSTAR 
REAL (KIND=8)::ZANKP144 
REAL (KIND=8)::ZCOR44 
REAL (KIND=8)::ZGZTOPCVP2 
REAL (KIND=8)::ZGZBOTCVP2 
REAL (KIND=8)::ZGZTOP2 
REAL (KIND=8)::ZGZBOT2 
REAL (KIND=8)::ZEN2 
REAL (KIND=8)::ZECTCLS9 
REAL (KIND=8)::ZKCLS9 
REAL (KIND=8)::ZGZTOPCVP 
REAL (KIND=8)::ZGZBOTCVP 
REAL (KIND=8)::ZGZTOP 
REAL (KIND=8)::ZGZBOT 
REAL (KIND=8)::ZQWF1
REAL (KIND=8)::ZDELTQF1
REAL (KIND=8)::ZTHETAL1
REAL (KIND=8)::ZQSLTLF1
REAL (KIND=8)::ZDLEWF1
REAL (KIND=8)::ZQSATF1
REAL (KIND=8)::ZEW1
REAL (KIND=8)::ZH1
REAL (KIND=8)::ZTLF1
REAL (KIND=8)::ZLSCPEF1
REAL (KIND=8)::ZQCF1
REAL (KIND=8)::ZTF1
REAL (KIND=8)::ZQWF2
REAL (KIND=8)::ZDELTQF2
REAL (KIND=8)::ZTHETAL2
REAL (KIND=8)::ZQSLTLF2
REAL (KIND=8)::ZDLEWF2
REAL (KIND=8)::ZQSATF2
REAL (KIND=8)::ZEW2
REAL (KIND=8)::ZH2
REAL (KIND=8)::ZTLF2
REAL (KIND=8)::ZLSCPEF2
REAL (KIND=8)::ZQCF2
REAL (KIND=8)::ZTF2
REAL (KIND=8)::ZQ11
REAL (KIND=8)::ZIGMAS
REAL (KIND=8)::ZDQW
REAL (KIND=8)::ZINC
REAL (KIND=8)::ZEPSQ2
REAL (KIND=8)::ZEPDELT
REAL (KIND=8)::ZEPSIG
REAL (KIND=8)::ZDTHETAL
REAL (KIND=8)::ZBB
REAL (KIND=8)::ZTHETAH
REAL (KIND=8)::ZLSCPEH
REAL (KIND=8)::ZQSLTLH
REAL (KIND=8)::ZTH
REAL (KIND=8)::ZOFFSET
REAL (KIND=8)::ZRIH
REAL (KIND=8)::ZZN1D
REAL (KIND=8)::ZEPNEBS
REAL (KIND=8)::ZSURSAT
REAL (KIND=8)::ZRESUL
REAL (KIND=8)::ZTC
REAL (KIND=8)::ZDQV
REAL (KIND=8)::ZGZLCVPDN
REAL (KIND=8)::ZGZLCVPUP
REAL (KIND=8)::ZPHI3I
REAL (KIND=8)::ZPHI3MAX
REAL (KIND=8)::ZGZTOPCVP29 
REAL (KIND=8)::ZGZBOTCVP29 
REAL (KIND=8)::ZGZTOP29 
REAL (KIND=8)::ZGZBOT29 
REAL (KIND=8)::ZEN29 
REAL (KIND=8)::ZTESTSAVE29 
REAL (KIND=8)::ZLWK129 
REAL (KIND=8)::ZLUP29 
REAL (KIND=8)::ZBLH9 
REAL (KIND=8)::ZRS9 
REAL (KIND=8)::ZSTAB9 
REAL (KIND=8)::ZWSTAR9 
REAL (KIND=8)::ZUSTAR9 
REAL (KIND=8)::ZANKP1449 
REAL (KIND=8)::ZCOR449 
REAL (KIND=8)::TABTEST1 
INTEGER::TABTESTI 
REAL (KIND=8)::CONSTTEST1
REAL (KIND=8)::CONSTTEST0


INTEGER :: JL

YLSTACK = YDSTACK


fxtran_acdc_stack_alloc (ZPHI3)
fxtran_acdc_stack_alloc (ZLMECT)
fxtran_acdc_stack_alloc (ZUSLE)
fxtran_acdc_stack_alloc (ZPRDY)
fxtran_acdc_stack_alloc (ZPRODTH)
fxtran_acdc_stack_alloc (ZDIAG)
fxtran_acdc_stack_alloc (ZDISS)
fxtran_acdc_stack_alloc (ZDIFF)
fxtran_acdc_stack_alloc (ZECT1)
fxtran_acdc_stack_alloc (ZECT)
fxtran_acdc_stack_alloc (ZDELPSG)
fxtran_acdc_stack_alloc (ZDET)
fxtran_acdc_stack_alloc (ZDIFFAR)
fxtran_acdc_stack_alloc (ZTABFL)
fxtran_acdc_stack_alloc (ZTABHL)
fxtran_acdc_stack_alloc (ZFCORTKE)
fxtran_acdc_stack_alloc (ZFDIFF)
fxtran_acdc_stack_alloc (ZFDISS)
fxtran_acdc_stack_alloc (ZFPRDY)
fxtran_acdc_stack_alloc (ZFPRTH)
fxtran_acdc_stack_alloc (ZEDR)
fxtran_acdc_stack_alloc (ZTCORTKE)
fxtran_acdc_stack_alloc (ZTDIFF)
fxtran_acdc_stack_alloc (ZTDISS)
fxtran_acdc_stack_alloc (ZTPRTH)
fxtran_acdc_stack_alloc (ZGDZH2)
fxtran_acdc_stack_alloc (ZGDZF22)
fxtran_acdc_stack_alloc (ZDTHETA2)
fxtran_acdc_stack_alloc (ZTHETA2)
fxtran_acdc_stack_alloc (ZTHETAH22)
fxtran_acdc_stack_alloc (ZTHETAP2)
fxtran_acdc_stack_alloc (ZPHIH2)
fxtran_acdc_stack_alloc (ZGLMDN2)
fxtran_acdc_stack_alloc (ZGLMUP2)
fxtran_acdc_stack_alloc (ZRTV)
fxtran_acdc_stack_alloc (ZZ)
fxtran_acdc_stack_alloc (ZGDZF)
fxtran_acdc_stack_alloc (ZTHETA)
fxtran_acdc_stack_alloc (ZLOCPEXF)
fxtran_acdc_stack_alloc (ZTHETALF)
fxtran_acdc_stack_alloc (ZTHETAVL)
fxtran_acdc_stack_alloc (ZECTF)
fxtran_acdc_stack_alloc (ZLMECTF)
fxtran_acdc_stack_alloc (ZGKTF)
fxtran_acdc_stack_alloc (ZGKUH)
fxtran_acdc_stack_alloc (ZGKTH)
fxtran_acdc_stack_alloc (ZLM)
fxtran_acdc_stack_alloc (ZAH)
fxtran_acdc_stack_alloc (ZQSLTLH2)
fxtran_acdc_stack_alloc (ZGKEF44)
fxtran_acdc_stack_alloc (ZDET44)
fxtran_acdc_stack_alloc (ZGKU44)
fxtran_acdc_stack_alloc (ZPA44)
fxtran_acdc_stack_alloc (ZE44)
fxtran_acdc_stack_alloc (ZA44)
fxtran_acdc_stack_alloc (ZDCIS5)
fxtran_acdc_stack_alloc (ZDTH555)
fxtran_acdc_stack_alloc (ZDTH55)
fxtran_acdc_stack_alloc (ZRI55)
fxtran_acdc_stack_alloc (ZTHETAVL55)
fxtran_acdc_stack_alloc (ZFH_CLOUD55)
fxtran_acdc_stack_alloc (ZFH_CLEAR55)
fxtran_acdc_stack_alloc (ZFM_CLOUD55)
fxtran_acdc_stack_alloc (ZFM_CLEAR55)
fxtran_acdc_stack_alloc (ZLUPH_CLOUD55)
fxtran_acdc_stack_alloc (ZLUPH_CLEAR55)
fxtran_acdc_stack_alloc (ZLUPM_CLOUD5)
fxtran_acdc_stack_alloc (ZLUPM_CLEAR5)
fxtran_acdc_stack_alloc (ZLDNH_CLOUD5)
fxtran_acdc_stack_alloc (ZLDNH_CLEAR5)
fxtran_acdc_stack_alloc (ZLDNM_CLOUD5)
fxtran_acdc_stack_alloc (ZLDNM_CLEAR5)
fxtran_acdc_stack_alloc (ZLSH_CLOUD5)
fxtran_acdc_stack_alloc (ZLSH_CLEAR5)
fxtran_acdc_stack_alloc (ZLSM_CLOUD5)
fxtran_acdc_stack_alloc (ZLSM_CLEAR5)
fxtran_acdc_stack_alloc (ZLINTH_CLOUD5)
fxtran_acdc_stack_alloc (ZLINTH_CLEAR5)
fxtran_acdc_stack_alloc (ZLINTM_CLOUD5)
fxtran_acdc_stack_alloc (ZLINTM_CLEAR5)
fxtran_acdc_stack_alloc (ZLENDH_CLEAR5)
fxtran_acdc_stack_alloc (ZLENDM_CLEAR5)
fxtran_acdc_stack_alloc (ZLENDH_CLOUD5)
fxtran_acdc_stack_alloc (ZLENDM_CLOUD5)
fxtran_acdc_stack_alloc (ZLENDMM5)
fxtran_acdc_stack_alloc (ZTHETA35)
fxtran_acdc_stack_alloc (ZLENDH5)
fxtran_acdc_stack_alloc (ZLENDM5)
fxtran_acdc_stack_alloc (ZRIF5)
fxtran_acdc_stack_alloc (ZNN_CLOUD5)
fxtran_acdc_stack_alloc (ZNN_CLEAR5)
fxtran_acdc_stack_alloc (ZGLMINF5)
fxtran_acdc_stack_alloc (ZLMIN5)
fxtran_acdc_stack_alloc (ZQVS)
fxtran_acdc_stack_alloc (ZLH)
fxtran_acdc_stack_alloc (ZCPH)
fxtran_acdc_stack_alloc (ZRH)
fxtran_acdc_stack_alloc (ZQL)
fxtran_acdc_stack_alloc (ZQV)
fxtran_acdc_stack_alloc (ZTHUC)
fxtran_acdc_stack_alloc (ZTHDC)
fxtran_acdc_stack_alloc (ZTHU)
fxtran_acdc_stack_alloc (ZTHD)
fxtran_acdc_stack_alloc (ZQSEUIL)
fxtran_acdc_stack_alloc (ZRIF2)
fxtran_acdc_stack_alloc (ZRI2)
fxtran_acdc_stack_alloc (ZDELTQH)
fxtran_acdc_stack_alloc (ZAA)
fxtran_acdc_stack_alloc (ZIGMAS_CLEAR)
fxtran_acdc_stack_alloc (ZIGMAS_CLOUD)
fxtran_acdc_stack_alloc (ZQVL)
fxtran_acdc_stack_alloc (ZNEBI)
fxtran_acdc_stack_alloc (ZNEB)
fxtran_acdc_stack_alloc (ZG2LD2)
fxtran_acdc_stack_alloc (ZDET9)
fxtran_acdc_stack_alloc (ZDIFFAR9)
fxtran_acdc_stack_alloc (ZTABFL9)
fxtran_acdc_stack_alloc (ZTABHL9)
fxtran_acdc_stack_alloc (ZFCORTKE9)
fxtran_acdc_stack_alloc (ZFDIFF9)
fxtran_acdc_stack_alloc (ZFDISS9)
fxtran_acdc_stack_alloc (ZFPRDY9)
fxtran_acdc_stack_alloc (ZFPRTH9)
fxtran_acdc_stack_alloc (ZEDR9)
fxtran_acdc_stack_alloc (ZTCORTKE9)
fxtran_acdc_stack_alloc (ZTDIFF9)
fxtran_acdc_stack_alloc (ZTDISS9)
fxtran_acdc_stack_alloc (ZTPRTH9)
fxtran_acdc_stack_alloc (ZGDZH29)
fxtran_acdc_stack_alloc (ZGDZF229)
fxtran_acdc_stack_alloc (ZDTHETA29)
fxtran_acdc_stack_alloc (ZTHETA29)
fxtran_acdc_stack_alloc (ZTHETAH229)
fxtran_acdc_stack_alloc (ZTHETAP29)
fxtran_acdc_stack_alloc (ZPHIH29)
fxtran_acdc_stack_alloc (ZGLMDN29)
fxtran_acdc_stack_alloc (ZGLMUP29)
fxtran_acdc_stack_alloc (ZRTV9)
fxtran_acdc_stack_alloc (ZZ9)
fxtran_acdc_stack_alloc (ZGDZF9)
fxtran_acdc_stack_alloc (ZTHETA9)
fxtran_acdc_stack_alloc (ZLOCPEXF9)
fxtran_acdc_stack_alloc (ZTHETALF9)
fxtran_acdc_stack_alloc (ZTHETAVL9)
fxtran_acdc_stack_alloc (ZECTF9)
fxtran_acdc_stack_alloc (ZLMECTF9)
fxtran_acdc_stack_alloc (ZGKTF9)
fxtran_acdc_stack_alloc (ZGKUH9)
fxtran_acdc_stack_alloc (ZGKTH9)
fxtran_acdc_stack_alloc (ZLM9)
fxtran_acdc_stack_alloc (ZAH9)
fxtran_acdc_stack_alloc (ZQSLTLH29)
fxtran_acdc_stack_alloc (ZGKEF449)
fxtran_acdc_stack_alloc (ZDET449)
fxtran_acdc_stack_alloc (ZGKU449)
fxtran_acdc_stack_alloc (ZPA449)
fxtran_acdc_stack_alloc (ZE449)
fxtran_acdc_stack_alloc (ZA449)
fxtran_acdc_stack_alloc (ZDCIS59)
fxtran_acdc_stack_alloc (ZDTH5559)
fxtran_acdc_stack_alloc (ZDTH559)
fxtran_acdc_stack_alloc (ZRI559)
fxtran_acdc_stack_alloc (ZTHETAVL559)
fxtran_acdc_stack_alloc (ZFH_CLOUD559)
fxtran_acdc_stack_alloc (ZFH_CLEAR559)
fxtran_acdc_stack_alloc (ZFM_CLOUD559)
fxtran_acdc_stack_alloc (ZFM_CLEAR559)
fxtran_acdc_stack_alloc (ZLUPH_CLOUD559)
fxtran_acdc_stack_alloc (ZLUPH_CLEAR559)
fxtran_acdc_stack_alloc (ZLUPM_CLOUD59)
fxtran_acdc_stack_alloc (ZLUPM_CLEAR59)
fxtran_acdc_stack_alloc (ZLDNH_CLOUD59)
fxtran_acdc_stack_alloc (ZLDNH_CLEAR59)
fxtran_acdc_stack_alloc (ZLDNM_CLOUD59)
fxtran_acdc_stack_alloc (ZLDNM_CLEAR59)
fxtran_acdc_stack_alloc (ZLSH_CLOUD59)
fxtran_acdc_stack_alloc (ZLSH_CLEAR59)
fxtran_acdc_stack_alloc (ZLSM_CLOUD59)
fxtran_acdc_stack_alloc (ZLSM_CLEAR59)
fxtran_acdc_stack_alloc (ZLINTH_CLOUD59)
fxtran_acdc_stack_alloc (ZLINTH_CLEAR59)
fxtran_acdc_stack_alloc (ZLINTM_CLOUD59)
fxtran_acdc_stack_alloc (ZLINTM_CLEAR59)
fxtran_acdc_stack_alloc (ZLENDH_CLEAR59)
fxtran_acdc_stack_alloc (ZLENDM_CLEAR59)
fxtran_acdc_stack_alloc (ZLENDH_CLOUD59)
fxtran_acdc_stack_alloc (ZLENDM_CLOUD59)
fxtran_acdc_stack_alloc (ZLENDMM59)
fxtran_acdc_stack_alloc (ZTHETA359)
fxtran_acdc_stack_alloc (ZLENDH59)
fxtran_acdc_stack_alloc (ZLENDM59)
fxtran_acdc_stack_alloc (TABTEST2)
fxtran_acdc_stack_alloc (TABTEST3)

fxtran_acdc_stack_alloc (TABTESTDOUBLE)
fxtran_acdc_stack_alloc (TABTESTDOUBLE2)
fxtran_acdc_stack_alloc (LLCONV)
fxtran_acdc_stack_alloc (LLCONV9)
fxtran_acdc_stack_alloc (TABTESTI2)

JL = KIDIA


ZEPSQ=1.E-10
ZTDIFF (JL,:)=0.0
ZTDISS (JL,:)=0.0
ZTPRTH (JL,:)=0.0
ZTCORTKE (JL,:)=0.0
ZFDIFF (JL,:)=0.0
ZFDISS (JL,:)=0.0
ZFPRTH (JL,:)=0.0
ZFPRDY (JL,:)=0.0
ZFCORTKE (JL,:)=0.0
ZDET (JL,:)=0.0
ZDELPSG (JL,:)=0.0
ZDIAG (JL,:)=0.0

END SUBROUTINE ACTKE_OPENACC
