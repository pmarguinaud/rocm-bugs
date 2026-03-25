
all: exe

FCFLAGS=-march=native -g -fPIC -ffree-form -cpp -fbackslash -fconvert=big-endian -O2 -ffp-contract=off -fopenmp --offload-arch=${GFX} -I${ROCM_PREFIX}/include/hipfort/amdgcn/ -I${ROCM_PREFIX}/include/rocblas/ -Qunused-arguments

LIBS=${ROCM_PREFIX}/lib/libhipfort-amdgcn.a -L${ROCM_PREFIX}/lib/ -lrocblas -lamdhip64 $(LFLANG_RT_HOSTDEVICE)

FC=amdflang $(FCFLAGS)

main_spnhsi.o: main_spnhsi.F90 yomdyn.o
	$(FC) -o main_spnhsi.o -c main_spnhsi.F90

yomdyn.o: yomdyn.F90 
	$(FC) -o yomdyn.o -c yomdyn.F90

main_spnhsi.x: main_spnhsi.o yomdyn.o
	$(FC) -o main_spnhsi.x main_spnhsi.o yomdyn.o $(LIBS)


exe: main_spnhsi.x

subclean:
	\rm -f main_spnhsi.o

clean: 
	\rm -f *.o *.xml *.a *.x *.mod *.optrpt *.smod *.ok *.optrpt

tidy:
	\rm -f *.xml *.optrpt
