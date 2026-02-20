
all: exe

FCFLAGS=-march=native -g -fPIC -ffree-form -cpp -fbackslash -fconvert=big-endian -O2 -ffp-contract=off -fopenmp --offload-arch=${GFX} -I/home/afar/software/compilers/afar/rocm-afar-8873-drop-22.2.0/include/hipfort/amdgcn/ -I/home/afar/software/compilers/afar/rocm-afar-8873-drop-22.2.0/include/rocblas/ -Qunused-arguments

LIBS=/home/afar/software/compilers/afar/rocm-afar-8873-drop-22.2.0/lib/libhipfort-amdgcn.a -L/home/afar/software/compilers/afar/rocm-afar-8873-drop-22.2.0/lib/ -lrocblas -lamdhip64 -lflang_rt.hostdevice

FC=flang $(FCFLAGS)

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
