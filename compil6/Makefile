FC=amdflang -march=native -fPIC -ffree-form -cpp -fbackslash -fconvert=big-endian -O0 -ffp-contract=off -fopenmp -Werror -fPIC -fopenmp --offload-arch=gfx942 -lflang_rt.hostdevice -Rpass-analysis=kernel-resource-usage

BUILD=.

all: exe

$(BUILD)/actke_openacc.intfb.ok: $(BUILD)/actke_openacc.intfb.h 
	touch $(BUILD)/actke_openacc.intfb.ok

$(BUILD)/fxtran_acdc_stack_mod.mod: $(BUILD)/fxtran_acdc_stack_mod.F90 
	$(FC) -c $(BUILD)/fxtran_acdc_stack_mod.F90

$(BUILD)/actke_openacc.o: $(BUILD)/actke_openacc.F90 fxtran_acdc_stack_mod.mod
	$(FC) -o $(BUILD)/actke_openacc.o -c $(BUILD)/actke_openacc.F90

$(BUILD)/main_actke.o: $(BUILD)/main_actke.F90 actke_openacc.intfb.ok fxtran_acdc_stack_mod.mod
	$(FC) -o $(BUILD)/main_actke.o -c $(BUILD)/main_actke.F90

$(BUILD)/main_actke.x: $(BUILD)/main_actke.o $(BUILD)/actke_openacc.o
	$(FC) -o $(BUILD)/main_actke.x $(BUILD)/main_actke.o $(BUILD)/actke_openacc.o $(BUILD)/fxtran_acdc_stack_mod.o


exe: $(BUILD)/main_actke.x

subclean:
	\rm -f $(BUILD)/actke.o $(BUILD)/main_actke.o

clean: 
	\rm -f $(BUILD)/*.o $(BUILD)/*.xml $(BUILD)/*.a $(BUILD)/*.x $(BUILD)/*.mod $(BUILD)/*.optrpt $(BUILD)/*.smod $(BUILD)/*.ok $(BUILD)/*.optrpt

tidy:
	\rm -f $(BUILD)/*.xml $(BUILD)/*.optrpt
