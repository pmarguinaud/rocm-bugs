SRC=.
BUILD=.
FCFLAGS=-march=native -fPIC -ffree-form -cpp -fbackslash -fconvert=big-endian -O2 -ffp-contract=off -fopenmp -fPIC -fopenmp --offload-arch=gfx90a -lflang_rt.hostdevice -Qunused-arguments 
FC=flang $(FCFLAGS)

all: exe

$(BUILD)/parkind1.o: $(BOOT) $(SRC)/parkind1.F90 
	$(FC) -o $(BUILD)/parkind1.o -c $(SRC)/parkind1.F90

$(BUILD)/verder_singleblock.o: $(BOOT) $(SRC)/verder_singleblock.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/verder_singleblock.o -c $(SRC)/verder_singleblock.F90

$(BUILD)/verder_singleblock.x: $(BOOT) $(BUILD)/verder_singleblock.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/verder_singleblock.x $(BUILD)/verder_singleblock.o $(BUILD)/parkind1.o $(LIBS)


exe: $(BUILD)/verder_singleblock.x

subclean:
	\rm -f $(BUILD)/verder_singleblock.o

clean: 
	\rm -f $(BUILD)/*.o $(BUILD)/*.xml $(BUILD)/*.a $(BUILD)/*.x $(BUILD)/*.mod $(BUILD)/*.optrpt $(BUILD)/*.smod $(BUILD)/*.ok $(BUILD)/*.optrpt

tidy:
	\rm -f $(BUILD)/*.xml $(BUILD)/*.optrpt
