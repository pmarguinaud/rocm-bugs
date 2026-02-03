
all: cptend_new_manyblocks.o

ifeq ($(SRC), )
SRC=.
endif

ifeq ($(BUILD), )
BUILD=.
endif

all: exe

include Makefile.inc

$(BUILD)/cptend_new_manyblocks.intfb.ok: $(BUILD)/cptend_new_manyblocks.intfb.h $(BUILD)/parkind1.o $(BUILD)/type_model.o $(BUILD)/yomcst.o
	touch $(BUILD)/cptend_new_manyblocks.intfb.ok

$(BUILD)/fcttrm.func.ok: $(SRC)/fcttrm.func.h 
	touch $(BUILD)/fcttrm.func.ok

$(BUILD)/bytes_io_mod.o: $(BOOT) $(SRC)/bytes_io_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_module.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/bytes_io_mod.o -c $(SRC)/bytes_io_mod.F90

$(BUILD)/cplng_types_mod.o: $(BOOT) $(SRC)/cplng_types_mod.F90 $(BUILD)/parkind1.o $(BUILD)/parkind_ocean.o
	$(FC) -o $(BUILD)/cplng_types_mod.o -c $(SRC)/cplng_types_mod.F90

$(BUILD)/cptend_new_manyblocks.o: $(BOOT) $(SRC)/cptend_new_manyblocks.F90 $(BUILD)/parkind1.o $(BUILD)/type_model.o $(BUILD)/yomcst.o fcttrm.func.ok
	$(FC) -o $(BUILD)/cptend_new_manyblocks.o -c $(SRC)/cptend_new_manyblocks.F90

$(BUILD)/deallocate_if_associated_mod.o: $(BOOT) $(SRC)/deallocate_if_associated_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/deallocate_if_associated_mod.o -c $(SRC)/deallocate_if_associated_mod.F90

$(BUILD)/dev_alloc_module.o: $(BOOT) $(SRC)/dev_alloc_module.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/dev_alloc_module.o -c $(SRC)/dev_alloc_module.F90

$(BUILD)/drydep_par.o: $(BOOT) $(SRC)/drydep_par.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/drydep_par.o -c $(SRC)/drydep_par.F90

$(BUILD)/easy_netcdf.o: $(BOOT) $(SRC)/easy_netcdf.F90 $(BUILD)/netcdf.o $(BUILD)/parkind1.o $(BUILD)/radiation_io.o
	$(FC) -o $(BUILD)/easy_netcdf.o -c $(SRC)/easy_netcdf.F90

$(BUILD)/easy_netcdf_read_mpi.o: $(BOOT) $(SRC)/easy_netcdf_read_mpi.F90 $(BUILD)/easy_netcdf.o $(BUILD)/parkind1.o $(BUILD)/radiation_io.o
	$(FC) -o $(BUILD)/easy_netcdf_read_mpi.o -c $(SRC)/easy_netcdf_read_mpi.F90

$(BUILD)/ec_env_mod.o: $(BOOT) $(SRC)/ec_env_mod.F90 
	$(FC) -o $(BUILD)/ec_env_mod.o -c $(SRC)/ec_env_mod.F90

$(BUILD)/ec_lun.o: $(BOOT) $(SRC)/ec_lun.F90 $(BUILD)/ec_parkind.o
	$(FC) -o $(BUILD)/ec_lun.o -c $(SRC)/ec_lun.F90

$(BUILD)/ec_parkind.o: $(BOOT) $(SRC)/ec_parkind.F90 
	$(FC) -o $(BUILD)/ec_parkind.o -c $(SRC)/ec_parkind.F90

$(BUILD)/eint_mod.o: $(BOOT) $(SRC)/eint_mod.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/eint_mod.o -c $(SRC)/eint_mod.F90

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

$(BUILD)/geometry_mod.o: $(BOOT) $(SRC)/geometry_mod.F90 $(BUILD)/parkind1.o $(BUILD)/type_geometry.o $(BUILD)/yomlun.o
	$(FC) -o $(BUILD)/geometry_mod.o -c $(SRC)/geometry_mod.F90

$(BUILD)/gridpoint_fields_mix.o: $(BOOT) $(SRC)/gridpoint_fields_mix.F90 $(BUILD)/geometry_mod.o $(BUILD)/parkind1.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/gridpoint_fields_mix.o -c $(SRC)/gridpoint_fields_mix.F90

$(BUILD)/host_alloc_module.o: $(BOOT) $(SRC)/host_alloc_module.F90 $(BUILD)/field_abort_module.o $(BUILD)/field_defaults_module.o $(BUILD)/field_statistics_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/host_alloc_module.o -c $(SRC)/host_alloc_module.F90

$(BUILD)/intdyn_mod.o: $(BOOT) $(SRC)/intdyn_mod.F90 $(BUILD)/geometry_mod.o $(BUILD)/parkind1.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/intdyn_mod.o -c $(SRC)/intdyn_mod.F90

$(BUILD)/intdynsl_mod.o: $(BOOT) $(SRC)/intdynsl_mod.F90 $(BUILD)/parkind1.o $(BUILD)/yomdyn.o $(BUILD)/yomdyna.o $(BUILD)/yomhook.o $(BUILD)/yom_ygfl.o
	$(FC) -o $(BUILD)/intdynsl_mod.o -c $(SRC)/intdynsl_mod.F90

$(BUILD)/modd_budget.o: $(BOOT) $(SRC)/modd_budget.F90 $(BUILD)/modd_dimphyex.o
	$(FC) -o $(BUILD)/modd_budget.o -c $(SRC)/modd_budget.F90

$(BUILD)/modd_cloudpar_n.o: $(BOOT) $(SRC)/modd_cloudpar_n.F90 $(BUILD)/modd_parameters.o
	$(FC) -o $(BUILD)/modd_cloudpar_n.o -c $(SRC)/modd_cloudpar_n.F90

$(BUILD)/modd_convpar.o: $(BOOT) $(SRC)/modd_convpar.F90 
	$(FC) -o $(BUILD)/modd_convpar.o -c $(SRC)/modd_convpar.F90

$(BUILD)/modd_convpar_shal.o: $(BOOT) $(SRC)/modd_convpar_shal.F90 
	$(FC) -o $(BUILD)/modd_convpar_shal.o -c $(SRC)/modd_convpar_shal.F90

$(BUILD)/modd_convparext.o: $(BOOT) $(SRC)/modd_convparext.F90 
	$(FC) -o $(BUILD)/modd_convparext.o -c $(SRC)/modd_convparext.F90

$(BUILD)/modd_cst.o: $(BOOT) $(SRC)/modd_cst.F90 
	$(FC) -o $(BUILD)/modd_cst.o -c $(SRC)/modd_cst.F90

$(BUILD)/modd_cturb.o: $(BOOT) $(SRC)/modd_cturb.F90 
	$(FC) -o $(BUILD)/modd_cturb.o -c $(SRC)/modd_cturb.F90

$(BUILD)/modd_dimphyex.o: $(BOOT) $(SRC)/modd_dimphyex.F90 
	$(FC) -o $(BUILD)/modd_dimphyex.o -c $(SRC)/modd_dimphyex.F90

$(BUILD)/modd_elec_descr.o: $(BOOT) $(SRC)/modd_elec_descr.F90 $(BUILD)/modd_parameters.o
	$(FC) -o $(BUILD)/modd_elec_descr.o -c $(SRC)/modd_elec_descr.F90

$(BUILD)/modd_elec_param.o: $(BOOT) $(SRC)/modd_elec_param.F90 $(BUILD)/modd_parameters.o
	$(FC) -o $(BUILD)/modd_elec_param.o -c $(SRC)/modd_elec_param.F90

$(BUILD)/modd_field.o: $(BOOT) $(SRC)/modd_field.F90 $(BUILD)/modd_parameters.o
	$(FC) -o $(BUILD)/modd_field.o -c $(SRC)/modd_field.F90

$(BUILD)/modd_io.o: $(BOOT) $(SRC)/modd_io.F90 $(BUILD)/modd_parameters.o
	$(FC) -o $(BUILD)/modd_io.o -c $(SRC)/modd_io.F90

$(BUILD)/modd_misc.o: $(BOOT) $(SRC)/modd_misc.F90 $(BUILD)/modd_budget.o
	$(FC) -o $(BUILD)/modd_misc.o -c $(SRC)/modd_misc.F90

$(BUILD)/modd_neb_n.o: $(BOOT) $(SRC)/modd_neb_n.F90 $(BUILD)/modd_io.o $(BUILD)/modd_parameters.o
	$(FC) -o $(BUILD)/modd_neb_n.o -c $(SRC)/modd_neb_n.F90

$(BUILD)/modd_nsv.o: $(BOOT) $(SRC)/modd_nsv.F90 $(BUILD)/modd_field.o $(BUILD)/modd_parameters.o
	$(FC) -o $(BUILD)/modd_nsv.o -c $(SRC)/modd_nsv.F90

$(BUILD)/modd_param_ice_n.o: $(BOOT) $(SRC)/modd_param_ice_n.F90 $(BUILD)/modd_io.o $(BUILD)/modd_parameters.o
	$(FC) -o $(BUILD)/modd_param_ice_n.o -c $(SRC)/modd_param_ice_n.F90

$(BUILD)/modd_param_lima.o: $(BOOT) $(SRC)/modd_param_lima.F90 $(BUILD)/modd_io.o $(BUILD)/modd_parameters.o
	$(FC) -o $(BUILD)/modd_param_lima.o -c $(SRC)/modd_param_lima.F90

$(BUILD)/modd_param_lima_cold.o: $(BOOT) $(SRC)/modd_param_lima_cold.F90 $(BUILD)/modd_parameters.o
	$(FC) -o $(BUILD)/modd_param_lima_cold.o -c $(SRC)/modd_param_lima_cold.F90

$(BUILD)/modd_param_lima_mixed.o: $(BOOT) $(SRC)/modd_param_lima_mixed.F90 
	$(FC) -o $(BUILD)/modd_param_lima_mixed.o -c $(SRC)/modd_param_lima_mixed.F90

$(BUILD)/modd_param_lima_warm.o: $(BOOT) $(SRC)/modd_param_lima_warm.F90 $(BUILD)/modd_parameters.o
	$(FC) -o $(BUILD)/modd_param_lima_warm.o -c $(SRC)/modd_param_lima_warm.F90

$(BUILD)/modd_param_mfshall_n.o: $(BOOT) $(SRC)/modd_param_mfshall_n.F90 $(BUILD)/modd_io.o $(BUILD)/modd_parameters.o
	$(FC) -o $(BUILD)/modd_param_mfshall_n.o -c $(SRC)/modd_param_mfshall_n.F90

$(BUILD)/modd_parameters.o: $(BOOT) $(SRC)/modd_parameters.F90 
	$(FC) -o $(BUILD)/modd_parameters.o -c $(SRC)/modd_parameters.F90

$(BUILD)/modd_phyex.o: $(BOOT) $(SRC)/modd_phyex.F90 $(BUILD)/modd_cloudpar_n.o $(BUILD)/modd_cst.o $(BUILD)/modd_cturb.o $(BUILD)/modd_elec_descr.o $(BUILD)/modd_elec_param.o $(BUILD)/modd_misc.o $(BUILD)/modd_neb_n.o $(BUILD)/modd_nsv.o $(BUILD)/modd_param_ice_n.o $(BUILD)/modd_param_lima.o $(BUILD)/modd_param_lima_cold.o $(BUILD)/modd_param_lima_mixed.o $(BUILD)/modd_param_lima_warm.o $(BUILD)/modd_param_mfshall_n.o $(BUILD)/modd_rain_ice_descr_n.o $(BUILD)/modd_rain_ice_param_n.o $(BUILD)/modd_turb_n.o
	$(FC) -o $(BUILD)/modd_phyex.o -c $(SRC)/modd_phyex.F90

$(BUILD)/modd_rain_ice_descr_n.o: $(BOOT) $(SRC)/modd_rain_ice_descr_n.F90 $(BUILD)/modd_parameters.o
	$(FC) -o $(BUILD)/modd_rain_ice_descr_n.o -c $(SRC)/modd_rain_ice_descr_n.F90

$(BUILD)/modd_rain_ice_param_n.o: $(BOOT) $(SRC)/modd_rain_ice_param_n.F90 $(BUILD)/modd_parameters.o $(BUILD)/modd_tiwmx.o
	$(FC) -o $(BUILD)/modd_rain_ice_param_n.o -c $(SRC)/modd_rain_ice_param_n.F90

$(BUILD)/modd_tiwmx.o: $(BOOT) $(SRC)/modd_tiwmx.F90 
	$(FC) -o $(BUILD)/modd_tiwmx.o -c $(SRC)/modd_tiwmx.F90

$(BUILD)/modd_turb_n.o: $(BOOT) $(SRC)/modd_turb_n.F90 $(BUILD)/modd_io.o $(BUILD)/modd_parameters.o
	$(FC) -o $(BUILD)/modd_turb_n.o -c $(SRC)/modd_turb_n.F90

$(BUILD)/model_atmos_ocean_coupling_mod.o: $(BOOT) $(SRC)/model_atmos_ocean_coupling_mod.F90 $(BUILD)/yomcom.o $(BUILD)/yomcou.o $(BUILD)/yommcc.o
	$(FC) -o $(BUILD)/model_atmos_ocean_coupling_mod.o -c $(SRC)/model_atmos_ocean_coupling_mod.F90

$(BUILD)/model_chem_mod.o: $(BOOT) $(SRC)/model_chem_mod.F90 $(BUILD)/drydep_par.o $(BUILD)/yomchem.o $(BUILD)/yomcompo.o $(BUILD)/yomozo.o
	$(FC) -o $(BUILD)/model_chem_mod.o -c $(SRC)/model_chem_mod.F90

$(BUILD)/model_diagnostics_mod.o: $(BOOT) $(SRC)/model_diagnostics_mod.F90 $(BUILD)/yomcddh.o $(BUILD)/yomlddh.o $(BUILD)/yommddh.o $(BUILD)/yomsddh.o
	$(FC) -o $(BUILD)/model_diagnostics_mod.o -c $(SRC)/model_diagnostics_mod.F90

$(BUILD)/model_dynamics_mod.o: $(BOOT) $(SRC)/model_dynamics_mod.F90 $(BUILD)/eint_mod.o $(BUILD)/intdynsl_mod.o $(BUILD)/ptrgppc.o $(BUILD)/ptrslb1.o $(BUILD)/ptrslb15.o $(BUILD)/ptrslb2.o $(BUILD)/spng_mod.o $(BUILD)/yemdyn.o $(BUILD)/yomdyn.o $(BUILD)/yomdyna.o $(BUILD)/yomslint.o $(BUILD)/yomslrep.o $(BUILD)/yomtnh.o
	$(FC) -o $(BUILD)/model_dynamics_mod.o -c $(SRC)/model_dynamics_mod.F90

$(BUILD)/model_general_conf_mod.o: $(BOOT) $(SRC)/model_general_conf_mod.F90 $(BUILD)/spp_mod.o $(BUILD)/type_geometry.o $(BUILD)/yomdimf.o $(BUILD)/yomhook.o $(BUILD)/yommoderrmod.o $(BUILD)/yomrip.o $(BUILD)/yomspsdt.o $(BUILD)/yom_ygfl.o
	$(FC) -o $(BUILD)/model_general_conf_mod.o -c $(SRC)/model_general_conf_mod.F90

$(BUILD)/model_physics_aerosol_mod.o: $(BOOT) $(SRC)/model_physics_aerosol_mod.F90 $(BUILD)/yoeaerlid.o $(BUILD)/yoeaermap.o $(BUILD)/yoeaersnk.o $(BUILD)/yoeaersrc.o $(BUILD)/yoeaervol.o $(BUILD)/yoedbug.o
	$(FC) -o $(BUILD)/model_physics_aerosol_mod.o -c $(SRC)/model_physics_aerosol_mod.F90

$(BUILD)/model_physics_ecmwf_mod.o: $(BOOT) $(SRC)/model_physics_ecmwf_mod.F90 $(BUILD)/yoecld.o $(BUILD)/yoecldp.o $(BUILD)/yoecnd.o $(BUILD)/yoecumf.o $(BUILD)/yoegwd.o $(BUILD)/yoegwwms.o $(BUILD)/yoephy.o $(BUILD)/yoethf.o $(BUILD)/yoe_cuconvca.o
	$(FC) -o $(BUILD)/model_physics_ecmwf_mod.o -c $(SRC)/model_physics_ecmwf_mod.F90

$(BUILD)/model_physics_forcing_mod.o: $(BOOT) $(SRC)/model_physics_forcing_mod.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/model_physics_forcing_mod.o -c $(SRC)/model_physics_forcing_mod.F90

$(BUILD)/model_physics_general_mod.o: $(BOOT) $(SRC)/model_physics_general_mod.F90 $(BUILD)/yoevdf.o $(BUILD)/yomdphy.o $(BUILD)/yomslphy.o
	$(FC) -o $(BUILD)/model_physics_general_mod.o -c $(SRC)/model_physics_general_mod.F90

$(BUILD)/model_physics_mf_mod.o: $(BOOT) $(SRC)/model_physics_mf_mod.F90 $(BUILD)/eint_mod.o $(BUILD)/type_aero.o $(BUILD)/yoaiop.o $(BUILD)/yomaero.o $(BUILD)/yomarphy.o $(BUILD)/yomcvmnh.o $(BUILD)/yomdgradient.o $(BUILD)/yomlouis.o $(BUILD)/yommse.o $(BUILD)/yomnorgwd.o $(BUILD)/yomnrtaer.o $(BUILD)/yomparar.o $(BUILD)/yomphy.o $(BUILD)/yomphy0.o $(BUILD)/yomphy1.o $(BUILD)/yomphy2.o $(BUILD)/yomphy3.o $(BUILD)/yomphyds.o $(BUILD)/yomsimphl.o $(BUILD)/yomtoph.o $(BUILD)/yomvdoz.o $(BUILD)/yomwindfarm.o
	$(FC) -o $(BUILD)/model_physics_mf_mod.o -c $(SRC)/model_physics_mf_mod.F90

$(BUILD)/model_physics_radiation_mod.o: $(BOOT) $(SRC)/model_physics_radiation_mod.F90 $(BUILD)/eint_mod.o $(BUILD)/parkind1.o $(BUILD)/yoeaeratm.o $(BUILD)/yoeaerd.o $(BUILD)/yoelwrad.o $(BUILD)/yoeneur.o $(BUILD)/yoeovlp.o $(BUILD)/yoerad.o $(BUILD)/yoeradiation.o $(BUILD)/yoerdi.o $(BUILD)/yoerip.o $(BUILD)/yoesw.o $(BUILD)/yoe_mcica.o $(BUILD)/yoe_uvrad.o $(BUILD)/yomgsgeom.o $(BUILD)/yomhook.o $(BUILD)/yomprad.o $(BUILD)/yomrcoef.o
	$(FC) -o $(BUILD)/model_physics_radiation_mod.o -c $(SRC)/model_physics_radiation_mod.F90

$(BUILD)/model_physics_scm_mod.o: $(BOOT) $(SRC)/model_physics_scm_mod.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/model_physics_scm_mod.o -c $(SRC)/model_physics_scm_mod.F90

$(BUILD)/model_physics_simplinear_mod.o: $(BOOT) $(SRC)/model_physics_simplinear_mod.F90 $(BUILD)/yoecumf2.o $(BUILD)/yoegwdwms.o $(BUILD)/yoephli.o $(BUILD)/yomcumfs.o $(BUILD)/yomncl.o $(BUILD)/yomsphyhist.o $(BUILD)/yomsrftlad.o $(BUILD)/yophlc.o $(BUILD)/yophnc.o
	$(FC) -o $(BUILD)/model_physics_simplinear_mod.o -c $(SRC)/model_physics_simplinear_mod.F90

$(BUILD)/model_physics_stochast_mod.o: $(BOOT) $(SRC)/model_physics_stochast_mod.F90 $(BUILD)/stoph_mix.o $(BUILD)/yompertpar.o $(BUILD)/yomrandom_streams.o
	$(FC) -o $(BUILD)/model_physics_stochast_mod.o -c $(SRC)/model_physics_stochast_mod.F90

$(BUILD)/mpl_abort_mod.o: $(BOOT) $(SRC)/mpl_abort_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_mpif.o $(BUILD)/oml_mod.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/mpl_abort_mod.o -c $(SRC)/mpl_abort_mod.F90

$(BUILD)/mpl_allgather_mod.o: $(BOOT) $(SRC)/mpl_allgather_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_barrier_mod.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_message_mod.o $(BUILD)/mpl_mpif.o $(BUILD)/mpl_recv_mod.o $(BUILD)/mpl_send_mod.o
	$(FC) -o $(BUILD)/mpl_allgather_mod.o -c $(SRC)/mpl_allgather_mod.F90

$(BUILD)/mpl_allgatherv_mod.o: $(BOOT) $(SRC)/mpl_allgatherv_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_barrier_mod.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_message_mod.o $(BUILD)/mpl_mpif.o $(BUILD)/mpl_recv_mod.o $(BUILD)/mpl_send_mod.o $(BUILD)/mpl_stats_mod.o $(BUILD)/oml_mod.o $(BUILD)/yommplstats.o
	$(FC) -o $(BUILD)/mpl_allgatherv_mod.o -c $(SRC)/mpl_allgatherv_mod.F90

$(BUILD)/mpl_allreduce_mod.o: $(BOOT) $(SRC)/mpl_allreduce_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_broadcast_mod.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_message_mod.o $(BUILD)/mpl_mpif.o $(BUILD)/mpl_recv_mod.o $(BUILD)/mpl_send_mod.o $(BUILD)/mpl_stats_mod.o $(BUILD)/mpl_wait_mod.o $(BUILD)/oml_mod.o $(BUILD)/yommplstats.o
	$(FC) -o $(BUILD)/mpl_allreduce_mod.o -c $(SRC)/mpl_allreduce_mod.F90

$(BUILD)/mpl_alltoallv_mod.o: $(BOOT) $(SRC)/mpl_alltoallv_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_message_mod.o $(BUILD)/mpl_mpif.o $(BUILD)/mpl_stats_mod.o $(BUILD)/mpl_wait_mod.o $(BUILD)/oml_mod.o $(BUILD)/yommplstats.o
	$(FC) -o $(BUILD)/mpl_alltoallv_mod.o -c $(SRC)/mpl_alltoallv_mod.F90

$(BUILD)/mpl_arg_mod.o: $(BOOT) $(SRC)/mpl_arg_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_mpif.o
	$(FC) -o $(BUILD)/mpl_arg_mod.o -c $(SRC)/mpl_arg_mod.F90

$(BUILD)/mpl_barrier_mod.o: $(BOOT) $(SRC)/mpl_barrier_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_message_mod.o $(BUILD)/oml_mod.o
	$(FC) -o $(BUILD)/mpl_barrier_mod.o -c $(SRC)/mpl_barrier_mod.F90

$(BUILD)/mpl_broadcast_mod.o: $(BOOT) $(SRC)/mpl_broadcast_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_barrier_mod.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_message_mod.o $(BUILD)/mpl_mpif.o $(BUILD)/mpl_myrank_mod.o $(BUILD)/mpl_recv_mod.o $(BUILD)/mpl_send_mod.o $(BUILD)/mpl_stats_mod.o $(BUILD)/oml_mod.o $(BUILD)/yommplstats.o
	$(FC) -o $(BUILD)/mpl_broadcast_mod.o -c $(SRC)/mpl_broadcast_mod.F90

$(BUILD)/mpl_buffer_method_mod.o: $(BOOT) $(SRC)/mpl_buffer_method_mod.F90 $(BUILD)/mpl_data_module.o $(BUILD)/mpl_message_mod.o
	$(FC) -o $(BUILD)/mpl_buffer_method_mod.o -c $(SRC)/mpl_buffer_method_mod.F90

$(BUILD)/mpl_bytes_mod.o: $(BOOT) $(SRC)/mpl_bytes_mod.F90 $(BUILD)/ec_parkind.o
	$(FC) -o $(BUILD)/mpl_bytes_mod.o -c $(SRC)/mpl_bytes_mod.F90

$(BUILD)/mpl_close_mod.o: $(BOOT) $(SRC)/mpl_close_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_ioinit_mod.o $(BUILD)/mpl_message_mod.o
	$(FC) -o $(BUILD)/mpl_close_mod.o -c $(SRC)/mpl_close_mod.F90

$(BUILD)/mpl_comm_compare_mod.o: $(BOOT) $(SRC)/mpl_comm_compare_mod.F90 $(BUILD)/ec_parkind.o
	$(FC) -o $(BUILD)/mpl_comm_compare_mod.o -c $(SRC)/mpl_comm_compare_mod.F90

$(BUILD)/mpl_comm_create_mod.o: $(BOOT) $(SRC)/mpl_comm_create_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_message_mod.o $(BUILD)/mpl_mpif.o $(BUILD)/oml_mod.o
	$(FC) -o $(BUILD)/mpl_comm_create_mod.o -c $(SRC)/mpl_comm_create_mod.F90

$(BUILD)/mpl_comm_free_mod.o: $(BOOT) $(SRC)/mpl_comm_free_mod.F90 $(BUILD)/ec_parkind.o
	$(FC) -o $(BUILD)/mpl_comm_free_mod.o -c $(SRC)/mpl_comm_free_mod.F90

$(BUILD)/mpl_comm_split_mod.o: $(BOOT) $(SRC)/mpl_comm_split_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_mpif.o
	$(FC) -o $(BUILD)/mpl_comm_split_mod.o -c $(SRC)/mpl_comm_split_mod.F90

$(BUILD)/mpl_data_module.o: $(BOOT) $(SRC)/mpl_data_module.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_mpif.o
	$(FC) -o $(BUILD)/mpl_data_module.o -c $(SRC)/mpl_data_module.F90

$(BUILD)/mpl_end_mod.o: $(BOOT) $(SRC)/mpl_end_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_message_mod.o
	$(FC) -o $(BUILD)/mpl_end_mod.o -c $(SRC)/mpl_end_mod.F90

$(BUILD)/mpl_gatherv_mod.o: $(BOOT) $(SRC)/mpl_gatherv_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_message_mod.o $(BUILD)/mpl_mpif.o $(BUILD)/mpl_myrank_mod.o $(BUILD)/mpl_recv_mod.o $(BUILD)/mpl_send_mod.o $(BUILD)/mpl_stats_mod.o $(BUILD)/oml_mod.o $(BUILD)/yommplstats.o
	$(FC) -o $(BUILD)/mpl_gatherv_mod.o -c $(SRC)/mpl_gatherv_mod.F90

$(BUILD)/mpl_groups.o: $(BOOT) $(SRC)/mpl_groups.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_message_mod.o $(BUILD)/mpl_mpif.o
	$(FC) -o $(BUILD)/mpl_groups.o -c $(SRC)/mpl_groups.F90

$(BUILD)/mpl_init_mod.o: $(BOOT) $(SRC)/mpl_init_mod.F90 $(BUILD)/ec_env_mod.o $(BUILD)/ec_parkind.o $(BUILD)/mpl_arg_mod.o $(BUILD)/mpl_buffer_method_mod.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_locomm_create_mod.o $(BUILD)/mpl_message_mod.o $(BUILD)/mpl_mpif.o $(BUILD)/mpl_tour_table_mod.o $(BUILD)/oml_mod.o
	$(FC) -o $(BUILD)/mpl_init_mod.o -c $(SRC)/mpl_init_mod.F90

$(BUILD)/mpl_ioinit_mod.o: $(BOOT) $(SRC)/mpl_ioinit_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_message_mod.o $(BUILD)/mpl_mpif.o
	$(FC) -o $(BUILD)/mpl_ioinit_mod.o -c $(SRC)/mpl_ioinit_mod.F90

$(BUILD)/mpl_locomm_create_mod.o: $(BOOT) $(SRC)/mpl_locomm_create_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_message_mod.o $(BUILD)/mpl_mpif.o
	$(FC) -o $(BUILD)/mpl_locomm_create_mod.o -c $(SRC)/mpl_locomm_create_mod.F90

$(BUILD)/mpl_message_mod.o: $(BOOT) $(SRC)/mpl_message_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_abort_mod.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_mpif.o
	$(FC) -o $(BUILD)/mpl_message_mod.o -c $(SRC)/mpl_message_mod.F90

$(BUILD)/mpl_module.o: $(BOOT) $(SRC)/mpl_module.F90 $(BUILD)/mpl_abort_mod.o $(BUILD)/mpl_allgatherv_mod.o $(BUILD)/mpl_allgather_mod.o $(BUILD)/mpl_allreduce_mod.o $(BUILD)/mpl_alltoallv_mod.o $(BUILD)/mpl_arg_mod.o $(BUILD)/mpl_barrier_mod.o $(BUILD)/mpl_broadcast_mod.o $(BUILD)/mpl_buffer_method_mod.o $(BUILD)/mpl_bytes_mod.o $(BUILD)/mpl_close_mod.o $(BUILD)/mpl_comm_compare_mod.o $(BUILD)/mpl_comm_create_mod.o $(BUILD)/mpl_comm_free_mod.o $(BUILD)/mpl_comm_split_mod.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_end_mod.o $(BUILD)/mpl_gatherv_mod.o $(BUILD)/mpl_groups.o $(BUILD)/mpl_init_mod.o $(BUILD)/mpl_ioinit_mod.o $(BUILD)/mpl_locomm_create_mod.o $(BUILD)/mpl_message_mod.o $(BUILD)/mpl_mygatherv_mod.o $(BUILD)/mpl_myrank_mod.o $(BUILD)/mpl_nproc_mod.o $(BUILD)/mpl_open_mod.o $(BUILD)/mpl_probe_mod.o $(BUILD)/mpl_read_mod.o $(BUILD)/mpl_recv_mod.o $(BUILD)/mpl_scatterv_mod.o $(BUILD)/mpl_send_mod.o $(BUILD)/mpl_setdflt_comm_mod.o $(BUILD)/mpl_testsome_mod.o $(BUILD)/mpl_tour_table_mod.o $(BUILD)/mpl_waitany_mod.o $(BUILD)/mpl_wait_mod.o $(BUILD)/mpl_write_mod.o
	$(FC) -o $(BUILD)/mpl_module.o -c $(SRC)/mpl_module.F90

$(BUILD)/mpl_mpif.o: $(BOOT) $(SRC)/mpl_mpif.F90 
	$(FC) -o $(BUILD)/mpl_mpif.o -c $(SRC)/mpl_mpif.F90

$(BUILD)/mpl_mygatherv_mod.o: $(BOOT) $(SRC)/mpl_mygatherv_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_message_mod.o $(BUILD)/mpl_mpif.o
	$(FC) -o $(BUILD)/mpl_mygatherv_mod.o -c $(SRC)/mpl_mygatherv_mod.F90

$(BUILD)/mpl_myrank_mod.o: $(BOOT) $(SRC)/mpl_myrank_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_message_mod.o
	$(FC) -o $(BUILD)/mpl_myrank_mod.o -c $(SRC)/mpl_myrank_mod.F90

$(BUILD)/mpl_nproc_mod.o: $(BOOT) $(SRC)/mpl_nproc_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_message_mod.o
	$(FC) -o $(BUILD)/mpl_nproc_mod.o -c $(SRC)/mpl_nproc_mod.F90

$(BUILD)/mpl_open_mod.o: $(BOOT) $(SRC)/mpl_open_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_ioinit_mod.o $(BUILD)/mpl_message_mod.o $(BUILD)/mpl_mpif.o
	$(FC) -o $(BUILD)/mpl_open_mod.o -c $(SRC)/mpl_open_mod.F90

$(BUILD)/mpl_probe_mod.o: $(BOOT) $(SRC)/mpl_probe_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_message_mod.o $(BUILD)/mpl_mpif.o $(BUILD)/oml_mod.o
	$(FC) -o $(BUILD)/mpl_probe_mod.o -c $(SRC)/mpl_probe_mod.F90

$(BUILD)/mpl_read_mod.o: $(BOOT) $(SRC)/mpl_read_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_ioinit_mod.o $(BUILD)/mpl_message_mod.o $(BUILD)/mpl_mpif.o
	$(FC) -o $(BUILD)/mpl_read_mod.o -c $(SRC)/mpl_read_mod.F90

$(BUILD)/mpl_recv_mod.o: $(BOOT) $(SRC)/mpl_recv_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_message_mod.o $(BUILD)/mpl_mpif.o $(BUILD)/mpl_nproc_mod.o $(BUILD)/mpl_stats_mod.o $(BUILD)/oml_mod.o $(BUILD)/yommplstats.o
	$(FC) -o $(BUILD)/mpl_recv_mod.o -c $(SRC)/mpl_recv_mod.F90

$(BUILD)/mpl_scatterv_mod.o: $(BOOT) $(SRC)/mpl_scatterv_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_message_mod.o $(BUILD)/mpl_mpif.o $(BUILD)/mpl_myrank_mod.o $(BUILD)/mpl_stats_mod.o $(BUILD)/oml_mod.o $(BUILD)/yommplstats.o
	$(FC) -o $(BUILD)/mpl_scatterv_mod.o -c $(SRC)/mpl_scatterv_mod.F90

$(BUILD)/mpl_send_mod.o: $(BOOT) $(SRC)/mpl_send_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_message_mod.o $(BUILD)/mpl_mpif.o $(BUILD)/mpl_nproc_mod.o $(BUILD)/mpl_stats_mod.o $(BUILD)/oml_mod.o $(BUILD)/yommplstats.o
	$(FC) -o $(BUILD)/mpl_send_mod.o -c $(SRC)/mpl_send_mod.F90

$(BUILD)/mpl_setdflt_comm_mod.o: $(BOOT) $(SRC)/mpl_setdflt_comm_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_message_mod.o $(BUILD)/mpl_mpif.o $(BUILD)/oml_mod.o
	$(FC) -o $(BUILD)/mpl_setdflt_comm_mod.o -c $(SRC)/mpl_setdflt_comm_mod.F90

$(BUILD)/mpl_stats_mod.o: $(BOOT) $(SRC)/mpl_stats_mod.F90 
	$(FC) -o $(BUILD)/mpl_stats_mod.o -c $(SRC)/mpl_stats_mod.F90

$(BUILD)/mpl_testsome_mod.o: $(BOOT) $(SRC)/mpl_testsome_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_message_mod.o $(BUILD)/mpl_mpif.o
	$(FC) -o $(BUILD)/mpl_testsome_mod.o -c $(SRC)/mpl_testsome_mod.F90

$(BUILD)/mpl_tour_table_mod.o: $(BOOT) $(SRC)/mpl_tour_table_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_message_mod.o
	$(FC) -o $(BUILD)/mpl_tour_table_mod.o -c $(SRC)/mpl_tour_table_mod.F90

$(BUILD)/mpl_wait_mod.o: $(BOOT) $(SRC)/mpl_wait_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_message_mod.o $(BUILD)/mpl_mpif.o
	$(FC) -o $(BUILD)/mpl_wait_mod.o -c $(SRC)/mpl_wait_mod.F90

$(BUILD)/mpl_waitany_mod.o: $(BOOT) $(SRC)/mpl_waitany_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_message_mod.o $(BUILD)/mpl_mpif.o
	$(FC) -o $(BUILD)/mpl_waitany_mod.o -c $(SRC)/mpl_waitany_mod.F90

$(BUILD)/mpl_write_mod.o: $(BOOT) $(SRC)/mpl_write_mod.F90 $(BUILD)/ec_parkind.o $(BUILD)/mpl_data_module.o $(BUILD)/mpl_ioinit_mod.o $(BUILD)/mpl_message_mod.o $(BUILD)/mpl_mpif.o
	$(FC) -o $(BUILD)/mpl_write_mod.o -c $(SRC)/mpl_write_mod.F90

$(BUILD)/netcdf.o: $(BOOT) $(SRC)/netcdf.F90 $(BUILD)/typesizes.o
	$(FC) -o $(BUILD)/netcdf.o -c $(SRC)/netcdf.F90

$(BUILD)/netcdf4_f03.o: $(BOOT) $(SRC)/netcdf4_f03.F90 $(BUILD)/netcdf4_nf_interfaces.o $(BUILD)/netcdf_nf_data.o $(BUILD)/netcdf_nf_interfaces.o
	$(FC) -o $(BUILD)/netcdf4_f03.o -c $(SRC)/netcdf4_f03.F90

$(BUILD)/netcdf4_nc_interfaces.o: $(BOOT) $(SRC)/netcdf4_nc_interfaces.F90 $(BUILD)/netcdf_nc_interfaces.o
	$(FC) -o $(BUILD)/netcdf4_nc_interfaces.o -c $(SRC)/netcdf4_nc_interfaces.F90

$(BUILD)/netcdf4_nf_interfaces.o: $(BOOT) $(SRC)/netcdf4_nf_interfaces.F90 
	$(FC) -o $(BUILD)/netcdf4_nf_interfaces.o -c $(SRC)/netcdf4_nf_interfaces.F90

$(BUILD)/netcdf_f03.o: $(BOOT) $(SRC)/netcdf_f03.F90 $(BUILD)/netcdf_nf_data.o $(BUILD)/netcdf_nf_interfaces.o
	$(FC) -o $(BUILD)/netcdf_f03.o -c $(SRC)/netcdf_f03.F90

$(BUILD)/netcdf_fortv2_c_interfaces.o: $(BOOT) $(SRC)/netcdf_fortv2_c_interfaces.F90 $(BUILD)/netcdf_nc_interfaces.o
	$(FC) -o $(BUILD)/netcdf_fortv2_c_interfaces.o -c $(SRC)/netcdf_fortv2_c_interfaces.F90

$(BUILD)/netcdf_nc_data.o: $(BOOT) $(SRC)/netcdf_nc_data.F90 
	$(FC) -o $(BUILD)/netcdf_nc_data.o -c $(SRC)/netcdf_nc_data.F90

$(BUILD)/netcdf_nc_interfaces.o: $(BOOT) $(SRC)/netcdf_nc_interfaces.F90 $(BUILD)/netcdf_nc_data.o
	$(FC) -o $(BUILD)/netcdf_nc_interfaces.o -c $(SRC)/netcdf_nc_interfaces.F90

$(BUILD)/netcdf_nf_data.o: $(BOOT) $(SRC)/netcdf_nf_data.F90 $(BUILD)/netcdf_nc_data.o
	$(FC) -o $(BUILD)/netcdf_nf_data.o -c $(SRC)/netcdf_nf_data.F90

$(BUILD)/netcdf_nf_interfaces.o: $(BOOT) $(SRC)/netcdf_nf_interfaces.F90 
	$(FC) -o $(BUILD)/netcdf_nf_interfaces.o -c $(SRC)/netcdf_nf_interfaces.F90

$(BUILD)/oml_mod.o: $(BOOT) $(SRC)/oml_mod.F90 $(BUILD)/ec_lun.o $(BUILD)/ec_parkind.o
	$(FC) -o $(BUILD)/oml_mod.o -c $(SRC)/oml_mod.F90

$(BUILD)/par_gfl.o: $(BOOT) $(SRC)/par_gfl.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/par_gfl.o -c $(SRC)/par_gfl.F90

$(BUILD)/parkind1.o: $(BOOT) $(SRC)/parkind1.F90 
	$(FC) -o $(BUILD)/parkind1.o -c $(SRC)/parkind1.F90

$(BUILD)/parkind_ocean.o: $(BOOT) $(SRC)/parkind_ocean.F90 
	$(FC) -o $(BUILD)/parkind_ocean.o -c $(SRC)/parkind_ocean.F90

$(BUILD)/parphy.o: $(BOOT) $(SRC)/parphy.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/parphy.o -c $(SRC)/parphy.F90

$(BUILD)/ptrgppc.o: $(BOOT) $(SRC)/ptrgppc.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/ptrgppc.o -c $(SRC)/ptrgppc.F90

$(BUILD)/ptrslb1.o: $(BOOT) $(SRC)/ptrslb1.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/ptrslb1.o -c $(SRC)/ptrslb1.F90

$(BUILD)/ptrslb15.o: $(BOOT) $(SRC)/ptrslb15.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/ptrslb15.o -c $(SRC)/ptrslb15.F90

$(BUILD)/ptrslb2.o: $(BOOT) $(SRC)/ptrslb2.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/ptrslb2.o -c $(SRC)/ptrslb2.F90

$(BUILD)/radiation_aerosol_optics_data.o: $(BOOT) $(SRC)/radiation_aerosol_optics_data.F90 $(BUILD)/parkind1.o $(BUILD)/radiation_io.o
	$(FC) -o $(BUILD)/radiation_aerosol_optics_data.o -c $(SRC)/radiation_aerosol_optics_data.F90

$(BUILD)/radiation_cloud_cover.o: $(BOOT) $(SRC)/radiation_cloud_cover.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/radiation_cloud_cover.o -c $(SRC)/radiation_cloud_cover.F90

$(BUILD)/radiation_cloud_optics_data.o: $(BOOT) $(SRC)/radiation_cloud_optics_data.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/radiation_cloud_optics_data.o -c $(SRC)/radiation_cloud_optics_data.F90

$(BUILD)/radiation_config.o: $(BOOT) $(SRC)/radiation_config.F90 $(BUILD)/parkind1.o $(BUILD)/radiation_aerosol_optics_data.o $(BUILD)/radiation_cloud_cover.o $(BUILD)/radiation_cloud_optics_data.o $(BUILD)/radiation_ecckd.o $(BUILD)/radiation_general_cloud_optics_data.o $(BUILD)/radiation_pdf_sampler.o
	$(FC) -o $(BUILD)/radiation_config.o -c $(SRC)/radiation_config.F90

$(BUILD)/radiation_ecckd.o: $(BOOT) $(SRC)/radiation_ecckd.F90 $(BUILD)/parkind1.o $(BUILD)/radiation_ecckd_gas.o $(BUILD)/radiation_gas_constants.o $(BUILD)/radiation_spectral_definition.o
	$(FC) -o $(BUILD)/radiation_ecckd.o -c $(SRC)/radiation_ecckd.F90

$(BUILD)/radiation_ecckd_gas.o: $(BOOT) $(SRC)/radiation_ecckd_gas.F90 $(BUILD)/easy_netcdf_read_mpi.o $(BUILD)/parkind1.o $(BUILD)/radiation_gas_constants.o
	$(FC) -o $(BUILD)/radiation_ecckd_gas.o -c $(SRC)/radiation_ecckd_gas.F90

$(BUILD)/radiation_gas_constants.o: $(BOOT) $(SRC)/radiation_gas_constants.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/radiation_gas_constants.o -c $(SRC)/radiation_gas_constants.F90

$(BUILD)/radiation_general_cloud_optics_data.o: $(BOOT) $(SRC)/radiation_general_cloud_optics_data.F90 $(BUILD)/parkind1.o $(BUILD)/radiation_spectral_definition.o
	$(FC) -o $(BUILD)/radiation_general_cloud_optics_data.o -c $(SRC)/radiation_general_cloud_optics_data.F90

$(BUILD)/radiation_io.o: $(BOOT) $(SRC)/radiation_io.F90 $(BUILD)/yomlun_ifsaux.o
	$(FC) -o $(BUILD)/radiation_io.o -c $(SRC)/radiation_io.F90

$(BUILD)/radiation_pdf_sampler.o: $(BOOT) $(SRC)/radiation_pdf_sampler.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/radiation_pdf_sampler.o -c $(SRC)/radiation_pdf_sampler.F90

$(BUILD)/radiation_spectral_definition.o: $(BOOT) $(SRC)/radiation_spectral_definition.F90 $(BUILD)/easy_netcdf_read_mpi.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/radiation_spectral_definition.o -c $(SRC)/radiation_spectral_definition.F90

$(BUILD)/random_numbers_mix.o: $(BOOT) $(SRC)/random_numbers_mix.F90 $(BUILD)/bytes_io_mod.o $(BUILD)/parkind1.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/random_numbers_mix.o -c $(SRC)/random_numbers_mix.F90

$(BUILD)/reglatlon_field_mix.o: $(BOOT) $(SRC)/reglatlon_field_mix.F90 $(BUILD)/parkind1.o $(BUILD)/yomhook.o $(BUILD)/yomlun.o
	$(FC) -o $(BUILD)/reglatlon_field_mix.o -c $(SRC)/reglatlon_field_mix.F90

$(BUILD)/spectral_arp_mod.o: $(BOOT) $(SRC)/spectral_arp_mod.F90 $(BUILD)/geometry_mod.o $(BUILD)/parkind1.o $(BUILD)/random_numbers_mix.o $(BUILD)/spectral_fields_data.o $(BUILD)/spectral_fields_mod.o $(BUILD)/spectral_fields_oper_mod.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/spectral_arp_mod.o -c $(SRC)/spectral_arp_mod.F90

$(BUILD)/spectral_fields_data.o: $(BOOT) $(SRC)/spectral_fields_data.F90 $(BUILD)/field_module.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/spectral_fields_data.o -c $(SRC)/spectral_fields_data.F90

$(BUILD)/spectral_fields_mod.o: $(BOOT) $(SRC)/spectral_fields_mod.F90 $(BUILD)/geometry_mod.o $(BUILD)/parkind1.o $(BUILD)/spectral_fields_data.o $(BUILD)/spectral_fields_oper_mod.o $(BUILD)/spectral_fields_para_mod.o $(BUILD)/spectral_variables_mod.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/spectral_fields_mod.o -c $(SRC)/spectral_fields_mod.F90

$(BUILD)/spectral_fields_oper_mod.o: $(BOOT) $(SRC)/spectral_fields_oper_mod.F90 $(BUILD)/parkind1.o $(BUILD)/spectral_fields_data.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/spectral_fields_oper_mod.o -c $(SRC)/spectral_fields_oper_mod.F90

$(BUILD)/spectral_fields_para_mod.o: $(BOOT) $(SRC)/spectral_fields_para_mod.F90 $(BUILD)/mpl_allgatherv_mod.o $(BUILD)/mpl_allreduce_mod.o $(BUILD)/mpl_module.o $(BUILD)/parkind1.o $(BUILD)/spectral_fields_data.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/spectral_fields_para_mod.o -c $(SRC)/spectral_fields_para_mod.F90

$(BUILD)/spectral_spg_mod.o: $(BOOT) $(SRC)/spectral_spg_mod.F90 $(BUILD)/geometry_mod.o $(BUILD)/parkind1.o $(BUILD)/random_numbers_mix.o $(BUILD)/spectral_arp_mod.o $(BUILD)/spectral_fields_mod.o $(BUILD)/spectral_fields_oper_mod.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/spectral_spg_mod.o -c $(SRC)/spectral_spg_mod.F90

$(BUILD)/spectral_variables_mod.o: $(BOOT) $(SRC)/spectral_variables_mod.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/spectral_variables_mod.o -c $(SRC)/spectral_variables_mod.F90

$(BUILD)/spng_mod.o: $(BOOT) $(SRC)/spng_mod.F90 $(BUILD)/parkind1.o $(BUILD)/yomcst.o $(BUILD)/yomdyna.o $(BUILD)/yomhook.o $(BUILD)/yomlap.o $(BUILD)/yomlun.o $(BUILD)/yomrip.o
	$(FC) -o $(BUILD)/spng_mod.o -c $(SRC)/spng_mod.F90

$(BUILD)/spp_def_mod.o: $(BOOT) $(SRC)/spp_def_mod.F90 $(BUILD)/parkind1.o $(BUILD)/spp_gen_mod.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/spp_def_mod.o -c $(SRC)/spp_def_mod.F90

$(BUILD)/spp_gen_mod.o: $(BOOT) $(SRC)/spp_gen_mod.F90 $(BUILD)/parkind1.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/spp_gen_mod.o -c $(SRC)/spp_gen_mod.F90

$(BUILD)/spp_mod.o: $(BOOT) $(SRC)/spp_mod.F90 $(BUILD)/gridpoint_fields_mix.o $(BUILD)/parkind1.o $(BUILD)/spectral_arp_mod.o $(BUILD)/spectral_spg_mod.o $(BUILD)/spp_def_mod.o $(BUILD)/spp_gen_mod.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/spp_mod.o -c $(SRC)/spp_mod.F90

$(BUILD)/stoph_mix.o: $(BOOT) $(SRC)/stoph_mix.F90 $(BUILD)/geometry_mod.o $(BUILD)/parkind1.o $(BUILD)/yomdim.o $(BUILD)/yomlap.o $(BUILD)/yomrandom_streams.o $(BUILD)/yomrip.o
	$(FC) -o $(BUILD)/stoph_mix.o -c $(SRC)/stoph_mix.F90

$(BUILD)/type_aero.o: $(BOOT) $(SRC)/type_aero.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/type_aero.o -c $(SRC)/type_aero.F90

$(BUILD)/type_geometry.o: $(BOOT) $(SRC)/type_geometry.F90 $(BUILD)/type_spgeom.o $(BUILD)/yemdim.o $(BUILD)/yemgeo.o $(BUILD)/yemgsl.o $(BUILD)/yemlap.o $(BUILD)/yemlbc_geo.o $(BUILD)/yemmp.o $(BUILD)/yomcsgeom.o $(BUILD)/yomcver.o $(BUILD)/yomdim.o $(BUILD)/yomdimv.o $(BUILD)/yomgem.o $(BUILD)/yomgeomvars.o $(BUILD)/yomgsgeom.o $(BUILD)/yomlap.o $(BUILD)/yomleg.o $(BUILD)/yommp.o $(BUILD)/yomorog.o $(BUILD)/yomsta.o $(BUILD)/yomvert.o
	$(FC) -o $(BUILD)/type_geometry.o -c $(SRC)/type_geometry.F90

$(BUILD)/type_gmvs.o: $(BOOT) $(SRC)/type_gmvs.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/type_gmvs.o -c $(SRC)/type_gmvs.F90

$(BUILD)/type_model.o: $(BOOT) $(SRC)/type_model.F90 $(BUILD)/model_atmos_ocean_coupling_mod.o $(BUILD)/model_chem_mod.o $(BUILD)/model_diagnostics_mod.o $(BUILD)/model_dynamics_mod.o $(BUILD)/model_general_conf_mod.o $(BUILD)/model_physics_aerosol_mod.o $(BUILD)/model_physics_ecmwf_mod.o $(BUILD)/model_physics_forcing_mod.o $(BUILD)/model_physics_general_mod.o $(BUILD)/model_physics_mf_mod.o $(BUILD)/model_physics_radiation_mod.o $(BUILD)/model_physics_scm_mod.o $(BUILD)/model_physics_simplinear_mod.o $(BUILD)/model_physics_stochast_mod.o $(BUILD)/parkind1.o $(BUILD)/spp_mod.o $(BUILD)/yemlbc_model.o $(BUILD)/yoewcou.o $(BUILD)/yomcst.o $(BUILD)/yomspsdt.o
	$(FC) -o $(BUILD)/type_model.o -c $(SRC)/type_model.F90

$(BUILD)/type_spgeom.o: $(BOOT) $(SRC)/type_spgeom.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/type_spgeom.o -c $(SRC)/type_spgeom.F90

$(BUILD)/typesizes.o: $(BOOT) $(SRC)/typesizes.F90 
	$(FC) -o $(BUILD)/typesizes.o -c $(SRC)/typesizes.F90

$(BUILD)/yemdim.o: $(BOOT) $(SRC)/yemdim.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yemdim.o -c $(SRC)/yemdim.F90

$(BUILD)/yemdyn.o: $(BOOT) $(SRC)/yemdyn.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yemdyn.o -c $(SRC)/yemdyn.F90

$(BUILD)/yemgeo.o: $(BOOT) $(SRC)/yemgeo.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yemgeo.o -c $(SRC)/yemgeo.F90

$(BUILD)/yemgsl.o: $(BOOT) $(SRC)/yemgsl.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yemgsl.o -c $(SRC)/yemgsl.F90

$(BUILD)/yemlap.o: $(BOOT) $(SRC)/yemlap.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yemlap.o -c $(SRC)/yemlap.F90

$(BUILD)/yemlbc_geo.o: $(BOOT) $(SRC)/yemlbc_geo.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yemlbc_geo.o -c $(SRC)/yemlbc_geo.F90

$(BUILD)/yemlbc_model.o: $(BOOT) $(SRC)/yemlbc_model.F90 $(BUILD)/geometry_mod.o $(BUILD)/model_general_conf_mod.o $(BUILD)/parkind1.o $(BUILD)/yomct0.o $(BUILD)/yomdfi.o $(BUILD)/yomdyna.o $(BUILD)/yomgmv.o $(BUILD)/yomhook.o $(BUILD)/yomini.o $(BUILD)/yomlun.o $(BUILD)/yommp0.o $(BUILD)/yom_ygfl.o
	$(FC) -o $(BUILD)/yemlbc_model.o -c $(SRC)/yemlbc_model.F90

$(BUILD)/yemmp.o: $(BOOT) $(SRC)/yemmp.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yemmp.o -c $(SRC)/yemmp.F90

$(BUILD)/yoaiop.o: $(BOOT) $(SRC)/yoaiop.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoaiop.o -c $(SRC)/yoaiop.F90

$(BUILD)/yoe_aerodiag.o: $(BOOT) $(SRC)/yoe_aerodiag.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoe_aerodiag.o -c $(SRC)/yoe_aerodiag.F90

$(BUILD)/yoe_cuconvca.o: $(BOOT) $(SRC)/yoe_cuconvca.F90 $(BUILD)/eint_mod.o $(BUILD)/geometry_mod.o $(BUILD)/parkind1.o $(BUILD)/random_numbers_mix.o $(BUILD)/yoecumf.o $(BUILD)/yomdyna.o
	$(FC) -o $(BUILD)/yoe_cuconvca.o -c $(SRC)/yoe_cuconvca.F90

$(BUILD)/yoe_mcica.o: $(BOOT) $(SRC)/yoe_mcica.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoe_mcica.o -c $(SRC)/yoe_mcica.F90

$(BUILD)/yoe_spectral_planck.o: $(BOOT) $(SRC)/yoe_spectral_planck.F90 $(BUILD)/parkind1.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/yoe_spectral_planck.o -c $(SRC)/yoe_spectral_planck.F90

$(BUILD)/yoe_uvrad.o: $(BOOT) $(SRC)/yoe_uvrad.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoe_uvrad.o -c $(SRC)/yoe_uvrad.F90

$(BUILD)/yoeaeratm.o: $(BOOT) $(SRC)/yoeaeratm.F90 $(BUILD)/parkind1.o $(BUILD)/yoe_aerodiag.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/yoeaeratm.o -c $(SRC)/yoeaeratm.F90

$(BUILD)/yoeaerc.o: $(BOOT) $(SRC)/yoeaerc.F90 $(BUILD)/parkind1.o $(BUILD)/yoeaerraddesc.o
	$(FC) -o $(BUILD)/yoeaerc.o -c $(SRC)/yoeaerc.F90

$(BUILD)/yoeaerc_tegen.o: $(BOOT) $(SRC)/yoeaerc_tegen.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoeaerc_tegen.o -c $(SRC)/yoeaerc_tegen.F90

$(BUILD)/yoeaerd.o: $(BOOT) $(SRC)/yoeaerd.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoeaerd.o -c $(SRC)/yoeaerd.F90

$(BUILD)/yoeaerlid.o: $(BOOT) $(SRC)/yoeaerlid.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoeaerlid.o -c $(SRC)/yoeaerlid.F90

$(BUILD)/yoeaermap.o: $(BOOT) $(SRC)/yoeaermap.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoeaermap.o -c $(SRC)/yoeaermap.F90

$(BUILD)/yoeaerraddesc.o: $(BOOT) $(SRC)/yoeaerraddesc.F90 $(BUILD)/parkind1.o $(BUILD)/yoeaeratm.o
	$(FC) -o $(BUILD)/yoeaerraddesc.o -c $(SRC)/yoeaerraddesc.F90

$(BUILD)/yoeaersnk.o: $(BOOT) $(SRC)/yoeaersnk.F90 $(BUILD)/parkind1.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/yoeaersnk.o -c $(SRC)/yoeaersnk.F90

$(BUILD)/yoeaersrc.o: $(BOOT) $(SRC)/yoeaersrc.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoeaersrc.o -c $(SRC)/yoeaersrc.F90

$(BUILD)/yoeaervol.o: $(BOOT) $(SRC)/yoeaervol.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoeaervol.o -c $(SRC)/yoeaervol.F90

$(BUILD)/yoecld.o: $(BOOT) $(SRC)/yoecld.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoecld.o -c $(SRC)/yoecld.F90

$(BUILD)/yoecldp.o: $(BOOT) $(SRC)/yoecldp.F90 $(BUILD)/parkind1.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/yoecldp.o -c $(SRC)/yoecldp.F90

$(BUILD)/yoecmip.o: $(BOOT) $(SRC)/yoecmip.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoecmip.o -c $(SRC)/yoecmip.F90

$(BUILD)/yoecnd.o: $(BOOT) $(SRC)/yoecnd.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoecnd.o -c $(SRC)/yoecnd.F90

$(BUILD)/yoecumf.o: $(BOOT) $(SRC)/yoecumf.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoecumf.o -c $(SRC)/yoecumf.F90

$(BUILD)/yoecumf2.o: $(BOOT) $(SRC)/yoecumf2.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoecumf2.o -c $(SRC)/yoecumf2.F90

$(BUILD)/yoedbug.o: $(BOOT) $(SRC)/yoedbug.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoedbug.o -c $(SRC)/yoedbug.F90

$(BUILD)/yoegwd.o: $(BOOT) $(SRC)/yoegwd.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoegwd.o -c $(SRC)/yoegwd.F90

$(BUILD)/yoegwdwms.o: $(BOOT) $(SRC)/yoegwdwms.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoegwdwms.o -c $(SRC)/yoegwdwms.F90

$(BUILD)/yoegwwms.o: $(BOOT) $(SRC)/yoegwwms.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoegwwms.o -c $(SRC)/yoegwwms.F90

$(BUILD)/yoelwrad.o: $(BOOT) $(SRC)/yoelwrad.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoelwrad.o -c $(SRC)/yoelwrad.F90

$(BUILD)/yoeneur.o: $(BOOT) $(SRC)/yoeneur.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoeneur.o -c $(SRC)/yoeneur.F90

$(BUILD)/yoeovlp.o: $(BOOT) $(SRC)/yoeovlp.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoeovlp.o -c $(SRC)/yoeovlp.F90

$(BUILD)/yoeozoc.o: $(BOOT) $(SRC)/yoeozoc.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoeozoc.o -c $(SRC)/yoeozoc.F90

$(BUILD)/yoephli.o: $(BOOT) $(SRC)/yoephli.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoephli.o -c $(SRC)/yoephli.F90

$(BUILD)/yoephy.o: $(BOOT) $(SRC)/yoephy.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoephy.o -c $(SRC)/yoephy.F90

$(BUILD)/yoerad.o: $(BOOT) $(SRC)/yoerad.F90 $(BUILD)/parkind1.o $(BUILD)/yoeaerraddesc.o $(BUILD)/yoe_spectral_planck.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/yoerad.o -c $(SRC)/yoerad.F90

$(BUILD)/yoeradghg.o: $(BOOT) $(SRC)/yoeradghg.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoeradghg.o -c $(SRC)/yoeradghg.F90

$(BUILD)/yoeradiation.o: $(BOOT) $(SRC)/yoeradiation.F90 $(BUILD)/parkind1.o $(BUILD)/radiation_config.o
	$(FC) -o $(BUILD)/yoeradiation.o -c $(SRC)/yoeradiation.F90

$(BUILD)/yoerdi.o: $(BOOT) $(SRC)/yoerdi.F90 $(BUILD)/parkind1.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/yoerdi.o -c $(SRC)/yoerdi.F90

$(BUILD)/yoerip.o: $(BOOT) $(SRC)/yoerip.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoerip.o -c $(SRC)/yoerip.F90

$(BUILD)/yoesw.o: $(BOOT) $(SRC)/yoesw.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoesw.o -c $(SRC)/yoesw.F90

$(BUILD)/yoethf.o: $(BOOT) $(SRC)/yoethf.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoethf.o -c $(SRC)/yoethf.F90

$(BUILD)/yoevdf.o: $(BOOT) $(SRC)/yoevdf.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoevdf.o -c $(SRC)/yoevdf.F90

$(BUILD)/yoewcou.o: $(BOOT) $(SRC)/yoewcou.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yoewcou.o -c $(SRC)/yoewcou.F90

$(BUILD)/yom_ygfl.o: $(BOOT) $(SRC)/yom_ygfl.F90 $(BUILD)/parkind1.o $(BUILD)/par_gfl.o $(BUILD)/yoe_aerodiag.o
	$(FC) -o $(BUILD)/yom_ygfl.o -c $(SRC)/yom_ygfl.F90

$(BUILD)/yomaero.o: $(BOOT) $(SRC)/yomaero.F90 $(BUILD)/parkind1.o $(BUILD)/yom_ygfl.o
	$(FC) -o $(BUILD)/yomaero.o -c $(SRC)/yomaero.F90

$(BUILD)/yomarphy.o: $(BOOT) $(SRC)/yomarphy.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomarphy.o -c $(SRC)/yomarphy.F90

$(BUILD)/yomcape.o: $(BOOT) $(SRC)/yomcape.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomcape.o -c $(SRC)/yomcape.F90

$(BUILD)/yomcddh.o: $(BOOT) $(SRC)/yomcddh.F90 
	$(FC) -o $(BUILD)/yomcddh.o -c $(SRC)/yomcddh.F90

$(BUILD)/yomchem.o: $(BOOT) $(SRC)/yomchem.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomchem.o -c $(SRC)/yomchem.F90

$(BUILD)/yomcom.o: $(BOOT) $(SRC)/yomcom.F90 $(BUILD)/parkind1.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/yomcom.o -c $(SRC)/yomcom.F90

$(BUILD)/yomcompo.o: $(BOOT) $(SRC)/yomcompo.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomcompo.o -c $(SRC)/yomcompo.F90

$(BUILD)/yomcou.o: $(BOOT) $(SRC)/yomcou.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomcou.o -c $(SRC)/yomcou.F90

$(BUILD)/yomcsgeom.o: $(BOOT) $(SRC)/yomcsgeom.F90 $(BUILD)/deallocate_if_associated_mod.o $(BUILD)/parkind1.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/yomcsgeom.o -c $(SRC)/yomcsgeom.F90

$(BUILD)/yomcst.o: $(BOOT) $(SRC)/yomcst.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomcst.o -c $(SRC)/yomcst.F90

$(BUILD)/yomct0.o: $(BOOT) $(SRC)/yomct0.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomct0.o -c $(SRC)/yomct0.F90

$(BUILD)/yomcumfs.o: $(BOOT) $(SRC)/yomcumfs.F90 $(BUILD)/parkind1.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/yomcumfs.o -c $(SRC)/yomcumfs.F90

$(BUILD)/yomcver.o: $(BOOT) $(SRC)/yomcver.F90 $(BUILD)/parkind1.o $(BUILD)/yomct0.o $(BUILD)/yomhook.o $(BUILD)/yomlun.o
	$(FC) -o $(BUILD)/yomcver.o -c $(SRC)/yomcver.F90

$(BUILD)/yomcvmnh.o: $(BOOT) $(SRC)/yomcvmnh.F90 $(BUILD)/modd_convpar.o $(BUILD)/modd_convparext.o $(BUILD)/modd_convpar_shal.o $(BUILD)/modd_cst.o $(BUILD)/modd_nsv.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomcvmnh.o -c $(SRC)/yomcvmnh.F90

$(BUILD)/yomdfi.o: $(BOOT) $(SRC)/yomdfi.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomdfi.o -c $(SRC)/yomdfi.F90

$(BUILD)/yomdgradient.o: $(BOOT) $(SRC)/yomdgradient.F90 $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/yomdgradient.o -c $(SRC)/yomdgradient.F90

$(BUILD)/yomdim.o: $(BOOT) $(SRC)/yomdim.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomdim.o -c $(SRC)/yomdim.F90

$(BUILD)/yomdimf.o: $(BOOT) $(SRC)/yomdimf.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomdimf.o -c $(SRC)/yomdimf.F90

$(BUILD)/yomdimv.o: $(BOOT) $(SRC)/yomdimv.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomdimv.o -c $(SRC)/yomdimv.F90

$(BUILD)/yomdphy.o: $(BOOT) $(SRC)/yomdphy.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomdphy.o -c $(SRC)/yomdphy.F90

$(BUILD)/yomdprecips.o: $(BOOT) $(SRC)/yomdprecips.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomdprecips.o -c $(SRC)/yomdprecips.F90

$(BUILD)/yomdvisi.o: $(BOOT) $(SRC)/yomdvisi.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomdvisi.o -c $(SRC)/yomdvisi.F90

$(BUILD)/yomdwet.o: $(BOOT) $(SRC)/yomdwet.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomdwet.o -c $(SRC)/yomdwet.F90

$(BUILD)/yomdyn.o: $(BOOT) $(SRC)/yomdyn.F90 $(BUILD)/parkind1.o $(BUILD)/yomswe.o
	$(FC) -o $(BUILD)/yomdyn.o -c $(SRC)/yomdyn.F90

$(BUILD)/yomdyna.o: $(BOOT) $(SRC)/yomdyna.F90 $(BUILD)/intdyn_mod.o $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomdyna.o -c $(SRC)/yomdyna.F90

$(BUILD)/yomedmf.o: $(BOOT) $(SRC)/yomedmf.F90 $(BUILD)/parkind1.o $(BUILD)/parphy.o $(BUILD)/yomcst.o
	$(FC) -o $(BUILD)/yomedmf.o -c $(SRC)/yomedmf.F90

$(BUILD)/yomgem.o: $(BOOT) $(SRC)/yomgem.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomgem.o -c $(SRC)/yomgem.F90

$(BUILD)/yomgeomvars.o: $(BOOT) $(SRC)/yomgeomvars.F90 $(BUILD)/field_2rd_factory_module.o $(BUILD)/field_factory_module.o $(BUILD)/field_module.o $(BUILD)/parkind1.o $(BUILD)/yomcsgeom.o $(BUILD)/yomgsgeom.o $(BUILD)/yomorog.o
	$(FC) -o $(BUILD)/yomgeomvars.o -c $(SRC)/yomgeomvars.F90

$(BUILD)/yomgmv.o: $(BOOT) $(SRC)/yomgmv.F90 $(BUILD)/geometry_mod.o $(BUILD)/parkind1.o $(BUILD)/type_gmvs.o $(BUILD)/yomlun.o
	$(FC) -o $(BUILD)/yomgmv.o -c $(SRC)/yomgmv.F90

$(BUILD)/yomgsgeom.o: $(BOOT) $(SRC)/yomgsgeom.F90 $(BUILD)/deallocate_if_associated_mod.o $(BUILD)/parkind1.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/yomgsgeom.o -c $(SRC)/yomgsgeom.F90

$(BUILD)/yomhook.o: $(BOOT) $(SRC)/yomhook.F90 $(BUILD)/ec_parkind.o
	$(FC) -o $(BUILD)/yomhook.o -c $(SRC)/yomhook.F90

$(BUILD)/yomhslmer.o: $(BOOT) $(SRC)/yomhslmer.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomhslmer.o -c $(SRC)/yomhslmer.F90

$(BUILD)/yomini.o: $(BOOT) $(SRC)/yomini.F90 
	$(FC) -o $(BUILD)/yomini.o -c $(SRC)/yomini.F90

$(BUILD)/yomlap.o: $(BOOT) $(SRC)/yomlap.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomlap.o -c $(SRC)/yomlap.F90

$(BUILD)/yomlddh.o: $(BOOT) $(SRC)/yomlddh.F90 
	$(FC) -o $(BUILD)/yomlddh.o -c $(SRC)/yomlddh.F90

$(BUILD)/yomleg.o: $(BOOT) $(SRC)/yomleg.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomleg.o -c $(SRC)/yomleg.F90

$(BUILD)/yomlouis.o: $(BOOT) $(SRC)/yomlouis.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomlouis.o -c $(SRC)/yomlouis.F90

$(BUILD)/yomlun.o: $(BOOT) $(SRC)/yomlun.F90 $(BUILD)/parkind1.o $(BUILD)/yomlun_ifsaux.o
	$(FC) -o $(BUILD)/yomlun.o -c $(SRC)/yomlun.F90

$(BUILD)/yomlun_ifsaux.o: $(BOOT) $(SRC)/yomlun_ifsaux.F90 $(BUILD)/ec_lun.o
	$(FC) -o $(BUILD)/yomlun_ifsaux.o -c $(SRC)/yomlun_ifsaux.F90

$(BUILD)/yommcc.o: $(BOOT) $(SRC)/yommcc.F90 $(BUILD)/cplng_types_mod.o $(BUILD)/parkind1.o $(BUILD)/par_gfl.o $(BUILD)/yomcompo.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/yommcc.o -c $(SRC)/yommcc.F90

$(BUILD)/yommddh.o: $(BOOT) $(SRC)/yommddh.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yommddh.o -c $(SRC)/yommddh.F90

$(BUILD)/yommoderrmod.o: $(BOOT) $(SRC)/yommoderrmod.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yommoderrmod.o -c $(SRC)/yommoderrmod.F90

$(BUILD)/yommp.o: $(BOOT) $(SRC)/yommp.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yommp.o -c $(SRC)/yommp.F90

$(BUILD)/yommp0.o: $(BOOT) $(SRC)/yommp0.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yommp0.o -c $(SRC)/yommp0.F90

$(BUILD)/yommplstats.o: $(BOOT) $(SRC)/yommplstats.F90 $(BUILD)/ec_parkind.o
	$(FC) -o $(BUILD)/yommplstats.o -c $(SRC)/yommplstats.F90

$(BUILD)/yommse.o: $(BOOT) $(SRC)/yommse.F90 $(BUILD)/parkind1.o $(BUILD)/yomct0.o
	$(FC) -o $(BUILD)/yommse.o -c $(SRC)/yommse.F90

$(BUILD)/yomncl.o: $(BOOT) $(SRC)/yomncl.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomncl.o -c $(SRC)/yomncl.F90

$(BUILD)/yomnorgwd.o: $(BOOT) $(SRC)/yomnorgwd.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomnorgwd.o -c $(SRC)/yomnorgwd.F90

$(BUILD)/yomnrtaer.o: $(BOOT) $(SRC)/yomnrtaer.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomnrtaer.o -c $(SRC)/yomnrtaer.F90

$(BUILD)/yomorog.o: $(BOOT) $(SRC)/yomorog.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomorog.o -c $(SRC)/yomorog.F90

$(BUILD)/yomozo.o: $(BOOT) $(SRC)/yomozo.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomozo.o -c $(SRC)/yomozo.F90

$(BUILD)/yomparar.o: $(BOOT) $(SRC)/yomparar.F90 $(BUILD)/modd_phyex.o $(BUILD)/parkind1.o $(BUILD)/yomedmf.o $(BUILD)/yomtendra.o
	$(FC) -o $(BUILD)/yomparar.o -c $(SRC)/yomparar.F90

$(BUILD)/yompertpar.o: $(BOOT) $(SRC)/yompertpar.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yompertpar.o -c $(SRC)/yompertpar.F90

$(BUILD)/yomphy.o: $(BOOT) $(SRC)/yomphy.F90 $(BUILD)/parkind1.o $(BUILD)/yomcape.o $(BUILD)/yomdprecips.o $(BUILD)/yomdvisi.o $(BUILD)/yomdwet.o $(BUILD)/yomrpp.o
	$(FC) -o $(BUILD)/yomphy.o -c $(SRC)/yomphy.F90

$(BUILD)/yomphy0.o: $(BOOT) $(SRC)/yomphy0.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomphy0.o -c $(SRC)/yomphy0.F90

$(BUILD)/yomphy1.o: $(BOOT) $(SRC)/yomphy1.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomphy1.o -c $(SRC)/yomphy1.F90

$(BUILD)/yomphy2.o: $(BOOT) $(SRC)/yomphy2.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomphy2.o -c $(SRC)/yomphy2.F90

$(BUILD)/yomphy3.o: $(BOOT) $(SRC)/yomphy3.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomphy3.o -c $(SRC)/yomphy3.F90

$(BUILD)/yomphyds.o: $(BOOT) $(SRC)/yomphyds.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomphyds.o -c $(SRC)/yomphyds.F90

$(BUILD)/yomprad.o: $(BOOT) $(SRC)/yomprad.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomprad.o -c $(SRC)/yomprad.F90

$(BUILD)/yomrandom_streams.o: $(BOOT) $(SRC)/yomrandom_streams.F90 $(BUILD)/random_numbers_mix.o
	$(FC) -o $(BUILD)/yomrandom_streams.o -c $(SRC)/yomrandom_streams.F90

$(BUILD)/yomrcoef.o: $(BOOT) $(SRC)/yomrcoef.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomrcoef.o -c $(SRC)/yomrcoef.F90

$(BUILD)/yomrip.o: $(BOOT) $(SRC)/yomrip.F90 $(BUILD)/parkind1.o $(BUILD)/reglatlon_field_mix.o $(BUILD)/yoeaerc.o $(BUILD)/yoeaerc_tegen.o $(BUILD)/yoecmip.o $(BUILD)/yoeozoc.o $(BUILD)/yoeradghg.o
	$(FC) -o $(BUILD)/yomrip.o -c $(SRC)/yomrip.F90

$(BUILD)/yomrpp.o: $(BOOT) $(SRC)/yomrpp.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomrpp.o -c $(SRC)/yomrpp.F90

$(BUILD)/yomsddh.o: $(BOOT) $(SRC)/yomsddh.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomsddh.o -c $(SRC)/yomsddh.F90

$(BUILD)/yomsimphl.o: $(BOOT) $(SRC)/yomsimphl.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomsimphl.o -c $(SRC)/yomsimphl.F90

$(BUILD)/yomslint.o: $(BOOT) $(SRC)/yomslint.F90 $(BUILD)/parkind1.o $(BUILD)/yomhslmer.o $(BUILD)/yomvsleta.o $(BUILD)/yomvsplip.o
	$(FC) -o $(BUILD)/yomslint.o -c $(SRC)/yomslint.F90

$(BUILD)/yomslphy.o: $(BOOT) $(SRC)/yomslphy.F90 $(BUILD)/parkind1.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/yomslphy.o -c $(SRC)/yomslphy.F90

$(BUILD)/yomslrep.o: $(BOOT) $(SRC)/yomslrep.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomslrep.o -c $(SRC)/yomslrep.F90

$(BUILD)/yomsphyhist.o: $(BOOT) $(SRC)/yomsphyhist.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomsphyhist.o -c $(SRC)/yomsphyhist.F90

$(BUILD)/yomspsdt.o: $(BOOT) $(SRC)/yomspsdt.F90 $(BUILD)/gridpoint_fields_mix.o $(BUILD)/parkind1.o $(BUILD)/spectral_arp_mod.o
	$(FC) -o $(BUILD)/yomspsdt.o -c $(SRC)/yomspsdt.F90

$(BUILD)/yomsrftlad.o: $(BOOT) $(SRC)/yomsrftlad.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomsrftlad.o -c $(SRC)/yomsrftlad.F90

$(BUILD)/yomsta.o: $(BOOT) $(SRC)/yomsta.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomsta.o -c $(SRC)/yomsta.F90

$(BUILD)/yomswe.o: $(BOOT) $(SRC)/yomswe.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomswe.o -c $(SRC)/yomswe.F90

$(BUILD)/yomtendra.o: $(BOOT) $(SRC)/yomtendra.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomtendra.o -c $(SRC)/yomtendra.F90

$(BUILD)/yomtnh.o: $(BOOT) $(SRC)/yomtnh.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomtnh.o -c $(SRC)/yomtnh.F90

$(BUILD)/yomtoph.o: $(BOOT) $(SRC)/yomtoph.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomtoph.o -c $(SRC)/yomtoph.F90

$(BUILD)/yomvdoz.o: $(BOOT) $(SRC)/yomvdoz.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomvdoz.o -c $(SRC)/yomvdoz.F90

$(BUILD)/yomvert.o: $(BOOT) $(SRC)/yomvert.F90 $(BUILD)/parkind1.o $(BUILD)/yomcver.o $(BUILD)/yomhook.o
	$(FC) -o $(BUILD)/yomvert.o -c $(SRC)/yomvert.F90

$(BUILD)/yomvsleta.o: $(BOOT) $(SRC)/yomvsleta.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomvsleta.o -c $(SRC)/yomvsleta.F90

$(BUILD)/yomvsplip.o: $(BOOT) $(SRC)/yomvsplip.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomvsplip.o -c $(SRC)/yomvsplip.F90

$(BUILD)/yomwindfarm.o: $(BOOT) $(SRC)/yomwindfarm.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yomwindfarm.o -c $(SRC)/yomwindfarm.F90

$(BUILD)/yophlc.o: $(BOOT) $(SRC)/yophlc.F90 $(BUILD)/parkind1.o
	$(FC) -o $(BUILD)/yophlc.o -c $(SRC)/yophlc.F90

$(BUILD)/yophnc.o: $(BOOT) $(SRC)/yophnc.F90 
	$(FC) -o $(BUILD)/yophnc.o -c $(SRC)/yophnc.F90


exe: 

subclean:
	\rm -f $(BUILD)/cptend_new_manyblocks.o

clean: 
	\rm -f $(BUILD)/*.o $(BUILD)/*.xml $(BUILD)/*.a $(BUILD)/*.x $(BUILD)/*.mod $(BUILD)/*.optrpt $(BUILD)/*.smod $(BUILD)/*.ok $(BUILD)/*.optrpt

tidy:
	\rm -f $(BUILD)/*.xml $(BUILD)/*.optrpt
