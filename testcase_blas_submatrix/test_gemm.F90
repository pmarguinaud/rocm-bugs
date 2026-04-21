program test_gemm

USE HIPFORT
USE HIPFORT_ROCBLAS
USE ISO_C_BINDING

implicit none


integer(4), parameter :: nflevl=2
integer(4), parameter :: nspecv=3
integer(4), parameter :: nflevg=3*nflevl
integer(4), parameter :: nspec=3*nspecv

real(8) :: a(nspec,nflevg)
real(8) :: b(nflevg,nflevg)
real(8) :: c1(nspec,nflevg)
real(8) :: c2(nspec,nflevg)
integer(4) :: jsp,jlev,iresu,jlev2
type(c_ptr) :: handle
type(c_ptr) :: stream
real(8), parameter :: alpha=1.0
real(8), parameter :: beta=0.0

a(:,:)=0.
b(:,:)=0.
c1(:,:)=0.
c2(:,:)=0.
call random_number(a(nspecv+1:2*nspecv,nflevl+1:2*nflevl))
call random_number(b(nflevl+1:2*nflevl,nflevl+1:2*nflevl))

!partial matrix multiplication done directly, for comparison purpose
do jsp=nspecv+1,2*nspecv
  do jlev=nflevl+1,2*nflevl
    c2(jsp,jlev)=0.
    do jlev2=nflevl+1,2*nflevl
      c2(jsp,jlev)=c2(jsp,jlev)+a(jsp,jlev2)*b(jlev2,jlev)
    enddo
  enddo
enddo

write (0,*) "creating handle, iresu :",rocblas_create_handle(handle)
write (0,*) "associating stream to handle, iresu : ",rocblas_get_stream(handle,stream)


!$omp target data map(tofrom:a,b,c1) 

!$omp target data use_device_addr(a,b,c1)
iresu=rocblas_Dgemm(handle,ROCBLAS_OPERATION_NONE,ROCBLAS_OPERATION_NONE,nspecv,nflevl,nflevl,alpha,a(nspecv+1,nflevl+1),nspec,b(nflevl+1,nflevl+1),nflevg,beta,c1(nspecv+1,nflevl+1),nspec)
!$omp end target data 

!$omp end target data

write (0,*) "début comparaison ta"
do jsp=1,nspec
  do jlev=1,nflevg
    if (abs(c1(jsp,jlev)-c2(jsp,jlev)) .gt. 0.00000000001) write (0,*) "jsp jlev c1 c2",jsp,jlev,c1(jsp,jlev),c2(jsp,jlev)  !!test whith .GT., as rounding differences are expected
  enddo
enddo
write (0,*) "fin comparaison ta"

end program test_gemm
