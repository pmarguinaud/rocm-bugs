! (C) Copyright 1988- ECMWF.
!
! This software is licensed under the terms of the Apache Licence Version 2.0
! which can be obtained at http://www.apache.org/licenses/LICENSE-2.0.
!
! In applying this licence, ECMWF does not waive the privileges and immunities
! granted to it by virtue of its status as an intergovernmental organisation
! nor does it submit to any jurisdiction.

MODULE YOMDYN

!$ACDC methods

IMPLICIT NONE

SAVE

! JPSLDIMK  : maximum possible value for NSLDIMK
INTEGER(KIND=4),PARAMETER :: JPSLDIMK=4

TYPE :: TDYN

!     -------------------------------------------------------------------------

!*    Control variables for the DYNAMICS
!     We put there geometry-dependent variables used in dynamics.
!     Values may be different for the different models run under the OOPS layer.

!====== ASSELIN TIMEFILTERING =================================================

! REPS1   : timefiltering constant applied to t-1
! REPS2   : timefiltering constant applied to t+1
! REPSM1  : timefiltering constant applied to t-1 (moisture vars.)
! REPSM2  : timefiltering constant applied to t+1 (moisture vars.)
! REPSP1  : timefiltering constant applied to t-1 for all surface fields

REAL(KIND=8) :: REPS1
REAL(KIND=8) :: REPS2
REAL(KIND=8) :: REPSM1
REAL(KIND=8) :: REPSM2
REAL(KIND=8) :: REPSP1

!====== MAIN HORIZONTAL DIFFUSION SCHEME ======================================

! * CHARACTERISTIC TIMES:
! HDIRVOR  : for diffusion of vorticity.
! HDIRDIV  : for diffusion of divergence.
! HDIRT    : for diffusion of temperature.
! HDIRQ    : for diffusion of humidity.
! HDIRO3   : for diffusion of ozone.
! HDIRPD   : for diffusion of pressure departure (non hydrostatic).
! HDIRVD   : for diffusion of vertical divergence (non hydrostatic).
! HDIRSP   : for diffusion of surface pressure.

! * REVERSE OF CHARACTERISTIC TIMES:
! HRDIRVOR  : for diffusion of vorticity.
! HRDIRDIV  : for diffusion of divergence.
! HRDIRT    : for diffusion of temperature.
! HRDIRQ    : for diffusion of humidity.
! HRDIRO3   : for diffusion of ozone.
! HRDIRPD   : for diffusion of pressure departure (non hydrostatic).
! HRDIRVD   : for diffusion of vertical divergence (non hydrostatic).
! HRDIRSP   : for diffusion of surface pressure.

! RRDXTAU  : overall intensity of HD 
! RDAMPVOR : local enhancing coefficient for diffusion of vorticity.
! RDAMPDIV : local enhancing coefficient for diffusion of divergence.
! RDAMPT   : local enhancing coefficient for diffusion of temperature.
! RDAMPQ   : local enhancing coefficient for diffusion of humidity.
! RDAMPO3  : local enhancing coefficient for diffusion of ozone.
! RDAMPPD  : local enhancing coefficient for diffusion of pressure departure.
! RDAMPVD  : local enhancing coefficient for diffusion of vertical divergence.
! RDAMPSP  : local enhancing coefficient for diffusion of surface pressure.
! LNEWHD   : only for ECMWF: "new" or "historical" values of HD set-up

! Coefficients RDI[X] generally write HRDIR[X]*g(l)*f(n,N(l),n0(X),x0,r) where n0
!  is generally 0 excepted for vorticity where n0 may be 2 in some cases.
! REXPDH   : order "r" of the diffusion (exponent for the wavenumber dependency).
! FRANDH   : threshold "x0" for the wavenumber dependency.
! SLEVDH   : first threshold for the pressure dependency scaled by VP00 used in function g(l).
! SLEVDH1  : first threshold for the pressure dependency scaled by VP00 used in function N(l).
! SLEVDH2  : second threshold for the pressure dependency scaled by VP00 used in function N(l).
! SLEVDH3  : third threshold for the pressure dependency scaled by VP00 used in function g(l)
!            (used to bound the vertical increase of diffusion in the upper stratosphere).
! NSREFDH  : threshold for the truncation dependency used in function N(l).
! RATIO_HDI_TOP: coefficient of additional diffusion near the top, used in function N(l) (used instead of NSREFDH)
!            When both NSREFDH and RATIO_HDI_TOP are given in NAMDYN, RATIO_HDI_TOP has more priority

! NPROFILEHD : type of vertical profile (function g(l)) used in the horizontal diffusion.
!              1: ECMWF-type profile.
!              2: flexible profile using RPROFHDBT,RPROFHDTP,RPROFHDMX,RPROFHDEX.
!              3: 1/prehyd profile (cleanly rewritten version of 4).
!              4: old (and less flexible) version of 3.

! RPROFHDBT to RPROFHDEX are used only if NPROFILEHD=2:
!  For NPROFILEHD=2:
!  * if "standard pressure > RPROFHDBT" same function as for NPROFILEHD=3
!  * if "standard pressure in [RPROFHDTP,RPROFHDBT]" a specific function is applied,
!    the inflexion point of which is controlled by the exponent RPROFHDEX.
!  * if "standard pressure < RPROFHDTP" function is equal to its maximum equal to RPROFHDMX.
!  a specific profile is used between pressure levels RPROFHDBT and RPROFHDTP

! LRDISPE_EC : horizontal function used in the horizontal diffusion.
!  LRDISPE_EC=T: ECMWF type function using PDISPEL, PDISPEE, PDISPE and PDISPEX (not implemented in LAM models).
!  LRDISPE_EC=F: MF type function using PDISPE and PDISPVOR (global model) or BDISPE (LAM model).

! * LEVEL AND WAVENUMBER DEPENDENT INVERSE CHARACTERISTIC TIMES:
! RDIVOR   : for diffusion of vorticity.
! RDIDIV   : for diffusion of divergence.
! RDITG    : for diffusion of temperature.
! RDIGFL   : for diffusion of GFL vars.
! RDIPD    : for diffusion of pressure departure (NH).
! RDIVD    : for diffusion of vertical divergence (NH).
! RDISP    : for diffusion of surface pressure.

! RDHI     : main horizontal diffusion operator used for stretched ARPEGE.

! RDHIVOR  : main horizontal diffusion operator, VOR  
! RDHIDIV  : main horizontal diffusion operator, DIV
! RDHISPD  : main horizontal diffusion operator, SPD
! RDHISVD  : main horizontal diffusion operator, SVD
! RDHINHX  : main horizontal diffusion operator, NHX
! RDHIT    : main horizontal diffusion operator, T
! RDHIGFL  : main horizontal diffusion operator, GFL
! RDHIP    : main horizontal diffusion operator, P
! RDHSVOR  : supplementary horizontal diffusion operator, VOR
! RDHSDIV  : supplementary horizontal diffusion operator, DIV
! RDHSSVD  : supplementary horizontal diffusion operator, SVD
! RDHSNHX  : supplementary horizontal diffusion operator, NHX

! LSTRHD   : .T.: main horizontal diffusion operator adapted to stretched ARP.
! HDTIME_STRHD: TDT (if not, the main horizontal diffusion operator
!            used for stretched ARPEGE is recomputed).

! LTOP_VOR : optional sponge for vorticity at model top 
!            introduced to remove "solitons" where LLMESO kills the DIV
! NTOP_VOR_TRUNC : cut-off wavenumber for 4th order VOR sponge 
                ! (KMAX in formulae)
! NTOP_VOR_BOT : bottom level of extra sponge for VOR 
                ! (extra sponge linear between NTOP_VOR_BOT and 1) 
! KLSPONGE     : vertical level from which to begin strong DIV damping
! RBEGSPONGE : from which Z_PDILEV to begins sponge, the higher the number the shallower the sponge
! LM0DAMP    : if true, damps the m=0 mode (zonal-mean)

REAL(KIND=8) :: HDIRVOR
REAL(KIND=8) :: HDIRDIV
REAL(KIND=8) :: HDIRT
REAL(KIND=8) :: HDIRQ
REAL(KIND=8) :: HDIRO3
REAL(KIND=8) :: HDIRPD
REAL(KIND=8) :: HDIRVD
REAL(KIND=8) :: HDIRSP
REAL(KIND=8) :: HRDIRVOR
REAL(KIND=8) :: HRDIRDIV
REAL(KIND=8) :: HRDIRT
REAL(KIND=8) :: HRDIRQ
REAL(KIND=8) :: HRDIRO3
REAL(KIND=8) :: HRDIRPD
REAL(KIND=8) :: HRDIRVD
REAL(KIND=8) :: HRDIRSP
REAL(KIND=8) :: RRDXTAU
REAL(KIND=8) :: RDAMPVOR
REAL(KIND=8) :: RDAMPDIV
REAL(KIND=8) :: RDAMPT
REAL(KIND=8) :: RDAMPQ
REAL(KIND=8) :: RDAMPO3
REAL(KIND=8) :: RDAMPPD
REAL(KIND=8) :: RDAMPVD
REAL(KIND=8) :: RDAMPSP
LOGICAL :: LNEWHD
REAL(KIND=8) :: REXPDH
REAL(KIND=8) :: FRANDH
REAL(KIND=8) :: SLEVDH
REAL(KIND=8) :: SLEVDH1
REAL(KIND=8) :: SLEVDH2
REAL(KIND=8) :: SLEVDH3
INTEGER(KIND=4) :: NSREFDH
REAL(KIND=8) :: RATIO_HDI_TOP
INTEGER(KIND=4) :: NPROFILEHD
REAL(KIND=8) :: RPROFHDBT
REAL(KIND=8) :: RPROFHDTP
REAL(KIND=8) :: RPROFHDMX
REAL(KIND=8) :: RPROFHDEX
LOGICAL :: LRDISPE_EC
REAL(KIND=8),ALLOCATABLE:: RDIVOR(:,:)
REAL(KIND=8),ALLOCATABLE:: RDIDIV(:,:)
REAL(KIND=8),ALLOCATABLE:: RDITG(:,:)
REAL(KIND=8),ALLOCATABLE:: RDIGFL(:,:,:)
REAL(KIND=8),ALLOCATABLE:: RDIPD(:,:)
REAL(KIND=8),ALLOCATABLE:: RDIVD(:,:)
REAL(KIND=8),ALLOCATABLE:: RDISP(:)
REAL(KIND=8),ALLOCATABLE:: RDHI(:,:,:)
REAL(KIND=8),ALLOCATABLE:: RDHIVOR(:,:,:)
REAL(KIND=8),ALLOCATABLE:: RDHIDIV(:,:,:)
REAL(KIND=8),ALLOCATABLE:: RDHISPD(:,:,:)
REAL(KIND=8),ALLOCATABLE:: RDHISVD(:,:,:)
REAL(KIND=8),ALLOCATABLE:: RDHINHX(:,:,:)
REAL(KIND=8),ALLOCATABLE:: RDHIT(:,:,:)
REAL(KIND=8),ALLOCATABLE:: RDHIGFL(:,:,:,:)
REAL(KIND=8),ALLOCATABLE:: RDHIP(:,:,:)
REAL(KIND=8),ALLOCATABLE:: RDHSVOR(:,:,:)
REAL(KIND=8),ALLOCATABLE:: RDHSDIV(:,:,:)
REAL(KIND=8),ALLOCATABLE:: RDHSSVD(:,:,:)
REAL(KIND=8),ALLOCATABLE:: RDHSNHX(:,:,:)
LOGICAL :: LSTRHD
REAL(KIND=8) :: HDTIME_STRHD
REAL(KIND=8) :: KLSPONGE
LOGICAL :: LM0DAMP
REAL(KIND=8) :: RBEGSPONGE


LOGICAL :: LTOP_VOR
INTEGER(KIND=4) :: NTOP_VOR_TRUNC
INTEGER(KIND=4) :: NTOP_VOR_BOT

!====== SEMI-LAGRANGIAN SCHEME ====================

! * FOR DP CALCULATION:
! RSAVEDP: SAVE LAT, LON, ETA DP COORDINATES
REAL(KIND=8),ALLOCATABLE:: RSAVEDP(:,:,:,:)

!====== SEMI-LAGRANGIAN HORIZONTAL DIFFUSION SCHEME (SLHD) ====================

! SLHDA0T :    Namelist variable to influence T
! SLHDB   :    Exponent of the deformation in f(d) function
! SLHDBT  :    Exponent of the deformation in f(d) function for T
! SLHDD0  :    Treshold for deformation tensor enhancement
! SLHDD00 :    Namelist value for deformation tensor enhancement treshold 
! SLHDD00T:    Namelist value for deformation tensor enhancement treshold for T
! SLHDDIV :    Weight for including horizontal divergence into deformation
! SLHDRATDDIV: Nondimensional enhancer of divergence based diffusion
! SLHDHOR :    Switch for computing flow deformation:
!                0 - along eta levels (sloped)
!                1 - along pressure levels (quasi horizontal)
! LSLHDHEAT:   If true, the triggering function for heat variables differs from 
!              the one for momentum variables.
! LSLHDSPONGE  Use SLHD in upper 20 hPa to be preventing grid-point storms there
! SLHD_P_LOW : lowermost pressure level of SLHD activity (in Pa)
! SLHD_P_HIGH: lowermost pressure level of full SLHD activity (in Pa)

! * THE "HDS" CHARACTERISTIC TIMES (obsolete):
! HDSRVOR : for diffusion of vorticity.
! HDSRDIV : for diffusion of divergence.
! HDSRVD  : for diffusion of vertical divergence (NH).

! * REVERSE OF THE "HDS" CHARACTERISTIC TIMES:
! HRDSRVOR : for diffusion of vorticity.
! HRDSRDIV : for diffusion of divergence.
! HRDSRVD  : for diffusion of vertical divergence (NH).

! RDAMPVORS: local enhancing coefficient for HDS diffusion of vorticity
! RDAMPDIVS: local enhancing coefficient for HDS diffusion of divergence
! RDAMPVDS : local enhancing coefficient for HDS diffusion of vert. divergence
! RDAMPHDS : ratio HRDSRDIV/HRDIRDIV.

! Coefficients RDS[X] generally write HRDSR[X]*gs(l)*f(n,N(l),n0(X),x0,r) where n0
!  is generally 0 excepted for vorticity where n0 may be 2 in some cases.
! REXPDHS  : order "r" of the diffusion (exponent for the wavenumber dependency).
! SLEVDHS  : first threshold for the pressure dependency scaled by VP00 used in function gs(l).
! SLEVDHS1 : first threshold for the pressure dependency scaled by VP00 used in function N(l).
! SLEVDHS2 : second threshold for the pressure dependency scaled by VP00 used in function N(l).
! SDRED    : variable modifying the vertical profile based on SLEVDH
!            ( g(l) becomes g(l)-SDRED in the "main" diffusion).

! * "HDS" LEVEL AND WAVENUMBER DEPENDENT INVERSE CHARACTERISTIC TIMES:
! RDSVOR   : for diffusion of vorticity.
! RDSDIV   : for diffusion of divergence.
! RDSVD    : for diffusion of NH vertical divergence variable.
! RDHS     : SLHD additional horizontal diffusion operator used for stretched ARPEGE.

! * MASKING FUNCTION FOR SLHD
! SLHD_MASK_U : controls default variables 
! SLHD_MASK_T : controls heat variables when LSLHDHEAT=true
! NLEV_SPONGE : lowermost level to compute SLHD

REAL(KIND=8) :: SLHDA0
REAL(KIND=8) :: SLHDA0T
REAL(KIND=8) :: SLHDB
REAL(KIND=8) :: SLHDBT
REAL(KIND=8) :: SLHDD00
REAL(KIND=8) :: SLHDD00T
REAL(KIND=8) :: SLHDDIV
REAL(KIND=8) :: SLHDRATDDIV
REAL(KIND=8) :: SLHDHOR
REAL(KIND=8) :: SLHD_P_LOW
REAL(KIND=8) :: SLHD_P_HIGH
LOGICAL :: LSLHDHEAT
LOGICAL :: LSLHDSPONGE
REAL(KIND=8) :: HDSRVOR
REAL(KIND=8) :: HDSRDIV
REAL(KIND=8) :: HDSRVD
REAL(KIND=8) :: HRDSRVOR
REAL(KIND=8) :: HRDSRDIV
REAL(KIND=8) :: HRDSRVD
REAL(KIND=8) :: RDAMPVORS
REAL(KIND=8) :: RDAMPDIVS
REAL(KIND=8) :: RDAMPVDS
REAL(KIND=8) :: RDAMPHDS
REAL(KIND=8) :: REXPDHS
REAL(KIND=8) :: SLEVDHS
REAL(KIND=8) :: SLEVDHS1
REAL(KIND=8) :: SLEVDHS2
REAL(KIND=8) :: SDRED
REAL(KIND=8),ALLOCATABLE:: RDSVOR(:,:)
REAL(KIND=8),ALLOCATABLE:: RDSDIV(:,:)
REAL(KIND=8),ALLOCATABLE:: RDSVD(:,:)
REAL(KIND=8),ALLOCATABLE:: RDHS(:,:,:)
REAL(KIND=8),ALLOCATABLE:: SLHD_MASK_U(:)
REAL(KIND=8),ALLOCATABLE:: SLHD_MASK_T(:)
REAL(KIND=8) :: ZSLHDP1
REAL(KIND=8) :: ZSLHDP3
INTEGER(KIND=4) :: NLEV_SPONGE


!====== OTHER DIFFUSIVE PROCESSES (moved from YOMDYNA at CY45) ====================

! LRFRIC     : .T. = Rayleigh friction in horizontal (zonal) wind.
! LRFRICISOTR: isotropic Rayleigh friction (acts on zonal and meridian horizontal wind).
LOGICAL :: LRFRIC
LOGICAL :: LRFRICISOTR

!======  QUANTITIES TO CHANGE THE VARIABLE IN THE T-EQN =======================

! RCORDIT(NFLEVG)    : correction term at full-levels for diffusion of T.
! RCORDIH(0:NFLEVG)  : correction term at half-levels for SL T-eqn if RCMSMP0/=0
! RCORDIF(NFLEVG)    : correction term at full-levels for SL T-eqn if RCMSMP0/=0

REAL(KIND=8),ALLOCATABLE:: RCORDIT(:)
REAL(KIND=8),ALLOCATABLE:: RCORDIH(:)
REAL(KIND=8),ALLOCATABLE:: RCORDIF(:)

!==== MAXIMUM V-WINDS ALLOWED IN THE SEMI-LAGRANGIAN MODEL ====================

! VMAX1   : if V>VMAX1 (SM) or SQRT(U**2+V**2)>VMAX1 (DM),
!           warning in the SL scheme.
! VMAX2   : if V>VMAX2 (SM) or SQRT(U**2+V**2)>VMAX2 (DM),
!           abort in the SL scheme.

REAL(KIND=8) :: VMAX1
REAL(KIND=8) :: VMAX2

!==== MAXIMUM D3 ALLOWED ======================================================

! LBOUND_D3  : bound absolute value of D3
! RMAX_D3    : maximum value allowed for absolute value of D3 when LBOUND_D3=.T.

REAL(KIND=8) :: RMAX_D3
LOGICAL :: LBOUND_D3

!==== RAYLEIGH FRICTION =======================================================

! RKRF(NFLEVG) : coefficient of Rayleigh friction
! NMAXLEVRF    : maximum level for which Rayleigh friction is applied. If no
!                Rayleigh friction is applied, we set NMAXLEVRF=0
! RRFZ1        : reference value for height of profile
! RRFPLM       : pressure limit - no Rayleigh friction for p > RRFPLM
! RRFTAU       : e-folding time for Rayleigh friction.

REAL(KIND=8),ALLOCATABLE:: RKRF(:) 
INTEGER(KIND=4) :: NMAXLEVRF
REAL(KIND=8) :: RRFZ1
REAL(KIND=8) :: RRFPLM
REAL(KIND=8) :: RRFTAU

!==== UPPER RADIATIVE BOUNDARY CONDITION ======================================

! RTEMRB - tuning temperature for upper radiative b. c. (LRUBC)
! NRUBC   : control of radiative upper boundary condition :
!           =0 <=> non computation
!           =1 <=> computation on the forecast field
!           =2 <=> computation on the departure of the forecast from the coupling field

REAL(KIND=8) :: RTEMRB
INTEGER(KIND=4) :: NRUBC

!==== IMPLICIT UPPER ABSORBING-LAYER ======================================

! RGWFRIC(0:NFLEVG) : vertical coefficients of absorbing-layer.
! NLEV_GWFRIC       : maximum level for which Rayleigh friction is applied.
!                     absorbing-layer is applied, we set NLEV_GWFRIC=0
! RGWFRIC_PLM       : pressure limit - no absorption for hyd_pres > PLM
! RGWFRIC_MAX       : max absorbing value .

LOGICAL :: LGWFRIC
INTEGER(KIND=4) :: NLEV_GWFRIC
REAL(KIND=8) :: RGWFRIC_MAX
REAL(KIND=8) :: RGWFRIC_PLM
REAL(KIND=8),ALLOCATABLE :: RGWFRIC(:)


!==== SEMI-IMPLICIT SCHEME, VERTICAL EIGENMODES, PC SCHEMES ===================

! LSIDG   : .F.: Semi-implicit-scheme with reduced divergence.
!           .T.: Semi-implicit scheme with not reduced divergence.
! LDYN_STABAN : Analysis of stability for linear operator L under SUSI/SUNHSI.
!           Eigenvalues of matrix "M = (I - tau L)^-1 (I + tau L)" are computed.
!           The dimension of M is (2*NFLEVG + 1)*(2*NFLEVG + 1). 
!           Correctly design L operator implies abs(eigenvalue) <= 1 for all
!           eigenvalues of M.

! BETADT  : coefficient for the semi-implicit treatment of divergence,
!           temperature, continuity (and NH if required) equations.
! RBT     : BETADT multiplied by coefficients depending on VESL, XIDT
! RBTS2   : 0.5*RBT
! REFGEO  : reference geopotentiel for shallow-water model.
! SIPR    : reference surface pressure.
! SITR    : reference temperature.
! SITRA   : namelist acoustic reference temperature.
! SITRAM  : model acoustic reference temperature.
! NOPT_SITRA: option for SITRAM (0 for vertically constant SITRAM, 1 for vertically-dependent SITRAM)
! SITRUB : ref. temper. for SI corr. of temper.(for LRUBC=.T.)
! SIPRUB : coef. for SI corr. of surf. press.  (for LRUBC=.T.)
! SITIME  : =TDT (if not, Helmholtz matrices are recomputed in CNT4).
! SIRPRG  : auxiliary variable for SIGAM,SIGAMA.
! SIRPRN  : auxiliary variable for SITNU,SITNUA
! SIRSLP  : square of the maximum orography slope over the domain
! NSITER  : number of iterations to treat the non linear semi-implicit terms
!           in the non-hydrostatic scheme.
! NCURRENT_ITER : for LNHDYN with PC scheme - current iteration: 
!                   0                 - predictor
!                   1, 2, ..., NSITER - correctors
! LRHDI_LASTITERPC: T (resp. F): when a PC scheme is activated (for example
!  LPC_FULL=.T.), the horizontal diffusion is done at the last iteration
!  of the corrector step (resp. all iterations of the predictor-corrector
!  scheme).
! NITERHELM : in the NH model, when the C1 constraint is not matched,
!  NITERHELM is the number of corrector iterations required to solve
!  the implicit part of the semi-implicit scheme (including the Helmoltz eqn).
!  This variable is not used in the hydrostatic model, and in the NH model
!  when the constraint C1 is matched: in this case there is no corrector
!  iteration in the SI scheme.
! NSZNISNAX : size of SINISNAX, NSMAX for GM models and NMSMAX for LAM models.

! * PRESSURES LINKED TO A REFERENCE GRAVITY SURFACE PRESSURE = SIPR
! SIALPH(NFLEVG)  : coefficients "alpha" of hydrostatics.
! SILNPR(NFLEVG)  : Log of ratio of pressures between levels.
! SIDELP(NFLEVG)  : pressure differences across layers.
! SIRDEL(NFLEVG)  : their inverse.
! SITLAH(0:NFLEVG): half-level pressures.
! SITLAF(NFLEVG)  : full-level pressures.
! SIDPHI(NFLEVG)  : geopotential differences across layers.
! SIWEIG(NFLEVG,3): vertical interpolating parameters
! SIB(NFLEVG,NFLEVG)   : operator "B" of the SI scheme (DIV ===> DP/DT=B.DIV).
! SIMO(NFLEVG,NFLEVG)  : eigenvectors of "B".
! SIMI(NFLEVG,NFLEVG)  : SIMO**-1
! SIVP(NFLEVG)         : eigenvalues of "B".
! SIVP2(NFLEVG)        : used as a placeholder for SIVP in SPNHSI
! SIPD(NSPEC), SIPE(NSPEC), SIPF(NSPEC ) : will be used for the stretched-grid version
! of LAM.
! SINISNAX(0:MERGE(YDGEOMETRY%YRDIM%NMSMAX,YDGEOMETRY%YRDIM%NSMAX,LELAM)) :
! either NSMAX+1-KM for GM models or NISNAX for LAM models.
! SILAPDI(YDGEOMETRY%YRDIM%NSPEC2) : RLAPDI(NVALUE(JSP)) for GM models, 
! equivalent value based on RLEPDIM for LAM models.
! SILAPIN(YDGEOMETRY%YRDIM%NSPEC2) : RLAPIN(NVALUE(JSP)) for GM models, 
! equivalent value based on RLEPINM for LAM models.

! SIMITRA, SIMOTRA, SIFACITRA : transposed SIMI, SIMO and SIFACI

! SIHEG(NFLEVG,(NSMAX+1)*(NSMAX+2)/2,3), SIHEG2(NFLEVG,NSMAX+1,2:3):
!  Helmholtz operator in case of SI computations with not reduced divergence. 
! SIHEGB(NFLEVG,(NSMAX+1)*(NSMAX+2)/2,3), SIHEGB2(NFLEVG,NSMAX+1,2:3):
!  Additional operators in case of LSIDG=T SI computations in the NH model.

! SIHEGTRA, SIHEG2TRA, SIHEGBTRA, SIHEGB2TRA : transposed arrays as defined
! above. SIHEGIND : indices in SIHEGTRA and SIHEGBTRA.


! * PRESSURES LINKED TO A REFERENCE ACOUSTIC SURFACE PRESSURE = SIPRA
! SIALPH_NH(NFLEVG)  : coefficients "alpha" of nonhydrostatics.
! SILNPR_NH(NFLEVG)  : Log of ratio of pressures between levels.
! SIDELP_NH(NFLEVG)  : pressure differences across layers.
! SIRDEL_NH(NFLEVG)  : their inverse.
! SITLAH_NH(0:NFLEVG): half-level pressures.
! SITLAF_NH(NFLEVG)  : full-level pressures.
! SIDPHI_NH(NFLEVG)  : geopotential differences across layers.

! SIWH2F(NFLEVG,2): vertical interpolating parameters from half-to-full levels
! SIWF2H(NFLEVG)  : vertical interpolating parameters from full-to-half levels

! * SI VERTICAL PARAMETERS LINKED TO THE DOMAIN's MAX OROGRAPHY SLOPE 
! SITFM(NFLEVG)   : merid. gradient of theta of the SI reference-state 
! SITFL(NFLEVG)   : zonal  gradient of theta of the SI reference-state  
! SIGFM(NFLEVG)   : merid. gradient of Phi of the SI reference-state 
! SIGFL(NFLEVG)   : zonal  gradient of Phi of the SI reference-state 

! SIFAC : Used in SI scheme (NHDYN models).
!         For example, contains:
!         [ 1 - beta**2 (Delta t)**2 C**2 (SITR/SITRA) (LLstar/H**2) ]
! SIFACI: Inverse of SIFAC. 

! VNORM : constant for new scaling.
! SLOPE_MAX : max of orography slope over the domain


LOGICAL :: LSIDG
LOGICAL :: LDYN_STABAN
LOGICAL :: LRHDI_LASTITERPC
LOGICAL :: LSIDYN_VERBOSE

REAL(KIND=8) :: BETADT
REAL(KIND=8) :: RBT
REAL(KIND=8) :: RBTS2
REAL(KIND=8) :: REFGEO
REAL(KIND=8) :: SIPR
REAL(KIND=8) :: SIPRA
REAL(KIND=8) :: SITR
REAL(KIND=8) :: SITRA
REAL(KIND=8) :: SITRUB
REAL(KIND=8) :: SIPRUB
REAL(KIND=8) :: SITIME
REAL(KIND=8) :: SIRPRG
REAL(KIND=8) :: SIRPRN
REAL(KIND=8) :: SISLP
REAL(KIND=8) :: SIFRG
REAL(KIND=8) :: SIFRA
REAL(KIND=8) :: SITVAR

INTEGER(KIND=4) :: NSITER
INTEGER(KIND=4) :: NCURRENT_ITER
INTEGER(KIND=4) :: NITERHELM
INTEGER(KIND=4) :: NOPT_SITR
INTEGER(KIND=4) :: NOPT_SIPR
INTEGER(KIND=4) :: NOPT_SISLP
INTEGER(KIND=4) :: NSZNISNAX

REAL(KIND=8),ALLOCATABLE:: SITRAM(:)
REAL(KIND=8),ALLOCATABLE:: SITRM(:)

REAL(KIND=8),ALLOCATABLE:: SIALPH(:)
REAL(KIND=8),ALLOCATABLE:: SILNPR(:)
REAL(KIND=8),ALLOCATABLE:: SIDELP(:)
REAL(KIND=8),ALLOCATABLE:: SIRDEL(:)
REAL(KIND=8),ALLOCATABLE:: SITLAH(:)
REAL(KIND=8),ALLOCATABLE:: SITLAF(:)
REAL(KIND=8),ALLOCATABLE:: SIDPHI(:)

REAL(KIND=8),ALLOCATABLE:: SIALPH_NH(:)
REAL(KIND=8),ALLOCATABLE:: SILNPR_NH(:)
REAL(KIND=8),ALLOCATABLE:: SIDELP_NH(:)
REAL(KIND=8),ALLOCATABLE:: SIRDEL_NH(:)
REAL(KIND=8),ALLOCATABLE:: SITLAH_NH(:)
REAL(KIND=8),ALLOCATABLE:: SITLAF_NH(:)
REAL(KIND=8),ALLOCATABLE:: SIDPHI_NH(:)

REAL(KIND=8),ALLOCATABLE:: SIWF2H(:)
REAL(KIND=8),ALLOCATABLE:: SIWH2F(:,:)
REAL(KIND=8),ALLOCATABLE:: SIGFL(:)
REAL(KIND=8),ALLOCATABLE:: SIGFM(:)
REAL(KIND=8),ALLOCATABLE:: SITFL(:)
REAL(KIND=8),ALLOCATABLE:: SITFM(:)
REAL(KIND=8),ALLOCATABLE:: SIGHL(:)
REAL(KIND=8),ALLOCATABLE:: SIGHM(:)

REAL(KIND=8),ALLOCATABLE:: SIB(:,:)
REAL(KIND=8),ALLOCATABLE:: SIMO(:,:)
REAL(KIND=8),ALLOCATABLE:: SIMI(:,:)
REAL(KIND=8),ALLOCATABLE:: SIVP(:)
REAL(KIND=8),ALLOCATABLE:: SIVP2(:)
REAL(KIND=8),ALLOCATABLE:: SIPD(:)
REAL(KIND=8),ALLOCATABLE:: SIPE(:)
REAL(KIND=8),ALLOCATABLE:: SIPF(:)
INTEGER(KIND=4),ALLOCATABLE:: SINISNAX(:)
REAL(KIND=8),ALLOCATABLE:: SILAPDI(:)
REAL(KIND=8),ALLOCATABLE:: SILAPIN(:)
REAL(KIND=8),ALLOCATABLE:: SIHEG(:,:,:)
REAL(KIND=8),ALLOCATABLE:: SIHEG2(:,:,:)
REAL(KIND=8),ALLOCATABLE:: SIHEGB(:,:,:)
REAL(KIND=8),ALLOCATABLE:: SIHEGB2(:,:,:)
REAL(KIND=8),ALLOCATABLE:: SIFAC(:,:)
REAL(KIND=8),ALLOCATABLE:: SIFACI(:,:)
REAL(KIND=8),ALLOCATABLE:: SIBQ(:,:)

REAL(KIND=8),ALLOCATABLE:: SIMITRA(:,:)
REAL(KIND=8),ALLOCATABLE:: SIMOTRA(:,:)
REAL(KIND=8),ALLOCATABLE:: SIFACITRA(:,:)
REAL(KIND=8),ALLOCATABLE:: SIHEGTRA(:,:)
REAL(KIND=8),ALLOCATABLE:: SIHEG2TRA(:,:,:)
REAL(KIND=8),ALLOCATABLE:: SIHEGBTRA(:,:)
REAL(KIND=8),ALLOCATABLE:: SIHEGB2TRA(:,:,:)
REAL(KIND=8),ALLOCATABLE:: SIHEGIND(:)
REAL(KIND=8),ALLOCATABLE:: SIBQTRA(:,:)

REAL(KIND=8),ALLOCATABLE:: SIZA(:)
REAL(KIND=8),ALLOCATABLE:: SIZC(:)
REAL(KIND=8),ALLOCATABLE:: SIPIS(:)
REAL(KIND=8),ALLOCATABLE:: SITGR(:,:)
REAL(KIND=8),ALLOCATABLE:: SITAC(:)

REAL(KIND=8) :: VNORM
REAL(KIND=8) :: SLOPE_MAX
REAL(KIND=8) :: PSURF_MAX
REAL(KIND=8) :: PSURF_MIN


!=========== SEMI-LAGRANGIAN SWITCHES AND WEIGHTS =============================
!=========== + ADDITIONAL "ADVECTION" SWITCHES ALSO USED IN EULERIAN ========== 

! * Switches NxLAG:
! NVLAG   :  switch for formulation or discretisation of continuity equation.
! NWLAG   :  switch for formulation or discretisation of momentum equations.
! NTLAG   :  switch for formulation or discretisation of temperature equation.
! NSPDLAG :  switch for formulation or discretisation of P-hat equation.
! NSVDLAG :  switch for formulation or discretisation of d-hat equation.
! Remarks about NxLAG:
! a) possible value for NxLAG:
!    NxLAG=2 -> averaging of R.H.S. of the corresponding eq.
!               along the trajectory with the part corresponding
!               to the departure point added to the t-dt term
!    NxLAG=3 -> averaging of R.H.S. of the corresponding eq.
!               along the trajectory with the part corresponding
!               to the departure point interpolated linearly
!    NxLAG=4 -> same as NxLAG=4 with the tendency of physics
!               interpolated also linearly (applicable only for x=W,T,SVD)

! b) For NVLAG and 2D model: 
!    NVLAG>0 stands for the conventional formulation of continuity equation.
!    NVLAG<0 stands for the Lagrangian formulation of continuity equation:
!     in this case the remark a) is valid for ABS(NVLAG).

! NSPLTHOI : key to SPLiT High Order Interpolation
!            if NSPLTHOI /= 0 the quantity to be interpolated by high order
!            interpolation is split into:
!            i/  the field itself (note: for d4 it may contain d3 only) and
!            ii/ the remaining part (mostly tendency from physics)
!            if NSPLTHOI = 1 : i/ can use the diffusive interpolation while
!                              the ii/ part uses the non-diffusive int. only
!            if NSPLTHOI = -1: i/ and ii/ are interpolated by the same
!                              interpolation operator.
! LSPLTHOIGFL : model key to interpolate separately GFL fields
!               and their phys. tendencies (used only in SUSLB).
! NSLDIMK   : Number (dimension) of used horizontal non-linear weights in the model:
!            * default is 1
!            * L3DTURB=.T. adds +2 (first for KM, second for KH)
!            * NSPLITHOI=1 adds +1 (always the last one) for weights
!                         applied to physical tendencies

! * Research of semi-Lagrangian trajectory:
! NITMP   : Number of iterations for computing the medium point of the
!           semi-lagrangian trajectory.
! VETAON  : VETAON*eta(layer nr 1)+(1.-VETAON)*eta(top) is the lower
!           value allowed for ETA of the origin/anterior point in
!           the 3D model.
! VETAOX  : VETAOX*eta(bottom layer)+(1.-VETAOX)*eta(ground) is the
!           upper value allowed for ETA of the origin/anterior point
!           in the 3D model.
! RW2TLFF : when computing the refined position of the origin point for
!           Coriolis term, the new wind used is:
!           0.5*RW2TLFF*(V(F)+V(O)) + (1-RW2TLFF)*V(M)

! * WENO vertical interpolation for SL trajectory research
! RALPHA  : power for the linear weights denominator. Higher values
!           represents less overshooting but more diffusive results.
! RALPHA_TOP : The same as above for uppermost NLEV_ZALPHA levels
! NLEV_ZALPHA : Number of uppermost levels with special treatment
! NEDER   : defines the method to obtain smoothness indicator (see report of A. Craciun)
!           1 - L2-norm of high order variations of the polynomials reconstruction (eq.3)
!           2-4 - same as 1 with considering also derivatives (eq. 4-6)
!           5 - undivided differences methods  (eq. 7) 
! LWENOBC : .true. - no special boundary treatment for weno (results in more weight to 
!                    the outstanding result, typically the one from the high order interpolation)
!           .false. - boundaries are interpolated in the standard way (smoother in TL/AD)

! * Quasi-monotonicity for high order wind interpolation of SL trajectory
! NQMHOISLT : 0 no QM treatment
!             1 quasi-monotone along horizontal
!             2 quasi-monotone in 3D
!             3 quasi-monotone along vertical

! * SL trajectory researched by 4th order Runge-Kutta implicit method (Lobatto IIIA)
! LSLDP_RK  : when .TRUE. the iterative algorithm is replaced by 4th order Runge Kutta method

! LSLDP_CURV : on/off - horizontal wind components from lat,lon are transformed to cartesian coords
! LSLDP_CURV_FIX  : on/off - for the wind vector fixer when LSLDP_CURV
! LRHS_CURV  : on/off - for the right hand side interpolation
! LRHS_CURV_FIX  : on/off - for the wind vector fixer when LRHS_CURV
! LSLDP_XYZ  : on/off - when .TRUE. the SL trajectory iterations are performed entirely in 
!              cartesian x, y, z coordinates - needs LSLDP_CURV
! LSLDP_SAVE : on/off  the departure point at each timestep are saved and used as starting values
!              for next step iterations reducing their cost - work with LSLDP_XYZ only
!     in order to mitigate the pole singularity during the SL trajectory research.

! * Uncentering factor in the semi-Lagrangian scheme:
! VESL    : first order uncentering factor applied to non linear and linear
!           terms.
! XIDT    : pseudo-second order uncentering factor applied to linear terms,
!           when an alternative second-order averaging is required in the 
!           2TL SL scheme.

! * Switches for use of quasi-monotone interpolations:
! LQMW    :  Use quasi-monotone three-dimensional interpolations for wind
! LQMHW   :  Use quasi-monotone interpolations in the horizontal for wind
! LQMT    :  Use quasi-monotone three-dimensional interpolations for temperature
! LQMHT   :  Use quasi-monotone interpolations in the horizontal for temperature
! LQMP    :  Use quasi-monotone three-dimensional interpolations for cont. eq
! LQMHP   :  Use quasi-monotone interpolations in the horizontal for cont. eq
! LQMPD   :  Use quasi-monotone three-dimensional interpolations for P-hat eqn.
! LQMHPD  :  Use quasi-monotone interpolations in the horizontal for P-hat eqn.
! LQMVD   :  Use quasi-monotone three-dimensional interpolations for d-hat eqn.
! LQMHVD  :  Use quasi-monotone interpolations in the horizontal for d-hat eqn.

! * Switches for vertical quintic interpolation
! LVWENO_W   : Use vertical quintic interpolation for wind
! WENO_ALPHA_W   : WENO weight for wind
! LVWENO_T   : Use vertical quintic interpolation for temperature
! WENO_ALPHA_T   : WENO weight for temperature
! LVWENO_SP  : Use vertical quintic interpolation for cont. eq
! WENO_ALPHA_SP  : WENO weight for cont. eq
! LVWENO_SPD  : Use vertical quintic interpolation for P-hat eqn.
! WENO_ALPHA_SPD : WENO weight for P-hat eqn.
! LVWENO_SVD  : Use vertical quintic interpolation for d-hat eqn.
! WENO_ALPHA_SVD : WENO weight for d-hat eqn.

! * Treatment of Coriolis term:
! LADVF   : if TRUE then use "advective" treatment of Coriolis terms (SL);
!           in this case 2*Omega*Vec*r is computed analytically.
! LIMPF   : if TRUE then use implicit treatment of Coriolis terms (EUL and SL)
! L2TLFF  : if TRUE then use refined treatment of Coriolis term in 2TLSL scheme
!           (can be currently used also with the 3TL SL vertical interpolating
!           scheme).

! * Change variable with an Eulerian treatment of orography:
! RCMSLP0 : Real for tuning of the Tanguay/Ritchie correction in SL continuity
!           and temperature equations for 3D model.

! * Switch for computation of Moisture Convergence for French deep convection scheme

! NCOMP_CVGQ   :  0 ==> Compute the CVGQ in an Eulerian manner, using spectral
!                       moisture stored in the YQ GFL variable.
!                       In this case YQ must be spectral and
!                       horizontal derivatives are used.
!                 1 ==> Compute the CVGQ in an Eulerian manner, using spectral
!                       moisture stored in the YCVGQ GFL spectral variable and
!                       its horizontal derivatives.
!                       This case is well designed for the case where YQ is
!                       a purely grid-point GFL.
!                 2 ==> Compute the CVGQ in a semi-Lagrangian manner
!                       (Lagrangian tendency - Eulerian tendency), using data
!                       stored in the YCVGQ grid-point variable.
!                       This case is well designed for the case where YQ is
!                       a purely grid-point GFL, and where LSLAG=T.
! remark ky: better to move this variable in SUDYNA/NAMDYNA/YOMDYNA in the
!  future to make it available in SUDIM1 when reading NAMGFL.

! * Stratospheric vertical trajectory smoothing in the SL scheme
! LSVTSM : Stratospheric vertical trajectory smoothed
! RPRES_SVTSM : smoothing done for standard pressure < RPRES_SVTSM

! * SETTLST filter for vertical trajectories in SL scheme 
! LSETTLSVF : filter applied - vertical SL traj with stable scheme
! LSETFSTAT : enable printing of output diagnostics when LSETTLSVF=true
!             specifying the % of pts that SETTLST extrapol switched off 
! RPRES_SETTLSVF : filter applied for standard pressure < RPRES_SETTLSVF
! NFLEVSF : number of levels to apply SETTLST filter
! RSCALE :  scaling factor for transition between 1st and 2nd order zones
!           higher value results in a steeper function more realistically
!           mimicking the original jump but resulting in a less smooth
!           transition between the two extremes
! RSCALEOFF : Offset to extend second order accuracy regime by areas with
!             nearly no vertical velocity
! LSETTLSVF_DIFF : enhance SLHD diffusion for 1st order areas

! * Optimizing dynamics range to help model precision (maaainly in adjoint)
! RINTOPT   : Parameter to multiply all advected GFL fields before interpolation
! RRINTOPT  : 1./RINTOPT

! -----------------------------------------------------------------------------

INTEGER(KIND=4) :: NVLAG
INTEGER(KIND=4) :: NWLAG
INTEGER(KIND=4) :: NTLAG
INTEGER(KIND=4) :: NSPDLAG
INTEGER(KIND=4) :: NSVDLAG
INTEGER(KIND=4) :: NSPLTHOI
LOGICAL :: LSPLTHOIGFL
INTEGER(KIND=4) :: NSLDIMK
INTEGER(KIND=4) :: NITMP
REAL(KIND=8) :: VETAON
REAL(KIND=8) :: VETAOX
LOGICAL :: LSETTLSVF
LOGICAL :: LSETFSTAT
LOGICAL :: LSETTLSVF_DIFF
REAL(KIND=8) :: RW2TLFF
REAL(KIND=8) :: RALPHA
REAL(KIND=8) :: RALPHA_TOP
INTEGER(KIND=4) :: NLEV_ZALPHA
INTEGER(KIND=4) :: NEDER
REAL(KIND=8)    :: RBETAK(1:3,1:10)
LOGICAL :: LWENOBC
INTEGER(KIND=4) :: NQMHOISLT
LOGICAL :: LSLDP_RK
LOGICAL :: LSLDP_CURV
LOGICAL :: LSLDP_CURV_FIX
LOGICAL :: LRHS_CURV
LOGICAL :: LRHS_CURV_FIX
LOGICAL :: LSLDP_XYZ
LOGICAL :: LSLDP_SAVE
REAL(KIND=8) :: VESL
REAL(KIND=8) :: XIDT
LOGICAL :: LQMW
LOGICAL :: LQMHW
LOGICAL :: LQMT
LOGICAL :: LQMHT
LOGICAL :: LQMP
LOGICAL :: LQMHP
LOGICAL :: LQMPD
LOGICAL :: LQMHPD
LOGICAL :: LQMVD
LOGICAL :: LQMHVD
LOGICAL :: LVWENO_W, LVWENO_T, LVWENO_SP, LVWENO_SPD, LVWENO_SVD
REAL(KIND=8) :: WENO_ALPHA_W, WENO_ALPHA_T, WENO_ALPHA_SP, WENO_ALPHA_SPD, WENO_ALPHA_SVD
LOGICAL :: LADVF
LOGICAL :: LIMPF
LOGICAL :: L2TLFF
REAL(KIND=8) :: RCMSLP0
INTEGER(KIND=4) :: NCOMP_CVGQ
LOGICAL :: LSVTSM
REAL(KIND=8) :: RPRES_SVTSM
REAL(KIND=8) :: RPRES_SETTLSVF
INTEGER(KIND=4) :: NFLEVSF
REAL(KIND=8) :: RSCALE
REAL(KIND=8) :: RSCALEOFF
REAL(KIND=8) :: RINTOPT
REAL(KIND=8) :: RRINTOPT

! -----------------------------------------------------------------------------

!=========== VARIABLES FOR ECMWF DIFFUSION SETUP =========================!

! horizontal diffusion serves 4 purposes, 
! a) to compensate for actual viscosity (physics)
! b) to stop the build-up of energy/enstrophy at the smallest scales
! c) as a sponge at the top of the model
! d) to keep the TL and NL evolution similar 
! With LGRADSP=T (b) does not happen anymore, but there is still "physics" missing 
! (i.e. averaged fluctuations on the resolved grid) due to the closure problem. 
! We also still need the sponge layer to prevent unphysical reflections of vertically 
! propagating gravity waves from the model top.
! Given that (b) is solved by the LGRADSP=T filter, less strong (horizontal) diffusion may be applied 
! in the model integration.
! The switches LHDIFFM and NDIFFACT express the strength of horizontal diffusion as a multiple of the time-step.
! The switch LGPSTRESS=T (+tuning parameters RCLSTRESS, RCLPOLE) provide
! an alternative non-linear diffusion (together with spectral viscosity) to add physically based averaged
! fluctuations. For simplicity the sponge is left as tuned in the standard diffusion case.

! LGRADSP   : special switch for de-aliasing the pressure gradient term ( now in YOMDYNA)
! LHDIFFM   : if true, apply horizontal diffusion as a multiple of the time-step (outside sponge)
! NDIFFACT  : specifies the multiple of the time-step for horizontal diffusion (outside sponge)
! LGPSTRESS : switch for computing 2D stress tensor with dynamic similarity model (default==FALSE),
!             in this case spectral viscosity is used instead of horizontal diffusion (outside sponge)
! LSPECVIS  : use spectral viscosity, this is the default for the cubic grid (see Gelb+Gleeson, MWR 129, 2001)

! 1) default for model run: LGRADSP=T, LGPSTRESS=F, LHDIFFM=T, NDIFFACT=6-8
! 2) default for data assimilation: LGRADSP=T, LGPSTRESS=F, LHDIFFM=F
! 3) default for quadratic and cubic grid: LSPECVIS=T, LHDIFFM=F

LOGICAL :: LHDIFFM
LOGICAL :: LSPECVIS
INTEGER(KIND=4) :: NDIFFACT
LOGICAL :: LGPSTRESS
REAL(KIND=8) :: RCLSTRESS
REAL(KIND=8) :: RCLPOLE

!     ------------------------------------------------------------------

!     USED TO IMPROVE VECTORIZATION OF SEMI-LAGRANGIAN ADJOINT

!     (=> safe vertical separation for updates)

! NVSEPC    : number of vertical blocks of layers for vertical loops
!             in the cubic interpolation routines.
! NVSEPL    : number of vertical blocks of layers for vertical loops
!             in the linear interpolation routines.
! LFINDVSEP : computation of NVSEPC and NVSEPL is done if .TRUE.
INTEGER(KIND=4) :: NVSEPC, NVSEPL
LOGICAL ::      LFINDVSEP

!-----------------------------------------------------------------------

!*    Global mass variables required for mass correction,
!     to prevent mass-drift in extended integrations.

!     Global average values are calculated in spnorm
!     Nils Wedi, 2008-02-08

! GMASSI    : mass at start of integration.
! GMASS0    : mass at current timestep.
! GMASSINC  : mass increment to be applied at current time step

! LMASCOR   : .T. apply mass correction
! LMASDRY   : .F. by default, if .T. only correct the dry mass by subtracting
!             the total mass of water vapour (see cormass2 used at Meteo-France)


LOGICAL         :: LMASCOR
LOGICAL         :: LMASDRY

LOGICAL         :: LGPMASCOR

INTEGER(KIND=4) :: NGPMASCOR

REAL(KIND=8) :: GPMASSI

REAL(KIND=8) :: GMASSI
REAL(KIND=8) :: GMASS0
REAL(KIND=8) :: GMASSINC

! Modify CTY equation to allow dry mass conservation
! The total water tendencies from physics are taken into account in GPCTY
! If LNODRYFLX, the global mass fixer must be LMASDRY
LOGICAL         :: LNODRYFLX

!-------------------------------------------------------------------------------
!     SIBI    : INVERSE OF VERTICAL STRUCTURE MATRIX (B) - NEEDED FOR CVAR2...
!
! It is in here, rather than in YOMJG, because it is set up in SUDYN!

REAL(KIND=8), ALLOCATABLE :: SIBI(:,:)
REAL(KIND=8) :: RESGP 
REAL(KIND=8) :: RESGM 


!-------------------------------------------------------------------------------
!     NH BLENDING MODEL PARAMETERS  HY ---> EE or QE ---> EE
!
! RNHHY_DELTAM:final delta weight in model
! This is a very simplified version of vivoda and Petra NHHY blended system 
! It is assumed that (alpha = delta) all others nhhy parameters are set to unity
! No distinction between NL and Linear weights is made therein, the delta 
! parameter is supposed to be a simple switch from HY to EE dynamics

! RNHQE_DELTAM:final delta weight in model NHQE blended system 
! delta parameter is supposed to be a simple switch from QE to NHEE dynamics

LOGICAL :: LNHHY_SOLVER_GP, LNHHY_SOLVER_SP
LOGICAL :: LNHQE_SOLVER_GP, LNHQE_SOLVER_SP
LOGICAL :: LRESET_BLEND_SI
INTEGER(KIND=4) :: NSTOP_BLEND, NSTART_BLEND
REAL(KIND=8) :: RNHQE_DELTAM
REAL(KIND=8), ALLOCATABLE :: RNHHY_DELTAM(:)

!---------------------------------------------------------------------



END TYPE TDYN

CONTAINS

SUBROUTINE LOAD_TDYN (SELF)
IMPLICIT NONE
TYPE (TDYN), INTENT (OUT), TARGET :: SELF
INTEGER :: KLUN=77
INTEGER :: IL1(1), IU1(1), IL2(2), IU2(2), IL3(3), IU3(3), IL4(4), IU4(4)
LOGICAL :: LRCORDIF, LRCORDIH, LRCORDIT, LRDHI, LRDHIDIV, LRDHIGFL, LRDHINHX, LRDHIP, LRDHISPD, LRDHISVD
LOGICAL :: LRDHIT, LRDHIVOR, LRDHS, LRDHSDIV, LRDHSNHX, LRDHSSVD, LRDHSVOR, LRDIDIV, LRDIGFL, LRDIPD
LOGICAL :: LRDISP, LRDITG, LRDIVD, LRDIVOR, LRDSDIV, LRDSVD, LRDSVOR, LRGAMMA_WENO, LRGWFRIC, LRKRF
LOGICAL :: LRNHHY_DELTAM, LRSAVEDP, LSIALPH, LSIALPH_NH, LSIB, LSIBI, LSIBQ, LSIBQTRA, LSIDELP, LSIDELP_NH
LOGICAL :: LSIDPHI, LSIDPHI_NH, LSIFAC, LSIFACI, LSIFACITRA, LSIGFL, LSIGFM, LSIGHL, LSIGHM, LSIHEG
LOGICAL :: LSIHEG2, LSIHEG2TRA, LSIHEGB, LSIHEGB2, LSIHEGB2TRA, LSIHEGBTRA, LSIHEGIND, LSIHEGTRA, LSILAPDI, LSILAPIN
LOGICAL :: LSILNPR, LSILNPR_NH, LSIMI, LSIMITRA, LSIMO, LSIMOTRA, LSINISNAX, LSIPD, LSIPE, LSIPF
LOGICAL :: LSIPIS, LSIRDEL, LSIRDEL_NH, LSITAC, LSITFL, LSITFM, LSITGR, LSITLAF, LSITLAF_NH, LSITLAH
LOGICAL :: LSITLAH_NH, LSITRAM, LSITRM, LSIVP, LSIVP2, LSIWF2H, LSIWH2F, LSIZA, LSIZC, LSLHD_MASK_T
LOGICAL :: LSLHD_MASK_U
REAL(KIND=8) :: ZTMP0
REAL(KIND=8), ALLOCATABLE :: ZTMP1 (:)
REAL(KIND=8), ALLOCATABLE :: ZTMP2 (:,:)
REAL(KIND=8), ALLOCATABLE :: ZTMP3 (:,:,:)
REAL(KIND=8), ALLOCATABLE :: ZTMP4 (:,:,:,:)
OPEN (KLUN, FILE='TDYN.CONST.DAT', FORM='UNFORMATTED')
READ (KLUN) ZTMP0
SELF%REPS1 = ZTMP0
READ (KLUN) ZTMP0
SELF%REPS2 = ZTMP0
READ (KLUN) ZTMP0
SELF%REPSM1 = ZTMP0
READ (KLUN) ZTMP0
SELF%REPSM2 = ZTMP0
READ (KLUN) ZTMP0
SELF%REPSP1 = ZTMP0
READ (KLUN) ZTMP0
SELF%HDIRVOR = ZTMP0
READ (KLUN) ZTMP0
SELF%HDIRDIV = ZTMP0
READ (KLUN) ZTMP0
SELF%HDIRT = ZTMP0
READ (KLUN) ZTMP0
SELF%HDIRQ = ZTMP0
READ (KLUN) ZTMP0
SELF%HDIRO3 = ZTMP0
READ (KLUN) ZTMP0
SELF%HDIRPD = ZTMP0
READ (KLUN) ZTMP0
SELF%HDIRVD = ZTMP0
READ (KLUN) ZTMP0
SELF%HDIRSP = ZTMP0
READ (KLUN) ZTMP0
SELF%HRDIRVOR = ZTMP0
READ (KLUN) ZTMP0
SELF%HRDIRDIV = ZTMP0
READ (KLUN) ZTMP0
SELF%HRDIRT = ZTMP0
READ (KLUN) ZTMP0
SELF%HRDIRQ = ZTMP0
READ (KLUN) ZTMP0
SELF%HRDIRO3 = ZTMP0
READ (KLUN) ZTMP0
SELF%HRDIRPD = ZTMP0
READ (KLUN) ZTMP0
SELF%HRDIRVD = ZTMP0
READ (KLUN) ZTMP0
SELF%HRDIRSP = ZTMP0
READ (KLUN) ZTMP0
SELF%RRDXTAU = ZTMP0
READ (KLUN) ZTMP0
SELF%RDAMPVOR = ZTMP0
READ (KLUN) ZTMP0
SELF%RDAMPDIV = ZTMP0
READ (KLUN) ZTMP0
SELF%RDAMPT = ZTMP0
READ (KLUN) ZTMP0
SELF%RDAMPQ = ZTMP0
READ (KLUN) ZTMP0
SELF%RDAMPO3 = ZTMP0
READ (KLUN) ZTMP0
SELF%RDAMPPD = ZTMP0
READ (KLUN) ZTMP0
SELF%RDAMPVD = ZTMP0
READ (KLUN) ZTMP0
SELF%RDAMPSP = ZTMP0
READ (KLUN) SELF%LNEWHD
READ (KLUN) ZTMP0
SELF%REXPDH = ZTMP0
READ (KLUN) ZTMP0
SELF%FRANDH = ZTMP0
READ (KLUN) ZTMP0
SELF%SLEVDH = ZTMP0
READ (KLUN) ZTMP0
SELF%SLEVDH1 = ZTMP0
READ (KLUN) ZTMP0
SELF%SLEVDH2 = ZTMP0
READ (KLUN) ZTMP0
SELF%SLEVDH3 = ZTMP0
READ (KLUN) SELF%NSREFDH
READ (KLUN) ZTMP0
SELF%RATIO_HDI_TOP = ZTMP0
READ (KLUN) SELF%NPROFILEHD
READ (KLUN) ZTMP0
SELF%RPROFHDBT = ZTMP0
READ (KLUN) ZTMP0
SELF%RPROFHDTP = ZTMP0
READ (KLUN) ZTMP0
SELF%RPROFHDMX = ZTMP0
READ (KLUN) ZTMP0
SELF%RPROFHDEX = ZTMP0
READ (KLUN) SELF%LRDISPE_EC
READ (KLUN) LRDIVOR
IF (LRDIVOR) THEN
  READ (KLUN) IL2
  READ (KLUN) IU2
  ALLOCATE (SELF%RDIVOR (IL2(1):IU2(1), IL2(2):IU2(2)))
  ALLOCATE (ZTMP2(LBOUND(SELF%RDIVOR,1):UBOUND(SELF%RDIVOR,1), LBOUND(SELF%RDIVOR,2):UBOUND(SELF%RDIVOR,2)))
  READ (KLUN) ZTMP2
  SELF%RDIVOR = ZTMP2
  DEALLOCATE (ZTMP2)
ENDIF
READ (KLUN) LRDIDIV
IF (LRDIDIV) THEN
  READ (KLUN) IL2
  READ (KLUN) IU2
  ALLOCATE (SELF%RDIDIV (IL2(1):IU2(1), IL2(2):IU2(2)))
  ALLOCATE (ZTMP2(LBOUND(SELF%RDIDIV,1):UBOUND(SELF%RDIDIV,1), LBOUND(SELF%RDIDIV,2):UBOUND(SELF%RDIDIV,2)))
  READ (KLUN) ZTMP2
  SELF%RDIDIV = ZTMP2
  DEALLOCATE (ZTMP2)
ENDIF
READ (KLUN) LRDITG
IF (LRDITG) THEN
  READ (KLUN) IL2
  READ (KLUN) IU2
  ALLOCATE (SELF%RDITG (IL2(1):IU2(1), IL2(2):IU2(2)))
  ALLOCATE (ZTMP2(LBOUND(SELF%RDITG,1):UBOUND(SELF%RDITG,1), LBOUND(SELF%RDITG,2):UBOUND(SELF%RDITG,2)))
  READ (KLUN) ZTMP2
  SELF%RDITG = ZTMP2
  DEALLOCATE (ZTMP2)
ENDIF
READ (KLUN) LRDIGFL
IF (LRDIGFL) THEN
  READ (KLUN) IL3
  READ (KLUN) IU3
  ALLOCATE (SELF%RDIGFL (IL3(1):IU3(1), IL3(2):IU3(2), IL3(3):IU3(3)))
  ALLOCATE (ZTMP3(LBOUND(SELF%RDIGFL,1):UBOUND(SELF%RDIGFL,1), LBOUND(SELF%RDIGFL,2):UBOUND(SELF%RDIGFL,2), LBOUND(SELF%RDIGFL,3):UBOUND(SELF%RDIGFL,3)))
  READ (KLUN) ZTMP3
  SELF%RDIGFL = ZTMP3
  DEALLOCATE (ZTMP3)
ENDIF
READ (KLUN) LRDIPD
IF (LRDIPD) THEN
  READ (KLUN) IL2
  READ (KLUN) IU2
  ALLOCATE (SELF%RDIPD (IL2(1):IU2(1), IL2(2):IU2(2)))
  ALLOCATE (ZTMP2(LBOUND(SELF%RDIPD,1):UBOUND(SELF%RDIPD,1), LBOUND(SELF%RDIPD,2):UBOUND(SELF%RDIPD,2)))
  READ (KLUN) ZTMP2
  SELF%RDIPD = ZTMP2
  DEALLOCATE (ZTMP2)
ENDIF
READ (KLUN) LRDIVD
IF (LRDIVD) THEN
  READ (KLUN) IL2
  READ (KLUN) IU2
  ALLOCATE (SELF%RDIVD (IL2(1):IU2(1), IL2(2):IU2(2)))
  ALLOCATE (ZTMP2(LBOUND(SELF%RDIVD,1):UBOUND(SELF%RDIVD,1), LBOUND(SELF%RDIVD,2):UBOUND(SELF%RDIVD,2)))
  READ (KLUN) ZTMP2
  SELF%RDIVD = ZTMP2
  DEALLOCATE (ZTMP2)
ENDIF
READ (KLUN) LRDISP
IF (LRDISP) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%RDISP (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%RDISP,1):UBOUND(SELF%RDISP,1)))
  READ (KLUN) ZTMP1
  SELF%RDISP = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LRDHI
IF (LRDHI) THEN
  READ (KLUN) IL3
  READ (KLUN) IU3
  ALLOCATE (SELF%RDHI (IL3(1):IU3(1), IL3(2):IU3(2), IL3(3):IU3(3)))
  ALLOCATE (ZTMP3(LBOUND(SELF%RDHI,1):UBOUND(SELF%RDHI,1), LBOUND(SELF%RDHI,2):UBOUND(SELF%RDHI,2), LBOUND(SELF%RDHI,3):UBOUND(SELF%RDHI,3)))
  READ (KLUN) ZTMP3
  SELF%RDHI = ZTMP3
  DEALLOCATE (ZTMP3)
ENDIF
READ (KLUN) LRDHIVOR
IF (LRDHIVOR) THEN
  READ (KLUN) IL3
  READ (KLUN) IU3
  ALLOCATE (SELF%RDHIVOR (IL3(1):IU3(1), IL3(2):IU3(2), IL3(3):IU3(3)))
  ALLOCATE (ZTMP3(LBOUND(SELF%RDHIVOR,1):UBOUND(SELF%RDHIVOR,1), LBOUND(SELF%RDHIVOR,2):UBOUND(SELF%RDHIVOR,2), LBOUND(SELF%RDHIVOR,3):UBOUND(SELF%RDHIVOR,3)))
  READ (KLUN) ZTMP3
  SELF%RDHIVOR = ZTMP3
  DEALLOCATE (ZTMP3)
ENDIF
READ (KLUN) LRDHIDIV
IF (LRDHIDIV) THEN
  READ (KLUN) IL3
  READ (KLUN) IU3
  ALLOCATE (SELF%RDHIDIV (IL3(1):IU3(1), IL3(2):IU3(2), IL3(3):IU3(3)))
  ALLOCATE (ZTMP3(LBOUND(SELF%RDHIDIV,1):UBOUND(SELF%RDHIDIV,1), LBOUND(SELF%RDHIDIV,2):UBOUND(SELF%RDHIDIV,2), LBOUND(SELF%RDHIDIV,3):UBOUND(SELF%RDHIDIV,3)))
  READ (KLUN) ZTMP3
  SELF%RDHIDIV = ZTMP3
  DEALLOCATE (ZTMP3)
ENDIF
READ (KLUN) LRDHISPD
IF (LRDHISPD) THEN
  READ (KLUN) IL3
  READ (KLUN) IU3
  ALLOCATE (SELF%RDHISPD (IL3(1):IU3(1), IL3(2):IU3(2), IL3(3):IU3(3)))
  ALLOCATE (ZTMP3(LBOUND(SELF%RDHISPD,1):UBOUND(SELF%RDHISPD,1), LBOUND(SELF%RDHISPD,2):UBOUND(SELF%RDHISPD,2), LBOUND(SELF%RDHISPD,3):UBOUND(SELF%RDHISPD,3)))
  READ (KLUN) ZTMP3
  SELF%RDHISPD = ZTMP3
  DEALLOCATE (ZTMP3)
ENDIF
READ (KLUN) LRDHISVD
IF (LRDHISVD) THEN
  READ (KLUN) IL3
  READ (KLUN) IU3
  ALLOCATE (SELF%RDHISVD (IL3(1):IU3(1), IL3(2):IU3(2), IL3(3):IU3(3)))
  ALLOCATE (ZTMP3(LBOUND(SELF%RDHISVD,1):UBOUND(SELF%RDHISVD,1), LBOUND(SELF%RDHISVD,2):UBOUND(SELF%RDHISVD,2), LBOUND(SELF%RDHISVD,3):UBOUND(SELF%RDHISVD,3)))
  READ (KLUN) ZTMP3
  SELF%RDHISVD = ZTMP3
  DEALLOCATE (ZTMP3)
ENDIF
READ (KLUN) LRDHINHX
IF (LRDHINHX) THEN
  READ (KLUN) IL3
  READ (KLUN) IU3
  ALLOCATE (SELF%RDHINHX (IL3(1):IU3(1), IL3(2):IU3(2), IL3(3):IU3(3)))
  ALLOCATE (ZTMP3(LBOUND(SELF%RDHINHX,1):UBOUND(SELF%RDHINHX,1), LBOUND(SELF%RDHINHX,2):UBOUND(SELF%RDHINHX,2), LBOUND(SELF%RDHINHX,3):UBOUND(SELF%RDHINHX,3)))
  READ (KLUN) ZTMP3
  SELF%RDHINHX = ZTMP3
  DEALLOCATE (ZTMP3)
ENDIF
READ (KLUN) LRDHIT
IF (LRDHIT) THEN
  READ (KLUN) IL3
  READ (KLUN) IU3
  ALLOCATE (SELF%RDHIT (IL3(1):IU3(1), IL3(2):IU3(2), IL3(3):IU3(3)))
  ALLOCATE (ZTMP3(LBOUND(SELF%RDHIT,1):UBOUND(SELF%RDHIT,1), LBOUND(SELF%RDHIT,2):UBOUND(SELF%RDHIT,2), LBOUND(SELF%RDHIT,3):UBOUND(SELF%RDHIT,3)))
  READ (KLUN) ZTMP3
  SELF%RDHIT = ZTMP3
  DEALLOCATE (ZTMP3)
ENDIF
READ (KLUN) LRDHIGFL
IF (LRDHIGFL) THEN
  READ (KLUN) IL4
  READ (KLUN) IU4
  ALLOCATE (SELF%RDHIGFL (IL4(1):IU4(1), IL4(2):IU4(2), IL4(3):IU4(3), IL4(4):IU4(4)))
  ALLOCATE (ZTMP4(LBOUND(SELF%RDHIGFL,1):UBOUND(SELF%RDHIGFL,1), LBOUND(SELF%RDHIGFL,2):UBOUND(SELF%RDHIGFL,2), LBOUND(SELF%RDHIGFL,3):UBOUND(SELF%RDHIGFL,3), LBOUND(SELF%RDHIGFL,4):UBOUND(SELF%RDHIGFL,4)))
  READ (KLUN) ZTMP4
  SELF%RDHIGFL = ZTMP4
  DEALLOCATE (ZTMP4)
ENDIF
READ (KLUN) LRDHIP
IF (LRDHIP) THEN
  READ (KLUN) IL3
  READ (KLUN) IU3
  ALLOCATE (SELF%RDHIP (IL3(1):IU3(1), IL3(2):IU3(2), IL3(3):IU3(3)))
  ALLOCATE (ZTMP3(LBOUND(SELF%RDHIP,1):UBOUND(SELF%RDHIP,1), LBOUND(SELF%RDHIP,2):UBOUND(SELF%RDHIP,2), LBOUND(SELF%RDHIP,3):UBOUND(SELF%RDHIP,3)))
  READ (KLUN) ZTMP3
  SELF%RDHIP = ZTMP3
  DEALLOCATE (ZTMP3)
ENDIF
READ (KLUN) LRDHSVOR
IF (LRDHSVOR) THEN
  READ (KLUN) IL3
  READ (KLUN) IU3
  ALLOCATE (SELF%RDHSVOR (IL3(1):IU3(1), IL3(2):IU3(2), IL3(3):IU3(3)))
  ALLOCATE (ZTMP3(LBOUND(SELF%RDHSVOR,1):UBOUND(SELF%RDHSVOR,1), LBOUND(SELF%RDHSVOR,2):UBOUND(SELF%RDHSVOR,2), LBOUND(SELF%RDHSVOR,3):UBOUND(SELF%RDHSVOR,3)))
  READ (KLUN) ZTMP3
  SELF%RDHSVOR = ZTMP3
  DEALLOCATE (ZTMP3)
ENDIF
READ (KLUN) LRDHSDIV
IF (LRDHSDIV) THEN
  READ (KLUN) IL3
  READ (KLUN) IU3
  ALLOCATE (SELF%RDHSDIV (IL3(1):IU3(1), IL3(2):IU3(2), IL3(3):IU3(3)))
  ALLOCATE (ZTMP3(LBOUND(SELF%RDHSDIV,1):UBOUND(SELF%RDHSDIV,1), LBOUND(SELF%RDHSDIV,2):UBOUND(SELF%RDHSDIV,2), LBOUND(SELF%RDHSDIV,3):UBOUND(SELF%RDHSDIV,3)))
  READ (KLUN) ZTMP3
  SELF%RDHSDIV = ZTMP3
  DEALLOCATE (ZTMP3)
ENDIF
READ (KLUN) LRDHSSVD
IF (LRDHSSVD) THEN
  READ (KLUN) IL3
  READ (KLUN) IU3
  ALLOCATE (SELF%RDHSSVD (IL3(1):IU3(1), IL3(2):IU3(2), IL3(3):IU3(3)))
  ALLOCATE (ZTMP3(LBOUND(SELF%RDHSSVD,1):UBOUND(SELF%RDHSSVD,1), LBOUND(SELF%RDHSSVD,2):UBOUND(SELF%RDHSSVD,2), LBOUND(SELF%RDHSSVD,3):UBOUND(SELF%RDHSSVD,3)))
  READ (KLUN) ZTMP3
  SELF%RDHSSVD = ZTMP3
  DEALLOCATE (ZTMP3)
ENDIF
READ (KLUN) LRDHSNHX
IF (LRDHSNHX) THEN
  READ (KLUN) IL3
  READ (KLUN) IU3
  ALLOCATE (SELF%RDHSNHX (IL3(1):IU3(1), IL3(2):IU3(2), IL3(3):IU3(3)))
  ALLOCATE (ZTMP3(LBOUND(SELF%RDHSNHX,1):UBOUND(SELF%RDHSNHX,1), LBOUND(SELF%RDHSNHX,2):UBOUND(SELF%RDHSNHX,2), LBOUND(SELF%RDHSNHX,3):UBOUND(SELF%RDHSNHX,3)))
  READ (KLUN) ZTMP3
  SELF%RDHSNHX = ZTMP3
  DEALLOCATE (ZTMP3)
ENDIF
READ (KLUN) SELF%LSTRHD
READ (KLUN) ZTMP0
SELF%HDTIME_STRHD = ZTMP0
READ (KLUN) ZTMP0
SELF%KLSPONGE = ZTMP0
READ (KLUN) SELF%LM0DAMP
READ (KLUN) ZTMP0
SELF%RBEGSPONGE = ZTMP0
READ (KLUN) SELF%LTOP_VOR
READ (KLUN) SELF%NTOP_VOR_TRUNC
READ (KLUN) SELF%NTOP_VOR_BOT
READ (KLUN) LRSAVEDP
IF (LRSAVEDP) THEN
  READ (KLUN) IL4
  READ (KLUN) IU4
  ALLOCATE (SELF%RSAVEDP (IL4(1):IU4(1), IL4(2):IU4(2), IL4(3):IU4(3), IL4(4):IU4(4)))
  ALLOCATE (ZTMP4(LBOUND(SELF%RSAVEDP,1):UBOUND(SELF%RSAVEDP,1), LBOUND(SELF%RSAVEDP,2):UBOUND(SELF%RSAVEDP,2), LBOUND(SELF%RSAVEDP,3):UBOUND(SELF%RSAVEDP,3), LBOUND(SELF%RSAVEDP,4):UBOUND(SELF%RSAVEDP,4)))
  READ (KLUN) ZTMP4
  SELF%RSAVEDP = ZTMP4
  DEALLOCATE (ZTMP4)
ENDIF
READ (KLUN) ZTMP0
SELF%SLHDA0 = ZTMP0
READ (KLUN) ZTMP0
SELF%SLHDA0T = ZTMP0
READ (KLUN) ZTMP0
SELF%SLHDB = ZTMP0
READ (KLUN) ZTMP0
SELF%SLHDBT = ZTMP0
READ (KLUN) ZTMP0
SELF%SLHDD00 = ZTMP0
READ (KLUN) ZTMP0
SELF%SLHDD00T = ZTMP0
READ (KLUN) ZTMP0
SELF%SLHDDIV = ZTMP0
READ (KLUN) ZTMP0
SELF%SLHDRATDDIV = ZTMP0
READ (KLUN) ZTMP0
SELF%SLHDHOR = ZTMP0
READ (KLUN) ZTMP0
SELF%SLHD_P_LOW = ZTMP0
READ (KLUN) ZTMP0
SELF%SLHD_P_HIGH = ZTMP0
READ (KLUN) SELF%LSLHDHEAT
READ (KLUN) SELF%LSLHDSPONGE
READ (KLUN) ZTMP0
SELF%HDSRVOR = ZTMP0
READ (KLUN) ZTMP0
SELF%HDSRDIV = ZTMP0
READ (KLUN) ZTMP0
SELF%HDSRVD = ZTMP0
READ (KLUN) ZTMP0
SELF%HRDSRVOR = ZTMP0
READ (KLUN) ZTMP0
SELF%HRDSRDIV = ZTMP0
READ (KLUN) ZTMP0
SELF%HRDSRVD = ZTMP0
READ (KLUN) ZTMP0
SELF%RDAMPVORS = ZTMP0
READ (KLUN) ZTMP0
SELF%RDAMPDIVS = ZTMP0
READ (KLUN) ZTMP0
SELF%RDAMPVDS = ZTMP0
READ (KLUN) ZTMP0
SELF%RDAMPHDS = ZTMP0
READ (KLUN) ZTMP0
SELF%REXPDHS = ZTMP0
READ (KLUN) ZTMP0
SELF%SLEVDHS = ZTMP0
READ (KLUN) ZTMP0
SELF%SLEVDHS1 = ZTMP0
READ (KLUN) ZTMP0
SELF%SLEVDHS2 = ZTMP0
READ (KLUN) ZTMP0
SELF%SDRED = ZTMP0
READ (KLUN) LRDSVOR
IF (LRDSVOR) THEN
  READ (KLUN) IL2
  READ (KLUN) IU2
  ALLOCATE (SELF%RDSVOR (IL2(1):IU2(1), IL2(2):IU2(2)))
  ALLOCATE (ZTMP2(LBOUND(SELF%RDSVOR,1):UBOUND(SELF%RDSVOR,1), LBOUND(SELF%RDSVOR,2):UBOUND(SELF%RDSVOR,2)))
  READ (KLUN) ZTMP2
  SELF%RDSVOR = ZTMP2
  DEALLOCATE (ZTMP2)
ENDIF
READ (KLUN) LRDSDIV
IF (LRDSDIV) THEN
  READ (KLUN) IL2
  READ (KLUN) IU2
  ALLOCATE (SELF%RDSDIV (IL2(1):IU2(1), IL2(2):IU2(2)))
  ALLOCATE (ZTMP2(LBOUND(SELF%RDSDIV,1):UBOUND(SELF%RDSDIV,1), LBOUND(SELF%RDSDIV,2):UBOUND(SELF%RDSDIV,2)))
  READ (KLUN) ZTMP2
  SELF%RDSDIV = ZTMP2
  DEALLOCATE (ZTMP2)
ENDIF
READ (KLUN) LRDSVD
IF (LRDSVD) THEN
  READ (KLUN) IL2
  READ (KLUN) IU2
  ALLOCATE (SELF%RDSVD (IL2(1):IU2(1), IL2(2):IU2(2)))
  ALLOCATE (ZTMP2(LBOUND(SELF%RDSVD,1):UBOUND(SELF%RDSVD,1), LBOUND(SELF%RDSVD,2):UBOUND(SELF%RDSVD,2)))
  READ (KLUN) ZTMP2
  SELF%RDSVD = ZTMP2
  DEALLOCATE (ZTMP2)
ENDIF
READ (KLUN) LRDHS
IF (LRDHS) THEN
  READ (KLUN) IL3
  READ (KLUN) IU3
  ALLOCATE (SELF%RDHS (IL3(1):IU3(1), IL3(2):IU3(2), IL3(3):IU3(3)))
  ALLOCATE (ZTMP3(LBOUND(SELF%RDHS,1):UBOUND(SELF%RDHS,1), LBOUND(SELF%RDHS,2):UBOUND(SELF%RDHS,2), LBOUND(SELF%RDHS,3):UBOUND(SELF%RDHS,3)))
  READ (KLUN) ZTMP3
  SELF%RDHS = ZTMP3
  DEALLOCATE (ZTMP3)
ENDIF
READ (KLUN) LSLHD_MASK_U
IF (LSLHD_MASK_U) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SLHD_MASK_U (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SLHD_MASK_U,1):UBOUND(SELF%SLHD_MASK_U,1)))
  READ (KLUN) ZTMP1
  SELF%SLHD_MASK_U = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSLHD_MASK_T
IF (LSLHD_MASK_T) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SLHD_MASK_T (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SLHD_MASK_T,1):UBOUND(SELF%SLHD_MASK_T,1)))
  READ (KLUN) ZTMP1
  SELF%SLHD_MASK_T = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) ZTMP0
SELF%ZSLHDP1 = ZTMP0
READ (KLUN) ZTMP0
SELF%ZSLHDP3 = ZTMP0
READ (KLUN) SELF%NLEV_SPONGE
READ (KLUN) SELF%LRFRIC
READ (KLUN) SELF%LRFRICISOTR
READ (KLUN) LRCORDIT
IF (LRCORDIT) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%RCORDIT (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%RCORDIT,1):UBOUND(SELF%RCORDIT,1)))
  READ (KLUN) ZTMP1
  SELF%RCORDIT = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LRCORDIH
IF (LRCORDIH) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%RCORDIH (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%RCORDIH,1):UBOUND(SELF%RCORDIH,1)))
  READ (KLUN) ZTMP1
  SELF%RCORDIH = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LRCORDIF
IF (LRCORDIF) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%RCORDIF (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%RCORDIF,1):UBOUND(SELF%RCORDIF,1)))
  READ (KLUN) ZTMP1
  SELF%RCORDIF = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) ZTMP0
SELF%VMAX1 = ZTMP0
READ (KLUN) ZTMP0
SELF%VMAX2 = ZTMP0
READ (KLUN) ZTMP0
SELF%RMAX_D3 = ZTMP0
READ (KLUN) SELF%LBOUND_D3
READ (KLUN) LRKRF
IF (LRKRF) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%RKRF (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%RKRF,1):UBOUND(SELF%RKRF,1)))
  READ (KLUN) ZTMP1
  SELF%RKRF = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) SELF%NMAXLEVRF
READ (KLUN) ZTMP0
SELF%RRFZ1 = ZTMP0
READ (KLUN) ZTMP0
SELF%RRFPLM = ZTMP0
READ (KLUN) ZTMP0
SELF%RRFTAU = ZTMP0
READ (KLUN) ZTMP0
SELF%RTEMRB = ZTMP0
READ (KLUN) SELF%NRUBC
READ (KLUN) SELF%LGWFRIC
READ (KLUN) SELF%NLEV_GWFRIC
READ (KLUN) ZTMP0
SELF%RGWFRIC_MAX = ZTMP0
READ (KLUN) ZTMP0
SELF%RGWFRIC_PLM = ZTMP0
READ (KLUN) LRGWFRIC
IF (LRGWFRIC) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%RGWFRIC (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%RGWFRIC,1):UBOUND(SELF%RGWFRIC,1)))
  READ (KLUN) ZTMP1
  SELF%RGWFRIC = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) SELF%LSIDG
READ (KLUN) SELF%LDYN_STABAN
READ (KLUN) SELF%LRHDI_LASTITERPC
READ (KLUN) SELF%LSIDYN_VERBOSE
READ (KLUN) ZTMP0
SELF%BETADT = ZTMP0
READ (KLUN) ZTMP0
SELF%RBT = ZTMP0
READ (KLUN) ZTMP0
SELF%RBTS2 = ZTMP0
READ (KLUN) ZTMP0
SELF%REFGEO = ZTMP0
READ (KLUN) ZTMP0
SELF%SIPR = ZTMP0
READ (KLUN) ZTMP0
SELF%SIPRA = ZTMP0
READ (KLUN) ZTMP0
SELF%SITR = ZTMP0
READ (KLUN) ZTMP0
SELF%SITRA = ZTMP0
READ (KLUN) ZTMP0
SELF%SITRUB = ZTMP0
READ (KLUN) ZTMP0
SELF%SIPRUB = ZTMP0
READ (KLUN) ZTMP0
SELF%SITIME = ZTMP0
READ (KLUN) ZTMP0
SELF%SIRPRG = ZTMP0
READ (KLUN) ZTMP0
SELF%SIRPRN = ZTMP0
READ (KLUN) ZTMP0
SELF%SISLP = ZTMP0
READ (KLUN) ZTMP0
SELF%SIFRG = ZTMP0
READ (KLUN) ZTMP0
SELF%SIFRA = ZTMP0
READ (KLUN) ZTMP0
SELF%SITVAR = ZTMP0
READ (KLUN) SELF%NSITER
READ (KLUN) SELF%NCURRENT_ITER
READ (KLUN) SELF%NITERHELM
READ (KLUN) SELF%NOPT_SITR
READ (KLUN) SELF%NOPT_SIPR
READ (KLUN) SELF%NOPT_SISLP
READ (KLUN) SELF%NSZNISNAX
READ (KLUN) LSITRAM
IF (LSITRAM) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SITRAM (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SITRAM,1):UBOUND(SELF%SITRAM,1)))
  READ (KLUN) ZTMP1
  SELF%SITRAM = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSITRM
IF (LSITRM) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SITRM (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SITRM,1):UBOUND(SELF%SITRM,1)))
  READ (KLUN) ZTMP1
  SELF%SITRM = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSIALPH
IF (LSIALPH) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SIALPH (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SIALPH,1):UBOUND(SELF%SIALPH,1)))
  READ (KLUN) ZTMP1
  SELF%SIALPH = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSILNPR
IF (LSILNPR) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SILNPR (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SILNPR,1):UBOUND(SELF%SILNPR,1)))
  READ (KLUN) ZTMP1
  SELF%SILNPR = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSIDELP
IF (LSIDELP) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SIDELP (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SIDELP,1):UBOUND(SELF%SIDELP,1)))
  READ (KLUN) ZTMP1
  SELF%SIDELP = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSIRDEL
IF (LSIRDEL) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SIRDEL (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SIRDEL,1):UBOUND(SELF%SIRDEL,1)))
  READ (KLUN) ZTMP1
  SELF%SIRDEL = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSITLAH
IF (LSITLAH) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SITLAH (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SITLAH,1):UBOUND(SELF%SITLAH,1)))
  READ (KLUN) ZTMP1
  SELF%SITLAH = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSITLAF
IF (LSITLAF) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SITLAF (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SITLAF,1):UBOUND(SELF%SITLAF,1)))
  READ (KLUN) ZTMP1
  SELF%SITLAF = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSIDPHI
IF (LSIDPHI) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SIDPHI (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SIDPHI,1):UBOUND(SELF%SIDPHI,1)))
  READ (KLUN) ZTMP1
  SELF%SIDPHI = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSIALPH_NH
IF (LSIALPH_NH) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SIALPH_NH (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SIALPH_NH,1):UBOUND(SELF%SIALPH_NH,1)))
  READ (KLUN) ZTMP1
  SELF%SIALPH_NH = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSILNPR_NH
IF (LSILNPR_NH) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SILNPR_NH (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SILNPR_NH,1):UBOUND(SELF%SILNPR_NH,1)))
  READ (KLUN) ZTMP1
  SELF%SILNPR_NH = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSIDELP_NH
IF (LSIDELP_NH) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SIDELP_NH (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SIDELP_NH,1):UBOUND(SELF%SIDELP_NH,1)))
  READ (KLUN) ZTMP1
  SELF%SIDELP_NH = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSIRDEL_NH
IF (LSIRDEL_NH) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SIRDEL_NH (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SIRDEL_NH,1):UBOUND(SELF%SIRDEL_NH,1)))
  READ (KLUN) ZTMP1
  SELF%SIRDEL_NH = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSITLAH_NH
IF (LSITLAH_NH) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SITLAH_NH (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SITLAH_NH,1):UBOUND(SELF%SITLAH_NH,1)))
  READ (KLUN) ZTMP1
  SELF%SITLAH_NH = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSITLAF_NH
IF (LSITLAF_NH) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SITLAF_NH (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SITLAF_NH,1):UBOUND(SELF%SITLAF_NH,1)))
  READ (KLUN) ZTMP1
  SELF%SITLAF_NH = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSIDPHI_NH
IF (LSIDPHI_NH) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SIDPHI_NH (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SIDPHI_NH,1):UBOUND(SELF%SIDPHI_NH,1)))
  READ (KLUN) ZTMP1
  SELF%SIDPHI_NH = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSIWF2H
IF (LSIWF2H) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SIWF2H (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SIWF2H,1):UBOUND(SELF%SIWF2H,1)))
  READ (KLUN) ZTMP1
  SELF%SIWF2H = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSIWH2F
IF (LSIWH2F) THEN
  READ (KLUN) IL2
  READ (KLUN) IU2
  ALLOCATE (SELF%SIWH2F (IL2(1):IU2(1), IL2(2):IU2(2)))
  ALLOCATE (ZTMP2(LBOUND(SELF%SIWH2F,1):UBOUND(SELF%SIWH2F,1), LBOUND(SELF%SIWH2F,2):UBOUND(SELF%SIWH2F,2)))
  READ (KLUN) ZTMP2
  SELF%SIWH2F = ZTMP2
  DEALLOCATE (ZTMP2)
ENDIF
READ (KLUN) LSIGFL
IF (LSIGFL) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SIGFL (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SIGFL,1):UBOUND(SELF%SIGFL,1)))
  READ (KLUN) ZTMP1
  SELF%SIGFL = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSIGFM
IF (LSIGFM) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SIGFM (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SIGFM,1):UBOUND(SELF%SIGFM,1)))
  READ (KLUN) ZTMP1
  SELF%SIGFM = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSITFL
IF (LSITFL) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SITFL (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SITFL,1):UBOUND(SELF%SITFL,1)))
  READ (KLUN) ZTMP1
  SELF%SITFL = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSITFM
IF (LSITFM) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SITFM (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SITFM,1):UBOUND(SELF%SITFM,1)))
  READ (KLUN) ZTMP1
  SELF%SITFM = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSIGHL
IF (LSIGHL) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SIGHL (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SIGHL,1):UBOUND(SELF%SIGHL,1)))
  READ (KLUN) ZTMP1
  SELF%SIGHL = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSIGHM
IF (LSIGHM) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SIGHM (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SIGHM,1):UBOUND(SELF%SIGHM,1)))
  READ (KLUN) ZTMP1
  SELF%SIGHM = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSIB
IF (LSIB) THEN
  READ (KLUN) IL2
  READ (KLUN) IU2
  ALLOCATE (SELF%SIB (IL2(1):IU2(1), IL2(2):IU2(2)))
  ALLOCATE (ZTMP2(LBOUND(SELF%SIB,1):UBOUND(SELF%SIB,1), LBOUND(SELF%SIB,2):UBOUND(SELF%SIB,2)))
  READ (KLUN) ZTMP2
  SELF%SIB = ZTMP2
  DEALLOCATE (ZTMP2)
ENDIF
READ (KLUN) LSIMO
IF (LSIMO) THEN
  READ (KLUN) IL2
  READ (KLUN) IU2
  ALLOCATE (SELF%SIMO (IL2(1):IU2(1), IL2(2):IU2(2)))
  ALLOCATE (ZTMP2(LBOUND(SELF%SIMO,1):UBOUND(SELF%SIMO,1), LBOUND(SELF%SIMO,2):UBOUND(SELF%SIMO,2)))
  READ (KLUN) ZTMP2
  SELF%SIMO = ZTMP2
  DEALLOCATE (ZTMP2)
ENDIF
READ (KLUN) LSIMI
IF (LSIMI) THEN
  READ (KLUN) IL2
  READ (KLUN) IU2
  ALLOCATE (SELF%SIMI (IL2(1):IU2(1), IL2(2):IU2(2)))
  ALLOCATE (ZTMP2(LBOUND(SELF%SIMI,1):UBOUND(SELF%SIMI,1), LBOUND(SELF%SIMI,2):UBOUND(SELF%SIMI,2)))
  READ (KLUN) ZTMP2
  SELF%SIMI = ZTMP2
  DEALLOCATE (ZTMP2)
ENDIF
READ (KLUN) LSIVP
IF (LSIVP) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SIVP (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SIVP,1):UBOUND(SELF%SIVP,1)))
  READ (KLUN) ZTMP1
  SELF%SIVP = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSIVP2
IF (LSIVP2) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SIVP2 (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SIVP2,1):UBOUND(SELF%SIVP2,1)))
  READ (KLUN) ZTMP1
  SELF%SIVP2 = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSIPD
IF (LSIPD) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SIPD (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SIPD,1):UBOUND(SELF%SIPD,1)))
  READ (KLUN) ZTMP1
  SELF%SIPD = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSIPE
IF (LSIPE) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SIPE (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SIPE,1):UBOUND(SELF%SIPE,1)))
  READ (KLUN) ZTMP1
  SELF%SIPE = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSIPF
IF (LSIPF) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SIPF (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SIPF,1):UBOUND(SELF%SIPF,1)))
  READ (KLUN) ZTMP1
  SELF%SIPF = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSINISNAX
IF (LSINISNAX) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SINISNAX (IL1(1):IU1(1)))
  READ (KLUN) SELF%SINISNAX
ENDIF
READ (KLUN) LSILAPDI
IF (LSILAPDI) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SILAPDI (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SILAPDI,1):UBOUND(SELF%SILAPDI,1)))
  READ (KLUN) ZTMP1
  SELF%SILAPDI = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSILAPIN
IF (LSILAPIN) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SILAPIN (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SILAPIN,1):UBOUND(SELF%SILAPIN,1)))
  READ (KLUN) ZTMP1
  SELF%SILAPIN = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSIHEG
IF (LSIHEG) THEN
  READ (KLUN) IL3
  READ (KLUN) IU3
  ALLOCATE (SELF%SIHEG (IL3(1):IU3(1), IL3(2):IU3(2), IL3(3):IU3(3)))
  ALLOCATE (ZTMP3(LBOUND(SELF%SIHEG,1):UBOUND(SELF%SIHEG,1), LBOUND(SELF%SIHEG,2):UBOUND(SELF%SIHEG,2), LBOUND(SELF%SIHEG,3):UBOUND(SELF%SIHEG,3)))
  READ (KLUN) ZTMP3
  SELF%SIHEG = ZTMP3
  DEALLOCATE (ZTMP3)
ENDIF
READ (KLUN) LSIHEG2
IF (LSIHEG2) THEN
  READ (KLUN) IL3
  READ (KLUN) IU3
  ALLOCATE (SELF%SIHEG2 (IL3(1):IU3(1), IL3(2):IU3(2), IL3(3):IU3(3)))
  ALLOCATE (ZTMP3(LBOUND(SELF%SIHEG2,1):UBOUND(SELF%SIHEG2,1), LBOUND(SELF%SIHEG2,2):UBOUND(SELF%SIHEG2,2), LBOUND(SELF%SIHEG2,3):UBOUND(SELF%SIHEG2,3)))
  READ (KLUN) ZTMP3
  SELF%SIHEG2 = ZTMP3
  DEALLOCATE (ZTMP3)
ENDIF
READ (KLUN) LSIHEGB
IF (LSIHEGB) THEN
  READ (KLUN) IL3
  READ (KLUN) IU3
  ALLOCATE (SELF%SIHEGB (IL3(1):IU3(1), IL3(2):IU3(2), IL3(3):IU3(3)))
  ALLOCATE (ZTMP3(LBOUND(SELF%SIHEGB,1):UBOUND(SELF%SIHEGB,1), LBOUND(SELF%SIHEGB,2):UBOUND(SELF%SIHEGB,2), LBOUND(SELF%SIHEGB,3):UBOUND(SELF%SIHEGB,3)))
  READ (KLUN) ZTMP3
  SELF%SIHEGB = ZTMP3
  DEALLOCATE (ZTMP3)
ENDIF
READ (KLUN) LSIHEGB2
IF (LSIHEGB2) THEN
  READ (KLUN) IL3
  READ (KLUN) IU3
  ALLOCATE (SELF%SIHEGB2 (IL3(1):IU3(1), IL3(2):IU3(2), IL3(3):IU3(3)))
  ALLOCATE (ZTMP3(LBOUND(SELF%SIHEGB2,1):UBOUND(SELF%SIHEGB2,1), LBOUND(SELF%SIHEGB2,2):UBOUND(SELF%SIHEGB2,2), LBOUND(SELF%SIHEGB2,3):UBOUND(SELF%SIHEGB2,3)))
  READ (KLUN) ZTMP3
  SELF%SIHEGB2 = ZTMP3
  DEALLOCATE (ZTMP3)
ENDIF
READ (KLUN) LSIFAC
IF (LSIFAC) THEN
  READ (KLUN) IL2
  READ (KLUN) IU2
  ALLOCATE (SELF%SIFAC (IL2(1):IU2(1), IL2(2):IU2(2)))
  ALLOCATE (ZTMP2(LBOUND(SELF%SIFAC,1):UBOUND(SELF%SIFAC,1), LBOUND(SELF%SIFAC,2):UBOUND(SELF%SIFAC,2)))
  READ (KLUN) ZTMP2
  SELF%SIFAC = ZTMP2
  DEALLOCATE (ZTMP2)
ENDIF
READ (KLUN) LSIFACI
IF (LSIFACI) THEN
  READ (KLUN) IL2
  READ (KLUN) IU2
  ALLOCATE (SELF%SIFACI (IL2(1):IU2(1), IL2(2):IU2(2)))
  ALLOCATE (ZTMP2(LBOUND(SELF%SIFACI,1):UBOUND(SELF%SIFACI,1), LBOUND(SELF%SIFACI,2):UBOUND(SELF%SIFACI,2)))
  READ (KLUN) ZTMP2
  SELF%SIFACI = ZTMP2
  DEALLOCATE (ZTMP2)
ENDIF
READ (KLUN) LSIBQ
IF (LSIBQ) THEN
  READ (KLUN) IL2
  READ (KLUN) IU2
  ALLOCATE (SELF%SIBQ (IL2(1):IU2(1), IL2(2):IU2(2)))
  ALLOCATE (ZTMP2(LBOUND(SELF%SIBQ,1):UBOUND(SELF%SIBQ,1), LBOUND(SELF%SIBQ,2):UBOUND(SELF%SIBQ,2)))
  READ (KLUN) ZTMP2
  SELF%SIBQ = ZTMP2
  DEALLOCATE (ZTMP2)
ENDIF
READ (KLUN) LSIMITRA
IF (LSIMITRA) THEN
  READ (KLUN) IL2
  READ (KLUN) IU2
  ALLOCATE (SELF%SIMITRA (IL2(1):IU2(1), IL2(2):IU2(2)))
  ALLOCATE (ZTMP2(LBOUND(SELF%SIMITRA,1):UBOUND(SELF%SIMITRA,1), LBOUND(SELF%SIMITRA,2):UBOUND(SELF%SIMITRA,2)))
  READ (KLUN) ZTMP2
  SELF%SIMITRA = ZTMP2
  DEALLOCATE (ZTMP2)
ENDIF
READ (KLUN) LSIMOTRA
IF (LSIMOTRA) THEN
  READ (KLUN) IL2
  READ (KLUN) IU2
  ALLOCATE (SELF%SIMOTRA (IL2(1):IU2(1), IL2(2):IU2(2)))
  ALLOCATE (ZTMP2(LBOUND(SELF%SIMOTRA,1):UBOUND(SELF%SIMOTRA,1), LBOUND(SELF%SIMOTRA,2):UBOUND(SELF%SIMOTRA,2)))
  READ (KLUN) ZTMP2
  SELF%SIMOTRA = ZTMP2
  DEALLOCATE (ZTMP2)
ENDIF
READ (KLUN) LSIFACITRA
IF (LSIFACITRA) THEN
  READ (KLUN) IL2
  READ (KLUN) IU2
  ALLOCATE (SELF%SIFACITRA (IL2(1):IU2(1), IL2(2):IU2(2)))
  ALLOCATE (ZTMP2(LBOUND(SELF%SIFACITRA,1):UBOUND(SELF%SIFACITRA,1), LBOUND(SELF%SIFACITRA,2):UBOUND(SELF%SIFACITRA,2)))
  READ (KLUN) ZTMP2
  SELF%SIFACITRA = ZTMP2
  DEALLOCATE (ZTMP2)
ENDIF
READ (KLUN) LSIHEGTRA
IF (LSIHEGTRA) THEN
  READ (KLUN) IL2
  READ (KLUN) IU2
  ALLOCATE (SELF%SIHEGTRA (IL2(1):IU2(1), IL2(2):IU2(2)))
  ALLOCATE (ZTMP2(LBOUND(SELF%SIHEGTRA,1):UBOUND(SELF%SIHEGTRA,1), LBOUND(SELF%SIHEGTRA,2):UBOUND(SELF%SIHEGTRA,2)))
  READ (KLUN) ZTMP2
  SELF%SIHEGTRA = ZTMP2
  DEALLOCATE (ZTMP2)
ENDIF
READ (KLUN) LSIHEG2TRA
IF (LSIHEG2TRA) THEN
  READ (KLUN) IL3
  READ (KLUN) IU3
  ALLOCATE (SELF%SIHEG2TRA (IL3(1):IU3(1), IL3(2):IU3(2), IL3(3):IU3(3)))
  ALLOCATE (ZTMP3(LBOUND(SELF%SIHEG2TRA,1):UBOUND(SELF%SIHEG2TRA,1), LBOUND(SELF%SIHEG2TRA,2):UBOUND(SELF%SIHEG2TRA,2), LBOUND(SELF%SIHEG2TRA,3):UBOUND(SELF%SIHEG2TRA,3)))
  READ (KLUN) ZTMP3
  SELF%SIHEG2TRA = ZTMP3
  DEALLOCATE (ZTMP3)
ENDIF
READ (KLUN) LSIHEGBTRA
IF (LSIHEGBTRA) THEN
  READ (KLUN) IL2
  READ (KLUN) IU2
  ALLOCATE (SELF%SIHEGBTRA (IL2(1):IU2(1), IL2(2):IU2(2)))
  ALLOCATE (ZTMP2(LBOUND(SELF%SIHEGBTRA,1):UBOUND(SELF%SIHEGBTRA,1), LBOUND(SELF%SIHEGBTRA,2):UBOUND(SELF%SIHEGBTRA,2)))
  READ (KLUN) ZTMP2
  SELF%SIHEGBTRA = ZTMP2
  DEALLOCATE (ZTMP2)
ENDIF
READ (KLUN) LSIHEGB2TRA
IF (LSIHEGB2TRA) THEN
  READ (KLUN) IL3
  READ (KLUN) IU3
  ALLOCATE (SELF%SIHEGB2TRA (IL3(1):IU3(1), IL3(2):IU3(2), IL3(3):IU3(3)))
  ALLOCATE (ZTMP3(LBOUND(SELF%SIHEGB2TRA,1):UBOUND(SELF%SIHEGB2TRA,1), LBOUND(SELF%SIHEGB2TRA,2):UBOUND(SELF%SIHEGB2TRA,2), LBOUND(SELF%SIHEGB2TRA,3):UBOUND(SELF%SIHEGB2TRA,3)))
  READ (KLUN) ZTMP3
  SELF%SIHEGB2TRA = ZTMP3
  DEALLOCATE (ZTMP3)
ENDIF
READ (KLUN) LSIHEGIND
IF (LSIHEGIND) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SIHEGIND (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SIHEGIND,1):UBOUND(SELF%SIHEGIND,1)))
  READ (KLUN) ZTMP1
  SELF%SIHEGIND = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSIBQTRA
IF (LSIBQTRA) THEN
  READ (KLUN) IL2
  READ (KLUN) IU2
  ALLOCATE (SELF%SIBQTRA (IL2(1):IU2(1), IL2(2):IU2(2)))
  ALLOCATE (ZTMP2(LBOUND(SELF%SIBQTRA,1):UBOUND(SELF%SIBQTRA,1), LBOUND(SELF%SIBQTRA,2):UBOUND(SELF%SIBQTRA,2)))
  READ (KLUN) ZTMP2
  SELF%SIBQTRA = ZTMP2
  DEALLOCATE (ZTMP2)
ENDIF
READ (KLUN) LSIZA
IF (LSIZA) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SIZA (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SIZA,1):UBOUND(SELF%SIZA,1)))
  READ (KLUN) ZTMP1
  SELF%SIZA = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSIZC
IF (LSIZC) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SIZC (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SIZC,1):UBOUND(SELF%SIZC,1)))
  READ (KLUN) ZTMP1
  SELF%SIZC = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSIPIS
IF (LSIPIS) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SIPIS (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SIPIS,1):UBOUND(SELF%SIPIS,1)))
  READ (KLUN) ZTMP1
  SELF%SIPIS = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) LSITGR
IF (LSITGR) THEN
  READ (KLUN) IL2
  READ (KLUN) IU2
  ALLOCATE (SELF%SITGR (IL2(1):IU2(1), IL2(2):IU2(2)))
  ALLOCATE (ZTMP2(LBOUND(SELF%SITGR,1):UBOUND(SELF%SITGR,1), LBOUND(SELF%SITGR,2):UBOUND(SELF%SITGR,2)))
  READ (KLUN) ZTMP2
  SELF%SITGR = ZTMP2
  DEALLOCATE (ZTMP2)
ENDIF
READ (KLUN) LSITAC
IF (LSITAC) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%SITAC (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%SITAC,1):UBOUND(SELF%SITAC,1)))
  READ (KLUN) ZTMP1
  SELF%SITAC = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
READ (KLUN) ZTMP0
SELF%VNORM = ZTMP0
READ (KLUN) ZTMP0
SELF%SLOPE_MAX = ZTMP0
READ (KLUN) ZTMP0
SELF%PSURF_MAX = ZTMP0
READ (KLUN) ZTMP0
SELF%PSURF_MIN = ZTMP0
READ (KLUN) SELF%NVLAG
READ (KLUN) SELF%NWLAG
READ (KLUN) SELF%NTLAG
READ (KLUN) SELF%NSPDLAG
READ (KLUN) SELF%NSVDLAG
READ (KLUN) SELF%NSPLTHOI
READ (KLUN) SELF%LSPLTHOIGFL
READ (KLUN) SELF%NSLDIMK
READ (KLUN) SELF%NITMP
READ (KLUN) ZTMP0
SELF%VETAON = ZTMP0
READ (KLUN) ZTMP0
SELF%VETAOX = ZTMP0
READ (KLUN) SELF%LSETTLSVF
READ (KLUN) SELF%LSETFSTAT
READ (KLUN) SELF%LSETTLSVF_DIFF
READ (KLUN) ZTMP0
SELF%RW2TLFF = ZTMP0
READ (KLUN) ZTMP0
SELF%RALPHA = ZTMP0
READ (KLUN) ZTMP0
SELF%RALPHA_TOP = ZTMP0
READ (KLUN) SELF%NLEV_ZALPHA
READ (KLUN) SELF%NEDER
ALLOCATE (ZTMP2(LBOUND(SELF%RBETAK,1):UBOUND(SELF%RBETAK,1), LBOUND(SELF%RBETAK,2):UBOUND(SELF%RBETAK,2)))
READ (KLUN) ZTMP2
SELF%RBETAK = ZTMP2
DEALLOCATE (ZTMP2)
READ (KLUN) SELF%LWENOBC
READ (KLUN) SELF%NQMHOISLT
READ (KLUN) SELF%LSLDP_RK
READ (KLUN) SELF%LSLDP_CURV
READ (KLUN) SELF%LSLDP_CURV_FIX
READ (KLUN) SELF%LRHS_CURV
READ (KLUN) SELF%LRHS_CURV_FIX
READ (KLUN) SELF%LSLDP_XYZ
READ (KLUN) SELF%LSLDP_SAVE
READ (KLUN) ZTMP0
SELF%VESL = ZTMP0
READ (KLUN) ZTMP0
SELF%XIDT = ZTMP0
READ (KLUN) SELF%LQMW
READ (KLUN) SELF%LQMHW
READ (KLUN) SELF%LQMT
READ (KLUN) SELF%LQMHT
READ (KLUN) SELF%LQMP
READ (KLUN) SELF%LQMHP
READ (KLUN) SELF%LQMPD
READ (KLUN) SELF%LQMHPD
READ (KLUN) SELF%LQMVD
READ (KLUN) SELF%LQMHVD
READ (KLUN) SELF%LVWENO_W
READ (KLUN) SELF%LVWENO_T
READ (KLUN) SELF%LVWENO_SP
READ (KLUN) SELF%LVWENO_SPD
READ (KLUN) SELF%LVWENO_SVD
READ (KLUN) ZTMP0
SELF%WENO_ALPHA_W = ZTMP0
READ (KLUN) ZTMP0
SELF%WENO_ALPHA_T = ZTMP0
READ (KLUN) ZTMP0
SELF%WENO_ALPHA_SP = ZTMP0
READ (KLUN) ZTMP0
SELF%WENO_ALPHA_SPD = ZTMP0
READ (KLUN) ZTMP0
SELF%WENO_ALPHA_SVD = ZTMP0
READ (KLUN) SELF%LADVF
READ (KLUN) SELF%LIMPF
READ (KLUN) SELF%L2TLFF
READ (KLUN) ZTMP0
SELF%RCMSLP0 = ZTMP0
READ (KLUN) SELF%NCOMP_CVGQ
READ (KLUN) SELF%LSVTSM
READ (KLUN) ZTMP0
SELF%RPRES_SVTSM = ZTMP0
READ (KLUN) ZTMP0
SELF%RPRES_SETTLSVF = ZTMP0
READ (KLUN) SELF%NFLEVSF
READ (KLUN) ZTMP0
SELF%RSCALE = ZTMP0
READ (KLUN) ZTMP0
SELF%RSCALEOFF = ZTMP0
READ (KLUN) ZTMP0
SELF%RINTOPT = ZTMP0
READ (KLUN) ZTMP0
SELF%RRINTOPT = ZTMP0
READ (KLUN) SELF%LHDIFFM
READ (KLUN) SELF%LSPECVIS
READ (KLUN) SELF%NDIFFACT
READ (KLUN) SELF%LGPSTRESS
READ (KLUN) ZTMP0
SELF%RCLSTRESS = ZTMP0
READ (KLUN) ZTMP0
SELF%RCLPOLE = ZTMP0
READ (KLUN) SELF%NVSEPC
READ (KLUN) SELF%NVSEPL
READ (KLUN) SELF%LFINDVSEP
READ (KLUN) SELF%LMASCOR
READ (KLUN) SELF%LMASDRY
READ (KLUN) SELF%LGPMASCOR
READ (KLUN) SELF%NGPMASCOR
READ (KLUN) ZTMP0
SELF%GPMASSI = ZTMP0
READ (KLUN) ZTMP0
SELF%GMASSI = ZTMP0
READ (KLUN) ZTMP0
SELF%GMASS0 = ZTMP0
READ (KLUN) ZTMP0
SELF%GMASSINC = ZTMP0
READ (KLUN) SELF%LNODRYFLX
READ (KLUN) LSIBI
IF (LSIBI) THEN
  READ (KLUN) IL2
  READ (KLUN) IU2
  ALLOCATE (SELF%SIBI (IL2(1):IU2(1), IL2(2):IU2(2)))
  ALLOCATE (ZTMP2(LBOUND(SELF%SIBI,1):UBOUND(SELF%SIBI,1), LBOUND(SELF%SIBI,2):UBOUND(SELF%SIBI,2)))
  READ (KLUN) ZTMP2
  SELF%SIBI = ZTMP2
  DEALLOCATE (ZTMP2)
ENDIF
READ (KLUN) ZTMP0
SELF%RESGP = ZTMP0
READ (KLUN) ZTMP0
SELF%RESGM = ZTMP0
READ (KLUN) SELF%LNHHY_SOLVER_GP
READ (KLUN) SELF%LNHHY_SOLVER_SP
READ (KLUN) SELF%LNHQE_SOLVER_GP
READ (KLUN) SELF%LNHQE_SOLVER_SP
READ (KLUN) SELF%LRESET_BLEND_SI
READ (KLUN) SELF%NSTOP_BLEND
READ (KLUN) SELF%NSTART_BLEND
READ (KLUN) ZTMP0
SELF%RNHQE_DELTAM = ZTMP0
READ (KLUN) LRNHHY_DELTAM
IF (LRNHHY_DELTAM) THEN
  READ (KLUN) IL1
  READ (KLUN) IU1
  ALLOCATE (SELF%RNHHY_DELTAM (IL1(1):IU1(1)))
  ALLOCATE (ZTMP1(LBOUND(SELF%RNHHY_DELTAM,1):UBOUND(SELF%RNHHY_DELTAM,1)))
  READ (KLUN) ZTMP1
  SELF%RNHHY_DELTAM = ZTMP1
  DEALLOCATE (ZTMP1)
ENDIF
CLOSE (KLUN)
END SUBROUTINE LOAD_TDYN



END MODULE YOMDYN

