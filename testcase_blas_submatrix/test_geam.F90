program test_geam

USE HIPFORT
USE HIPFORT_ROCBLAS
USE ISO_C_BINDING

implicit none

#if defined(FULL_MATRIX)
integer(4), parameter :: nflevl=2
integer(4), parameter :: nspecv=2
integer(4), parameter :: nflevg=3*nflevl
integer(4), parameter :: nspec=3*nspecv

real(8) :: a(nspec,nflevg)
real(8) :: ta1(nflevg,nspec), ta2(nflevg,nspec)
integer(4) :: jsp,jlev,iresu
type(c_ptr) :: handle
type(c_ptr) :: stream
real(8), parameter :: alpha=1.0
real(8), parameter :: beta=0.0

logical :: verbose= .false.

a(:,:)=0.
call random_number(a(:,:))
ta1(:,:)=0.
ta2(:,:)=0.
!tranpose operation done directly, for comparison purpose
do jsp=1,nspec
  do jlev=1,nflevg
    ta2(jlev,jsp)=a(jsp,jlev)
  enddo
enddo

write (0,*) "creating handle, iresu :",rocblas_create_handle(handle)
write (0,*) "associating stream to handle, iresu : ",rocblas_get_stream(handle,stream)
call flush(0)

!$omp target data map(tofrom:a,ta1) 
write (0,*) "just before call to dgeam"
call flush(0)
!$omp target data use_device_addr(a,ta1)
iresu=rocblas_Dgeam(handle,ROCBLAS_OPERATION_TRANSPOSE,ROCBLAS_OPERATION_TRANSPOSE,nflevg,nspec,alpha,a,nspec,beta,a,nspec,ta1,nflevg)
!$omp end target data 
write (0,*) "computing dgeam, iresu :",iresu
call flush(0)
!$omp end target data

write (0,*) "début comparaison ta"
do jsp=1,nspec
  do jlev=1,nflevg
    if (ta1(jlev,jsp)/=ta2(jlev,jsp)) write (0,*) "jsp jlev ta1 ta2",jsp,jlev,ta1(jlev,jsp),ta2(jlev,jsp)
  enddo
enddo
write (0,*) "fin comparaison ta"

#else
integer(4), parameter :: nflevl=2
integer(4), parameter :: nspecv=2
integer(4), parameter :: nflevg=3*nflevl
integer(4), parameter :: nspec=3*nspecv

real(8) :: a(nspecv,nflevg)
real(8) :: ta1(nflevl,nspec), ta2(nflevl,nspec)
integer(4) :: jsp,jlev,iresu
type(c_ptr) :: handle
type(c_ptr) :: stream
real(8), parameter :: alpha=1.0
real(8), parameter :: beta=0.0

logical :: verbose= .false.

a(:,:)=0.
call random_number(a(1:nspecv,nflevl+1:2*nflevl))
ta1(:,:)=0.
ta2(:,:)=0.
!tranpose operation done directly, for comparison purpose
do jsp=1,nspecv
  do jlev=1,nflevl
    ta2(jlev,jsp+nspecv)=a(jsp,jlev+nflevl)
  enddo
enddo

write (0,*) "creating handle, iresu :",rocblas_create_handle(handle)
write (0,*) "associating stream to handle, iresu : ",rocblas_get_stream(handle,stream)


!$omp target data map(tofrom:a,ta1) 

!$omp target data use_device_addr(a,ta1)
iresu=rocblas_Dgeam(handle,ROCBLAS_OPERATION_TRANSPOSE,ROCBLAS_OPERATION_TRANSPOSE,nflevl,nspecv,alpha,a(1,nflevl+1),nspecv,beta,a,nspecv,ta1(1,nspecv+1),nflevl)
!$omp end target data 

!$omp end target data

write (0,*) "début comparaison ta"
do jsp=1,nspec
  do jlev=1,nflevl
    if (ta1(jlev,jsp)/=ta2(jlev,jsp)) write (0,*) "jsp jlev ta1 ta2",jsp,jlev,ta1(jlev,jsp),ta2(jlev,jsp)
  enddo
enddo
write (0,*) "fin comparaison ta"
#endif

end program test_geam
