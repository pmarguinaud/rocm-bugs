MODULE yomvirt1

!..   To hold data structures for virtual PE handling

!     Sami Saarinen, ECMWF, 20/1/1998




IMPLICIT NONE

INTEGER, PARAMETER :: JPIM = 4

PRIVATE :: JPIM

INTEGER(KIND=JPIM) :: vnproc
INTEGER(KIND=JPIM) :: vnprocA
INTEGER(KIND=JPIM) :: vnprocB

logical :: is_virtual
logical :: forced_virtual

INTEGER(KIND=JPIM) :: nrrpes         ! No. of "round-robin" virtual PEs

!--   My round robin (virtual) PEs
INTEGER(KIND=JPIM), allocatable :: myrrpe(:)  ! Length = nrrpes

!--   Direct access to a myrrpe() element
INTEGER(KIND=JPIM), allocatable :: nrridx(:)  ! Length = vnproc

!--   A truth table to tell whether particular virtual-PE# is mine
logical, allocatable :: is_myrrpe(:) ! Length = vnproc + 1

END MODULE yomvirt1
