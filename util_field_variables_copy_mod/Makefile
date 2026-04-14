
all: util_field_variables_copy_mod.o

ifeq ($(SRC), )
SRC=.
endif

ifeq ($(BUILD), )
BUILD=.
endif

all: exe

include Makefile.inc

$(BUILD)/deallocate_if_associated_mod.o: $(BOOT) $(SRC)/deallocate_if_associated_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/deallocate_if_associated_mod.o -c $(SRC)/deallocate_if_associated_mod.F90

$(BUILD)/dev_alloc_module.o: $(BOOT) $(SRC)/dev_alloc_module.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/dev_alloc_module.o -c $(SRC)/dev_alloc_module.F90

$(BUILD)/ec_lun.o: $(BOOT) $(SRC)/ec_lun.F90 $(BUILD)/ec_parkind.o
	$(FC) -o $(BUILD)/ec_lun.o -c $(SRC)/ec_lun.F90

$(BUILD)/ec_parkind.o: $(BOOT) $(SRC)/ec_parkind.F90 
	$(FC) -o $(BUILD)/ec_parkind.o -c $(SRC)/ec_parkind.F90

$(BUILD)/field_1im_data_module.o: $(BOOT) $(SRC)/field_1im_data_module.F90 $(BUILD)/field_abort_module.o $(BUILD)/field_constants_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_1im_data_module.o -c $(SRC)/field_1im_data_module.F90

$(BUILD)/field_1im_factory_module.o: $(BOOT) $(SRC)/field_1im_factory_module.F90 $(BUILD)/field_1im_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_1im_factory_module.o -c $(SRC)/field_1im_factory_module.F90

$(BUILD)/field_1im_module.o: $(BOOT) $(SRC)/field_1im_module.F90 $(BUILD)/dev_alloc_module.o $(BUILD)/field_1im_data_module.o $(BUILD)/field_basic_module.o $(BUILD)/field_constants_module.o $(BUILD)/field_defaults_module.o $(BUILD)/host_alloc_module.o $(BUILD)/oml_mod.o
	$(FC) -o $(BUILD)/field_1im_module.o -c $(SRC)/field_1im_module.F90

$(BUILD)/field_1lm_data_module.o: $(BOOT) $(SRC)/field_1lm_data_module.F90 $(BUILD)/field_abort_module.o $(BUILD)/field_constants_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_1lm_data_module.o -c $(SRC)/field_1lm_data_module.F90

$(BUILD)/field_1lm_factory_module.o: $(BOOT) $(SRC)/field_1lm_factory_module.F90 $(BUILD)/field_1lm_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_1lm_factory_module.o -c $(SRC)/field_1lm_factory_module.F90

$(BUILD)/field_1lm_module.o: $(BOOT) $(SRC)/field_1lm_module.F90 $(BUILD)/dev_alloc_module.o $(BUILD)/field_1lm_data_module.o $(BUILD)/field_basic_module.o $(BUILD)/field_constants_module.o $(BUILD)/field_defaults_module.o $(BUILD)/host_alloc_module.o $(BUILD)/oml_mod.o
	$(FC) -o $(BUILD)/field_1lm_module.o -c $(SRC)/field_1lm_module.F90

$(BUILD)/field_1rd_data_module.o: $(BOOT) $(SRC)/field_1rd_data_module.F90 $(BUILD)/field_abort_module.o $(BUILD)/field_constants_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_1rd_data_module.o -c $(SRC)/field_1rd_data_module.F90

$(BUILD)/field_1rd_factory_module.o: $(BOOT) $(SRC)/field_1rd_factory_module.F90 $(BUILD)/field_1rd_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_1rd_factory_module.o -c $(SRC)/field_1rd_factory_module.F90

$(BUILD)/field_1rd_module.o: $(BOOT) $(SRC)/field_1rd_module.F90 $(BUILD)/dev_alloc_module.o $(BUILD)/field_1rd_data_module.o $(BUILD)/field_basic_module.o $(BUILD)/field_constants_module.o $(BUILD)/field_defaults_module.o $(BUILD)/host_alloc_module.o $(BUILD)/oml_mod.o
	$(FC) -o $(BUILD)/field_1rd_module.o -c $(SRC)/field_1rd_module.F90

$(BUILD)/field_1rm_data_module.o: $(BOOT) $(SRC)/field_1rm_data_module.F90 $(BUILD)/field_abort_module.o $(BUILD)/field_constants_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_1rm_data_module.o -c $(SRC)/field_1rm_data_module.F90

$(BUILD)/field_1rm_factory_module.o: $(BOOT) $(SRC)/field_1rm_factory_module.F90 $(BUILD)/field_1rm_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_1rm_factory_module.o -c $(SRC)/field_1rm_factory_module.F90

$(BUILD)/field_1rm_module.o: $(BOOT) $(SRC)/field_1rm_module.F90 $(BUILD)/dev_alloc_module.o $(BUILD)/field_1rm_data_module.o $(BUILD)/field_basic_module.o $(BUILD)/field_constants_module.o $(BUILD)/field_defaults_module.o $(BUILD)/host_alloc_module.o $(BUILD)/oml_mod.o
	$(FC) -o $(BUILD)/field_1rm_module.o -c $(SRC)/field_1rm_module.F90

$(BUILD)/field_2im_data_module.o: $(BOOT) $(SRC)/field_2im_data_module.F90 $(BUILD)/field_abort_module.o $(BUILD)/field_constants_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_2im_data_module.o -c $(SRC)/field_2im_data_module.F90

$(BUILD)/field_2im_factory_module.o: $(BOOT) $(SRC)/field_2im_factory_module.F90 $(BUILD)/field_2im_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_2im_factory_module.o -c $(SRC)/field_2im_factory_module.F90

$(BUILD)/field_2im_module.o: $(BOOT) $(SRC)/field_2im_module.F90 $(BUILD)/dev_alloc_module.o $(BUILD)/field_2im_data_module.o $(BUILD)/field_basic_module.o $(BUILD)/field_constants_module.o $(BUILD)/field_defaults_module.o $(BUILD)/host_alloc_module.o $(BUILD)/oml_mod.o
	$(FC) -o $(BUILD)/field_2im_module.o -c $(SRC)/field_2im_module.F90

$(BUILD)/field_2lm_data_module.o: $(BOOT) $(SRC)/field_2lm_data_module.F90 $(BUILD)/field_abort_module.o $(BUILD)/field_constants_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_2lm_data_module.o -c $(SRC)/field_2lm_data_module.F90

$(BUILD)/field_2lm_factory_module.o: $(BOOT) $(SRC)/field_2lm_factory_module.F90 $(BUILD)/field_2lm_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_2lm_factory_module.o -c $(SRC)/field_2lm_factory_module.F90

$(BUILD)/field_2lm_module.o: $(BOOT) $(SRC)/field_2lm_module.F90 $(BUILD)/dev_alloc_module.o $(BUILD)/field_2lm_data_module.o $(BUILD)/field_basic_module.o $(BUILD)/field_constants_module.o $(BUILD)/field_defaults_module.o $(BUILD)/host_alloc_module.o $(BUILD)/oml_mod.o
	$(FC) -o $(BUILD)/field_2lm_module.o -c $(SRC)/field_2lm_module.F90

$(BUILD)/field_2rd_data_module.o: $(BOOT) $(SRC)/field_2rd_data_module.F90 $(BUILD)/field_abort_module.o $(BUILD)/field_constants_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_2rd_data_module.o -c $(SRC)/field_2rd_data_module.F90

$(BUILD)/field_2rd_factory_module.o: $(BOOT) $(SRC)/field_2rd_factory_module.F90 $(BUILD)/field_2rd_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_2rd_factory_module.o -c $(SRC)/field_2rd_factory_module.F90

$(BUILD)/field_2rd_module.o: $(BOOT) $(SRC)/field_2rd_module.F90 $(BUILD)/dev_alloc_module.o $(BUILD)/field_2rd_data_module.o $(BUILD)/field_basic_module.o $(BUILD)/field_constants_module.o $(BUILD)/field_defaults_module.o $(BUILD)/host_alloc_module.o $(BUILD)/oml_mod.o
	$(FC) -o $(BUILD)/field_2rd_module.o -c $(SRC)/field_2rd_module.F90

$(BUILD)/field_2rm_data_module.o: $(BOOT) $(SRC)/field_2rm_data_module.F90 $(BUILD)/field_abort_module.o $(BUILD)/field_constants_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_2rm_data_module.o -c $(SRC)/field_2rm_data_module.F90

$(BUILD)/field_2rm_factory_module.o: $(BOOT) $(SRC)/field_2rm_factory_module.F90 $(BUILD)/field_2rm_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_2rm_factory_module.o -c $(SRC)/field_2rm_factory_module.F90

$(BUILD)/field_2rm_module.o: $(BOOT) $(SRC)/field_2rm_module.F90 $(BUILD)/dev_alloc_module.o $(BUILD)/field_2rm_data_module.o $(BUILD)/field_basic_module.o $(BUILD)/field_constants_module.o $(BUILD)/field_defaults_module.o $(BUILD)/host_alloc_module.o $(BUILD)/oml_mod.o
	$(FC) -o $(BUILD)/field_2rm_module.o -c $(SRC)/field_2rm_module.F90

$(BUILD)/field_3im_data_module.o: $(BOOT) $(SRC)/field_3im_data_module.F90 $(BUILD)/field_abort_module.o $(BUILD)/field_constants_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_3im_data_module.o -c $(SRC)/field_3im_data_module.F90

$(BUILD)/field_3im_factory_module.o: $(BOOT) $(SRC)/field_3im_factory_module.F90 $(BUILD)/field_2im_module.o $(BUILD)/field_3im_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_3im_factory_module.o -c $(SRC)/field_3im_factory_module.F90

$(BUILD)/field_3im_module.o: $(BOOT) $(SRC)/field_3im_module.F90 $(BUILD)/dev_alloc_module.o $(BUILD)/field_3im_data_module.o $(BUILD)/field_basic_module.o $(BUILD)/field_constants_module.o $(BUILD)/field_defaults_module.o $(BUILD)/host_alloc_module.o $(BUILD)/oml_mod.o
	$(FC) -o $(BUILD)/field_3im_module.o -c $(SRC)/field_3im_module.F90

$(BUILD)/field_3lm_data_module.o: $(BOOT) $(SRC)/field_3lm_data_module.F90 $(BUILD)/field_abort_module.o $(BUILD)/field_constants_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_3lm_data_module.o -c $(SRC)/field_3lm_data_module.F90

$(BUILD)/field_3lm_factory_module.o: $(BOOT) $(SRC)/field_3lm_factory_module.F90 $(BUILD)/field_2lm_module.o $(BUILD)/field_3lm_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_3lm_factory_module.o -c $(SRC)/field_3lm_factory_module.F90

$(BUILD)/field_3lm_module.o: $(BOOT) $(SRC)/field_3lm_module.F90 $(BUILD)/dev_alloc_module.o $(BUILD)/field_3lm_data_module.o $(BUILD)/field_basic_module.o $(BUILD)/field_constants_module.o $(BUILD)/field_defaults_module.o $(BUILD)/host_alloc_module.o $(BUILD)/oml_mod.o
	$(FC) -o $(BUILD)/field_3lm_module.o -c $(SRC)/field_3lm_module.F90

$(BUILD)/field_3rd_data_module.o: $(BOOT) $(SRC)/field_3rd_data_module.F90 $(BUILD)/field_abort_module.o $(BUILD)/field_constants_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_3rd_data_module.o -c $(SRC)/field_3rd_data_module.F90

$(BUILD)/field_3rd_factory_module.o: $(BOOT) $(SRC)/field_3rd_factory_module.F90 $(BUILD)/field_2rd_module.o $(BUILD)/field_3rd_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_3rd_factory_module.o -c $(SRC)/field_3rd_factory_module.F90

$(BUILD)/field_3rd_module.o: $(BOOT) $(SRC)/field_3rd_module.F90 $(BUILD)/dev_alloc_module.o $(BUILD)/field_3rd_data_module.o $(BUILD)/field_basic_module.o $(BUILD)/field_constants_module.o $(BUILD)/field_defaults_module.o $(BUILD)/host_alloc_module.o $(BUILD)/oml_mod.o
	$(FC) -o $(BUILD)/field_3rd_module.o -c $(SRC)/field_3rd_module.F90

$(BUILD)/field_3rm_data_module.o: $(BOOT) $(SRC)/field_3rm_data_module.F90 $(BUILD)/field_abort_module.o $(BUILD)/field_constants_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_3rm_data_module.o -c $(SRC)/field_3rm_data_module.F90

$(BUILD)/field_3rm_factory_module.o: $(BOOT) $(SRC)/field_3rm_factory_module.F90 $(BUILD)/field_2rm_module.o $(BUILD)/field_3rm_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_3rm_factory_module.o -c $(SRC)/field_3rm_factory_module.F90

$(BUILD)/field_3rm_module.o: $(BOOT) $(SRC)/field_3rm_module.F90 $(BUILD)/dev_alloc_module.o $(BUILD)/field_3rm_data_module.o $(BUILD)/field_basic_module.o $(BUILD)/field_constants_module.o $(BUILD)/field_defaults_module.o $(BUILD)/host_alloc_module.o $(BUILD)/oml_mod.o
	$(FC) -o $(BUILD)/field_3rm_module.o -c $(SRC)/field_3rm_module.F90

$(BUILD)/field_4im_data_module.o: $(BOOT) $(SRC)/field_4im_data_module.F90 $(BUILD)/field_abort_module.o $(BUILD)/field_constants_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_4im_data_module.o -c $(SRC)/field_4im_data_module.F90

$(BUILD)/field_4im_factory_module.o: $(BOOT) $(SRC)/field_4im_factory_module.F90 $(BUILD)/field_3im_module.o $(BUILD)/field_4im_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_4im_factory_module.o -c $(SRC)/field_4im_factory_module.F90

$(BUILD)/field_4im_module.o: $(BOOT) $(SRC)/field_4im_module.F90 $(BUILD)/dev_alloc_module.o $(BUILD)/field_4im_data_module.o $(BUILD)/field_basic_module.o $(BUILD)/field_constants_module.o $(BUILD)/field_defaults_module.o $(BUILD)/host_alloc_module.o $(BUILD)/oml_mod.o
	$(FC) -o $(BUILD)/field_4im_module.o -c $(SRC)/field_4im_module.F90

$(BUILD)/field_4lm_data_module.o: $(BOOT) $(SRC)/field_4lm_data_module.F90 $(BUILD)/field_abort_module.o $(BUILD)/field_constants_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_4lm_data_module.o -c $(SRC)/field_4lm_data_module.F90

$(BUILD)/field_4lm_factory_module.o: $(BOOT) $(SRC)/field_4lm_factory_module.F90 $(BUILD)/field_3lm_module.o $(BUILD)/field_4lm_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_4lm_factory_module.o -c $(SRC)/field_4lm_factory_module.F90

$(BUILD)/field_4lm_module.o: $(BOOT) $(SRC)/field_4lm_module.F90 $(BUILD)/dev_alloc_module.o $(BUILD)/field_4lm_data_module.o $(BUILD)/field_basic_module.o $(BUILD)/field_constants_module.o $(BUILD)/field_defaults_module.o $(BUILD)/host_alloc_module.o $(BUILD)/oml_mod.o
	$(FC) -o $(BUILD)/field_4lm_module.o -c $(SRC)/field_4lm_module.F90

$(BUILD)/field_4rd_data_module.o: $(BOOT) $(SRC)/field_4rd_data_module.F90 $(BUILD)/field_abort_module.o $(BUILD)/field_constants_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_4rd_data_module.o -c $(SRC)/field_4rd_data_module.F90

$(BUILD)/field_4rd_factory_module.o: $(BOOT) $(SRC)/field_4rd_factory_module.F90 $(BUILD)/field_3rd_module.o $(BUILD)/field_4rd_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_4rd_factory_module.o -c $(SRC)/field_4rd_factory_module.F90

$(BUILD)/field_4rd_module.o: $(BOOT) $(SRC)/field_4rd_module.F90 $(BUILD)/dev_alloc_module.o $(BUILD)/field_4rd_data_module.o $(BUILD)/field_basic_module.o $(BUILD)/field_constants_module.o $(BUILD)/field_defaults_module.o $(BUILD)/host_alloc_module.o $(BUILD)/oml_mod.o
	$(FC) -o $(BUILD)/field_4rd_module.o -c $(SRC)/field_4rd_module.F90

$(BUILD)/field_4rm_data_module.o: $(BOOT) $(SRC)/field_4rm_data_module.F90 $(BUILD)/field_abort_module.o $(BUILD)/field_constants_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_4rm_data_module.o -c $(SRC)/field_4rm_data_module.F90

$(BUILD)/field_4rm_factory_module.o: $(BOOT) $(SRC)/field_4rm_factory_module.F90 $(BUILD)/field_3rm_module.o $(BUILD)/field_4rm_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_4rm_factory_module.o -c $(SRC)/field_4rm_factory_module.F90

$(BUILD)/field_4rm_module.o: $(BOOT) $(SRC)/field_4rm_module.F90 $(BUILD)/dev_alloc_module.o $(BUILD)/field_4rm_data_module.o $(BUILD)/field_basic_module.o $(BUILD)/field_constants_module.o $(BUILD)/field_defaults_module.o $(BUILD)/host_alloc_module.o $(BUILD)/oml_mod.o
	$(FC) -o $(BUILD)/field_4rm_module.o -c $(SRC)/field_4rm_module.F90

$(BUILD)/field_5im_data_module.o: $(BOOT) $(SRC)/field_5im_data_module.F90 $(BUILD)/field_abort_module.o $(BUILD)/field_constants_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_5im_data_module.o -c $(SRC)/field_5im_data_module.F90

$(BUILD)/field_5im_factory_module.o: $(BOOT) $(SRC)/field_5im_factory_module.F90 $(BUILD)/field_4im_module.o $(BUILD)/field_5im_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_5im_factory_module.o -c $(SRC)/field_5im_factory_module.F90

$(BUILD)/field_5im_module.o: $(BOOT) $(SRC)/field_5im_module.F90 $(BUILD)/dev_alloc_module.o $(BUILD)/field_5im_data_module.o $(BUILD)/field_basic_module.o $(BUILD)/field_constants_module.o $(BUILD)/field_defaults_module.o $(BUILD)/host_alloc_module.o $(BUILD)/oml_mod.o
	$(FC) -o $(BUILD)/field_5im_module.o -c $(SRC)/field_5im_module.F90

$(BUILD)/field_5lm_data_module.o: $(BOOT) $(SRC)/field_5lm_data_module.F90 $(BUILD)/field_abort_module.o $(BUILD)/field_constants_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_5lm_data_module.o -c $(SRC)/field_5lm_data_module.F90

$(BUILD)/field_5lm_factory_module.o: $(BOOT) $(SRC)/field_5lm_factory_module.F90 $(BUILD)/field_4lm_module.o $(BUILD)/field_5lm_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_5lm_factory_module.o -c $(SRC)/field_5lm_factory_module.F90

$(BUILD)/field_5lm_module.o: $(BOOT) $(SRC)/field_5lm_module.F90 $(BUILD)/dev_alloc_module.o $(BUILD)/field_5lm_data_module.o $(BUILD)/field_basic_module.o $(BUILD)/field_constants_module.o $(BUILD)/field_defaults_module.o $(BUILD)/host_alloc_module.o $(BUILD)/oml_mod.o
	$(FC) -o $(BUILD)/field_5lm_module.o -c $(SRC)/field_5lm_module.F90

$(BUILD)/field_5rd_data_module.o: $(BOOT) $(SRC)/field_5rd_data_module.F90 $(BUILD)/field_abort_module.o $(BUILD)/field_constants_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_5rd_data_module.o -c $(SRC)/field_5rd_data_module.F90

$(BUILD)/field_5rd_factory_module.o: $(BOOT) $(SRC)/field_5rd_factory_module.F90 $(BUILD)/field_4rd_module.o $(BUILD)/field_5rd_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_5rd_factory_module.o -c $(SRC)/field_5rd_factory_module.F90

$(BUILD)/field_5rd_module.o: $(BOOT) $(SRC)/field_5rd_module.F90 $(BUILD)/dev_alloc_module.o $(BUILD)/field_5rd_data_module.o $(BUILD)/field_basic_module.o $(BUILD)/field_constants_module.o $(BUILD)/field_defaults_module.o $(BUILD)/host_alloc_module.o $(BUILD)/oml_mod.o
	$(FC) -o $(BUILD)/field_5rd_module.o -c $(SRC)/field_5rd_module.F90

$(BUILD)/field_5rm_data_module.o: $(BOOT) $(SRC)/field_5rm_data_module.F90 $(BUILD)/field_abort_module.o $(BUILD)/field_constants_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_5rm_data_module.o -c $(SRC)/field_5rm_data_module.F90

$(BUILD)/field_5rm_factory_module.o: $(BOOT) $(SRC)/field_5rm_factory_module.F90 $(BUILD)/field_4rm_module.o $(BUILD)/field_5rm_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_5rm_factory_module.o -c $(SRC)/field_5rm_factory_module.F90

$(BUILD)/field_5rm_module.o: $(BOOT) $(SRC)/field_5rm_module.F90 $(BUILD)/dev_alloc_module.o $(BUILD)/field_5rm_data_module.o $(BUILD)/field_basic_module.o $(BUILD)/field_constants_module.o $(BUILD)/field_defaults_module.o $(BUILD)/host_alloc_module.o $(BUILD)/oml_mod.o
	$(FC) -o $(BUILD)/field_5rm_module.o -c $(SRC)/field_5rm_module.F90

$(BUILD)/field_abort_module.o: $(BOOT) $(SRC)/field_abort_module.F90 
	$(FC) -o $(BUILD)/field_abort_module.o -c $(SRC)/field_abort_module.F90

$(BUILD)/field_basic_module.o: $(BOOT) $(SRC)/field_basic_module.F90 $(BUILD)/dev_alloc_module.o $(BUILD)/field_constants_module.o
	$(FC) -o $(BUILD)/field_basic_module.o -c $(SRC)/field_basic_module.F90

$(BUILD)/field_constants_module.o: $(BOOT) $(SRC)/field_constants_module.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_constants_module.o -c $(SRC)/field_constants_module.F90

$(BUILD)/field_defaults_module.o: $(BOOT) $(SRC)/field_defaults_module.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_defaults_module.o -c $(SRC)/field_defaults_module.F90

$(BUILD)/field_factory_module.o: $(BOOT) $(SRC)/field_factory_module.F90 $(BUILD)/field_1im_factory_module.o $(BUILD)/field_1lm_factory_module.o $(BUILD)/field_1rd_factory_module.o $(BUILD)/field_1rm_factory_module.o $(BUILD)/field_2im_factory_module.o $(BUILD)/field_2lm_factory_module.o $(BUILD)/field_2rd_factory_module.o $(BUILD)/field_2rm_factory_module.o $(BUILD)/field_3im_factory_module.o $(BUILD)/field_3lm_factory_module.o $(BUILD)/field_3rd_factory_module.o $(BUILD)/field_3rm_factory_module.o $(BUILD)/field_4im_factory_module.o $(BUILD)/field_4lm_factory_module.o $(BUILD)/field_4rd_factory_module.o $(BUILD)/field_4rm_factory_module.o $(BUILD)/field_5im_factory_module.o $(BUILD)/field_5lm_factory_module.o $(BUILD)/field_5rd_factory_module.o $(BUILD)/field_5rm_factory_module.o $(BUILD)/host_alloc_module.o
	$(FC) -o $(BUILD)/field_factory_module.o -c $(SRC)/field_factory_module.F90

$(BUILD)/field_module.o: $(BOOT) $(SRC)/field_module.F90 $(BUILD)/field_1im_module.o $(BUILD)/field_1lm_module.o $(BUILD)/field_1rd_module.o $(BUILD)/field_1rm_module.o $(BUILD)/field_2im_module.o $(BUILD)/field_2lm_module.o $(BUILD)/field_2rd_module.o $(BUILD)/field_2rm_module.o $(BUILD)/field_3im_module.o $(BUILD)/field_3lm_module.o $(BUILD)/field_3rd_module.o $(BUILD)/field_3rm_module.o $(BUILD)/field_4im_module.o $(BUILD)/field_4lm_module.o $(BUILD)/field_4rd_module.o $(BUILD)/field_4rm_module.o $(BUILD)/field_5im_module.o $(BUILD)/field_5lm_module.o $(BUILD)/field_5rd_module.o $(BUILD)/field_5rm_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_module.o -c $(SRC)/field_module.F90

$(BUILD)/field_statistics_module.o: $(BOOT) $(SRC)/field_statistics_module.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/field_statistics_module.o -c $(SRC)/field_statistics_module.F90

$(BUILD)/field_variables_mod.o: $(BOOT) $(SRC)/field_variables_mod.F90 $(BUILD)/parkind1.o $(BUILD)/variable_module.o $(BUILD)/yomgfl.o $(BUILD)/yomgmv.o
	$(FC) -o $(BUILD)/field_variables_mod.o -c $(SRC)/field_variables_mod.F90

$(BUILD)/geometry_mod.o: $(BOOT) $(SRC)/geometry_mod.F90 $(BUILD)/parkind1.o $(BUILD)/type_geometry.o $(BUILD)/yomlun.o
	$(FC) -o $(BUILD)/geometry_mod.o -c $(SRC)/geometry_mod.F90

$(BUILD)/host_alloc_module.o: $(BOOT) $(SRC)/host_alloc_module.F90 $(BUILD)/field_abort_module.o $(BUILD)/field_defaults_module.o $(BUILD)/field_statistics_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/host_alloc_module.o -c $(SRC)/host_alloc_module.F90

$(BUILD)/oml_mod.o: $(BOOT) $(SRC)/oml_mod.F90 $(BUILD)/ec_lun.o $(BUILD)/ec_parkind.o
	$(FC) -o $(BUILD)/oml_mod.o -c $(SRC)/oml_mod.F90

$(BUILD)/par_gfl.o: $(BOOT) $(SRC)/par_gfl.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/par_gfl.o -c $(SRC)/par_gfl.F90

$(BUILD)/parkind1.o: $(BOOT) $(SRC)/parkind1.F90 
	$(FC) -o $(BUILD)/parkind1.o -c $(SRC)/parkind1.F90

$(BUILD)/type_geometry.o: $(BOOT) $(SRC)/type_geometry.F90 $(BUILD)/type_spgeom.o $(BUILD)/yemdim.o $(BUILD)/yemgeo.o $(BUILD)/yemgsl.o $(BUILD)/yemlap.o $(BUILD)/yemlbc_geo.o $(BUILD)/yemmp.o $(BUILD)/yomcsgeom.o $(BUILD)/yomcver.o $(BUILD)/yomdim.o $(BUILD)/yomdimv.o $(BUILD)/yomgem.o $(BUILD)/yomgeomvars.o $(BUILD)/yomgsgeom.o $(BUILD)/yomlap.o $(BUILD)/yomleg.o $(BUILD)/yommp.o $(BUILD)/yomorog.o $(BUILD)/yomsta.o $(BUILD)/yomvert.o
	$(FC) -o $(BUILD)/type_geometry.o -c $(SRC)/type_geometry.F90

$(BUILD)/type_gmvs.o: $(BOOT) $(SRC)/type_gmvs.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/type_gmvs.o -c $(SRC)/type_gmvs.F90

$(BUILD)/type_spgeom.o: $(BOOT) $(SRC)/type_spgeom.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/type_spgeom.o -c $(SRC)/type_spgeom.F90

$(BUILD)/util_field_variables_copy_mod.o: $(BOOT) $(SRC)/util_field_variables_copy_mod.F90 $(BUILD)/field_variables_mod.o $(BUILD)/util_variable_2rb_mod.o $(BUILD)/util_variable_3rb_mod.o
	/usr/bin/time -f 'mem=%Mkb'  $(FC) -o $(BUILD)/util_field_variables_copy_mod.o -c $(SRC)/util_field_variables_copy_mod.F90

$(BUILD)/util_variable_2rb_copy_mod.o: $(BOOT) $(SRC)/util_variable_2rb_copy_mod.F90 $(BUILD)/variable_module.o
	$(FC) -o $(BUILD)/util_variable_2rb_copy_mod.o -c $(SRC)/util_variable_2rb_copy_mod.F90

$(BUILD)/util_variable_2rb_crc64_mod.o: $(BOOT) $(SRC)/util_variable_2rb_crc64_mod.F90 $(BUILD)/variable_module.o
	$(FC) -o $(BUILD)/util_variable_2rb_crc64_mod.o -c $(SRC)/util_variable_2rb_crc64_mod.F90

$(BUILD)/util_variable_2rb_host_mod.o: $(BOOT) $(SRC)/util_variable_2rb_host_mod.F90 $(BUILD)/variable_module.o
	$(FC) -o $(BUILD)/util_variable_2rb_host_mod.o -c $(SRC)/util_variable_2rb_host_mod.F90

$(BUILD)/util_variable_2rb_legacy_mod.o: $(BOOT) $(SRC)/util_variable_2rb_legacy_mod.F90 $(BUILD)/variable_module.o
	$(FC) -o $(BUILD)/util_variable_2rb_legacy_mod.o -c $(SRC)/util_variable_2rb_legacy_mod.F90

$(BUILD)/util_variable_2rb_mod.o: $(BOOT) $(SRC)/util_variable_2rb_mod.F90 $(BUILD)/util_variable_2rb_copy_mod.o $(BUILD)/util_variable_2rb_crc64_mod.o $(BUILD)/util_variable_2rb_host_mod.o $(BUILD)/util_variable_2rb_legacy_mod.o $(BUILD)/util_variable_2rb_size_mod.o $(BUILD)/util_variable_2rb_wipe_mod.o $(BUILD)/variable_module.o
	$(FC) -o $(BUILD)/util_variable_2rb_mod.o -c $(SRC)/util_variable_2rb_mod.F90

$(BUILD)/util_variable_2rb_size_mod.o: $(BOOT) $(SRC)/util_variable_2rb_size_mod.F90 $(BUILD)/variable_module.o
	$(FC) -o $(BUILD)/util_variable_2rb_size_mod.o -c $(SRC)/util_variable_2rb_size_mod.F90

$(BUILD)/util_variable_2rb_wipe_mod.o: $(BOOT) $(SRC)/util_variable_2rb_wipe_mod.F90 $(BUILD)/variable_module.o
	$(FC) -o $(BUILD)/util_variable_2rb_wipe_mod.o -c $(SRC)/util_variable_2rb_wipe_mod.F90

$(BUILD)/util_variable_3rb_copy_mod.o: $(BOOT) $(SRC)/util_variable_3rb_copy_mod.F90 $(BUILD)/variable_module.o
	$(FC) -o $(BUILD)/util_variable_3rb_copy_mod.o -c $(SRC)/util_variable_3rb_copy_mod.F90

$(BUILD)/util_variable_3rb_crc64_mod.o: $(BOOT) $(SRC)/util_variable_3rb_crc64_mod.F90 $(BUILD)/variable_module.o
	$(FC) -o $(BUILD)/util_variable_3rb_crc64_mod.o -c $(SRC)/util_variable_3rb_crc64_mod.F90

$(BUILD)/util_variable_3rb_host_mod.o: $(BOOT) $(SRC)/util_variable_3rb_host_mod.F90 $(BUILD)/variable_module.o
	$(FC) -o $(BUILD)/util_variable_3rb_host_mod.o -c $(SRC)/util_variable_3rb_host_mod.F90

$(BUILD)/util_variable_3rb_legacy_mod.o: $(BOOT) $(SRC)/util_variable_3rb_legacy_mod.F90 $(BUILD)/variable_module.o
	$(FC) -o $(BUILD)/util_variable_3rb_legacy_mod.o -c $(SRC)/util_variable_3rb_legacy_mod.F90

$(BUILD)/util_variable_3rb_mod.o: $(BOOT) $(SRC)/util_variable_3rb_mod.F90 $(BUILD)/util_variable_3rb_copy_mod.o $(BUILD)/util_variable_3rb_crc64_mod.o $(BUILD)/util_variable_3rb_host_mod.o $(BUILD)/util_variable_3rb_legacy_mod.o $(BUILD)/util_variable_3rb_size_mod.o $(BUILD)/util_variable_3rb_wipe_mod.o $(BUILD)/variable_module.o
	$(FC) -o $(BUILD)/util_variable_3rb_mod.o -c $(SRC)/util_variable_3rb_mod.F90

$(BUILD)/util_variable_3rb_size_mod.o: $(BOOT) $(SRC)/util_variable_3rb_size_mod.F90 $(BUILD)/variable_module.o
	$(FC) -o $(BUILD)/util_variable_3rb_size_mod.o -c $(SRC)/util_variable_3rb_size_mod.F90

$(BUILD)/util_variable_3rb_wipe_mod.o: $(BOOT) $(SRC)/util_variable_3rb_wipe_mod.F90 $(BUILD)/variable_module.o
	$(FC) -o $(BUILD)/util_variable_3rb_wipe_mod.o -c $(SRC)/util_variable_3rb_wipe_mod.F90

$(BUILD)/variable_module.o: $(BOOT) $(SRC)/variable_module.F90 $(BUILD)/field_module.o $(BUILD)/parkind1.o $(BUILD)/yom_ygfl.o
	$(FC) -o $(BUILD)/variable_module.o -c $(SRC)/variable_module.F90

$(BUILD)/yemdim.o: $(BOOT) $(SRC)/yemdim.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yemdim.o -c $(SRC)/yemdim.F90

$(BUILD)/yemgeo.o: $(BOOT) $(SRC)/yemgeo.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yemgeo.o -c $(SRC)/yemgeo.F90

$(BUILD)/yemgsl.o: $(BOOT) $(SRC)/yemgsl.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yemgsl.o -c $(SRC)/yemgsl.F90

$(BUILD)/yemlap.o: $(BOOT) $(SRC)/yemlap.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yemlap.o -c $(SRC)/yemlap.F90

$(BUILD)/yemlbc_geo.o: $(BOOT) $(SRC)/yemlbc_geo.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yemlbc_geo.o -c $(SRC)/yemlbc_geo.F90

$(BUILD)/yemmp.o: $(BOOT) $(SRC)/yemmp.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yemmp.o -c $(SRC)/yemmp.F90

$(BUILD)/yoe_aerodiag.o: $(BOOT) $(SRC)/yoe_aerodiag.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoe_aerodiag.o -c $(SRC)/yoe_aerodiag.F90

$(BUILD)/yom_ygfl.o: $(BOOT) $(SRC)/yom_ygfl.F90 $(BUILD)/parkind1.o $(BUILD)/par_gfl.o $(BUILD)/yoe_aerodiag.o
	$(FC) -o $(BUILD)/yom_ygfl.o -c $(SRC)/yom_ygfl.F90

$(BUILD)/yomcsgeom.o: $(BOOT) $(SRC)/yomcsgeom.F90 $(BUILD)/deallocate_if_associated_mod.o $(BUILD)/parkind1.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/yomcsgeom.o -c $(SRC)/yomcsgeom.F90

$(BUILD)/yomct0.o: $(BOOT) $(SRC)/yomct0.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomct0.o -c $(SRC)/yomct0.F90

$(BUILD)/yomcver.o: $(BOOT) $(SRC)/yomcver.F90 $(BUILD)/parkind1.o $(BUILD)/yomct0.o $(BUILD)/yomhook.o $(BUILD)/yomlun.o
	$(FC) -o $(BUILD)/yomcver.o -c $(SRC)/yomcver.F90

$(BUILD)/yomdim.o: $(BOOT) $(SRC)/yomdim.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomdim.o -c $(SRC)/yomdim.F90

$(BUILD)/yomdimv.o: $(BOOT) $(SRC)/yomdimv.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomdimv.o -c $(SRC)/yomdimv.F90

$(BUILD)/yomgem.o: $(BOOT) $(SRC)/yomgem.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomgem.o -c $(SRC)/yomgem.F90

$(BUILD)/yomgeomvars.o: $(BOOT) $(SRC)/yomgeomvars.F90 $(BUILD)/field_2rd_factory_module.o $(BUILD)/field_factory_module.o $(BUILD)/field_module.o $(BUILD)/parkind1.o $(BUILD)/yomcsgeom.o $(BUILD)/yomgsgeom.o $(BUILD)/yomorog.o
	$(FC) -o $(BUILD)/yomgeomvars.o -c $(SRC)/yomgeomvars.F90

$(BUILD)/yomgfl.o: $(BOOT) $(SRC)/yomgfl.F90 $(BUILD)/geometry_mod.o $(BUILD)/parkind1.o $(BUILD)/yom_ygfl.o
	$(FC) -o $(BUILD)/yomgfl.o -c $(SRC)/yomgfl.F90

$(BUILD)/yomgmv.o: $(BOOT) $(SRC)/yomgmv.F90 $(BUILD)/geometry_mod.o $(BUILD)/parkind1.o $(BUILD)/type_gmvs.o $(BUILD)/yomlun.o
	$(FC) -o $(BUILD)/yomgmv.o -c $(SRC)/yomgmv.F90

$(BUILD)/yomgsgeom.o: $(BOOT) $(SRC)/yomgsgeom.F90 $(BUILD)/deallocate_if_associated_mod.o $(BUILD)/parkind1.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/yomgsgeom.o -c $(SRC)/yomgsgeom.F90

$(BUILD)/yomhook.o: $(BOOT) $(SRC)/yomhook.F90 $(BUILD)/ec_parkind.o
	$(FC) -o $(BUILD)/yomhook.o -c $(SRC)/yomhook.F90

$(BUILD)/yomlap.o: $(BOOT) $(SRC)/yomlap.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomlap.o -c $(SRC)/yomlap.F90

$(BUILD)/yomleg.o: $(BOOT) $(SRC)/yomleg.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomleg.o -c $(SRC)/yomleg.F90

$(BUILD)/yomlun.o: $(BOOT) $(SRC)/yomlun.F90 $(BUILD)/parkind1.o $(BUILD)/yomlun_ifsaux.o
	$(FC) -o $(BUILD)/yomlun.o -c $(SRC)/yomlun.F90

$(BUILD)/yomlun_ifsaux.o: $(BOOT) $(SRC)/yomlun_ifsaux.F90 $(BUILD)/ec_lun.o
	$(FC) -o $(BUILD)/yomlun_ifsaux.o -c $(SRC)/yomlun_ifsaux.F90

$(BUILD)/yommp.o: $(BOOT) $(SRC)/yommp.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yommp.o -c $(SRC)/yommp.F90

$(BUILD)/yomorog.o: $(BOOT) $(SRC)/yomorog.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomorog.o -c $(SRC)/yomorog.F90

$(BUILD)/yomsta.o: $(BOOT) $(SRC)/yomsta.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomsta.o -c $(SRC)/yomsta.F90

$(BUILD)/yomvert.o: $(BOOT) $(SRC)/yomvert.F90 $(BUILD)/parkind1.o $(BUILD)/yomcver.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/yomvert.o -c $(SRC)/yomvert.F90


exe: 

subclean:
	\rm -f 

clean: 
	\rm -f $(BUILD)/*.o $(BUILD)/*.xml $(BUILD)/*.a $(BUILD)/*.x $(BUILD)/*.mod $(BUILD)/*.optrpt $(BUILD)/*.smod $(BUILD)/*.ok $(BUILD)/*.optrpt

tidy:
	\rm -f $(BUILD)/*.xml $(BUILD)/*.optrpt
