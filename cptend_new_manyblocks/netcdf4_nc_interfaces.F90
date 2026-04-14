!mod$ v1 sum:8e19a1aa15effa05
!need$ 29af46a3c2cbb404 n netcdf_nc_interfaces
module netcdf4_nc_interfaces
use netcdf_nc_interfaces,only:c_associated
use netcdf_nc_interfaces,only:c_funloc
use netcdf_nc_interfaces,only:c_funptr
use netcdf_nc_interfaces,only:c_f_pointer
use netcdf_nc_interfaces,only:c_loc
use netcdf_nc_interfaces,only:c_null_funptr
use netcdf_nc_interfaces,only:c_null_ptr
use netcdf_nc_interfaces,only:c_ptr
use netcdf_nc_interfaces,only:c_sizeof
use netcdf_nc_interfaces,only:operator(==)
use netcdf_nc_interfaces,only:operator(/=)
use netcdf_nc_interfaces,only:c_int8_t
use netcdf_nc_interfaces,only:c_int16_t
use netcdf_nc_interfaces,only:c_int32_t
use netcdf_nc_interfaces,only:c_int64_t
use netcdf_nc_interfaces,only:c_int128_t
use netcdf_nc_interfaces,only:c_int
use netcdf_nc_interfaces,only:c_short
use netcdf_nc_interfaces,only:c_long
use netcdf_nc_interfaces,only:c_long_long
use netcdf_nc_interfaces,only:c_signed_char
use netcdf_nc_interfaces,only:c_size_t
use netcdf_nc_interfaces,only:c_intmax_t
use netcdf_nc_interfaces,only:c_intptr_t
use netcdf_nc_interfaces,only:c_ptrdiff_t
use netcdf_nc_interfaces,only:c_int_least8_t
use netcdf_nc_interfaces,only:c_int_fast8_t
use netcdf_nc_interfaces,only:c_int_least16_t
use netcdf_nc_interfaces,only:c_int_fast16_t
use netcdf_nc_interfaces,only:c_int_least32_t
use netcdf_nc_interfaces,only:c_int_fast32_t
use netcdf_nc_interfaces,only:c_int_least64_t
use netcdf_nc_interfaces,only:c_int_fast64_t
use netcdf_nc_interfaces,only:c_int_least128_t
use netcdf_nc_interfaces,only:c_int_fast128_t
use netcdf_nc_interfaces,only:c_float
use netcdf_nc_interfaces,only:c_double
use netcdf_nc_interfaces,only:c_long_double
use netcdf_nc_interfaces,only:c_float_complex
use netcdf_nc_interfaces,only:c_double_complex
use netcdf_nc_interfaces,only:c_long_double_complex
use netcdf_nc_interfaces,only:c_bool
use netcdf_nc_interfaces,only:c_char
use netcdf_nc_interfaces,only:c_null_char
use netcdf_nc_interfaces,only:c_alert
use netcdf_nc_interfaces,only:c_backspace
use netcdf_nc_interfaces,only:c_form_feed
use netcdf_nc_interfaces,only:c_new_line
use netcdf_nc_interfaces,only:c_carriage_return
use netcdf_nc_interfaces,only:c_horizontal_tab
use netcdf_nc_interfaces,only:c_vertical_tab
use netcdf_nc_interfaces,only:c_float128
use netcdf_nc_interfaces,only:c_float128_complex
use netcdf_nc_interfaces,only:c_uint8_t
use netcdf_nc_interfaces,only:c_uint16_t
use netcdf_nc_interfaces,only:c_uint32_t
use netcdf_nc_interfaces,only:c_uint64_t
use netcdf_nc_interfaces,only:c_uint128_t
use netcdf_nc_interfaces,only:c_unsigned_char
use netcdf_nc_interfaces,only:c_unsigned_short
use netcdf_nc_interfaces,only:c_unsigned
use netcdf_nc_interfaces,only:c_unsigned_long
use netcdf_nc_interfaces,only:c_unsigned_long_long
use netcdf_nc_interfaces,only:c_uintmax_t
use netcdf_nc_interfaces,only:c_uint_fast8_t
use netcdf_nc_interfaces,only:c_uint_fast16_t
use netcdf_nc_interfaces,only:c_uint_fast32_t
use netcdf_nc_interfaces,only:c_uint_fast64_t
use netcdf_nc_interfaces,only:c_uint_fast128_t
use netcdf_nc_interfaces,only:c_uint_least8_t
use netcdf_nc_interfaces,only:c_uint_least16_t
use netcdf_nc_interfaces,only:c_uint_least32_t
use netcdf_nc_interfaces,only:c_uint_least64_t
use netcdf_nc_interfaces,only:c_uint_least128_t
use netcdf_nc_interfaces,only:c_f_procpointer
use netcdf_nc_interfaces,only:selected_real_kind
use netcdf_nc_interfaces,only:selected_int_kind
use netcdf_nc_interfaces,only:rk4
use netcdf_nc_interfaces,only:rk8
use netcdf_nc_interfaces,only:ik1
use netcdf_nc_interfaces,only:ik2
use netcdf_nc_interfaces,only:ik4
use netcdf_nc_interfaces,only:ik8
use netcdf_nc_interfaces,only:cint1
use netcdf_nc_interfaces,only:nfint1
use netcdf_nc_interfaces,only:cint2
use netcdf_nc_interfaces,only:nfint2
use netcdf_nc_interfaces,only:cint
use netcdf_nc_interfaces,only:nfint
use netcdf_nc_interfaces,only:cint8
use netcdf_nc_interfaces,only:nfint8
use netcdf_nc_interfaces,only:nfreal
use netcdf_nc_interfaces,only:c_enum
use netcdf_nc_interfaces,only:kind
use netcdf_nc_interfaces,only:nc_nat
use netcdf_nc_interfaces,only:nc_byte
use netcdf_nc_interfaces,only:nc_char
use netcdf_nc_interfaces,only:nc_short
use netcdf_nc_interfaces,only:nc_int
use netcdf_nc_interfaces,only:nc_float
use netcdf_nc_interfaces,only:nc_double
use netcdf_nc_interfaces,only:nc_fill_char
use netcdf_nc_interfaces,only:nc_fill_byte
use netcdf_nc_interfaces,only:nc_fill_short
use netcdf_nc_interfaces,only:nc_fill_int
use netcdf_nc_interfaces,only:nc_fill_float
use netcdf_nc_interfaces,only:nc_fill_double
use netcdf_nc_interfaces,only:nc_nowrite
use netcdf_nc_interfaces,only:nc_write
use netcdf_nc_interfaces,only:nc_clobber
use netcdf_nc_interfaces,only:nc_noclobber
use netcdf_nc_interfaces,only:nc_fill
use netcdf_nc_interfaces,only:nc_nofill
use netcdf_nc_interfaces,only:nc_lock
use netcdf_nc_interfaces,only:nc_share
use netcdf_nc_interfaces,only:nc_strict_nc3
use netcdf_nc_interfaces,only:nc_64bit_offset
use netcdf_nc_interfaces,only:nc_64bit_data
use netcdf_nc_interfaces,only:nc_cdf5
use netcdf_nc_interfaces,only:nc_sizehint_default
use netcdf_nc_interfaces,only:nc_align_chunk
use netcdf_nc_interfaces,only:nc_format_classic
use netcdf_nc_interfaces,only:nc_format_64bit
use netcdf_nc_interfaces,only:nc_format_64bit_offset
use netcdf_nc_interfaces,only:nc_format_64bit_data
use netcdf_nc_interfaces,only:nc_format_cdf5
use netcdf_nc_interfaces,only:nc_diskless
use netcdf_nc_interfaces,only:nc_mmap
use netcdf_nc_interfaces,only:nc_inmemory
use netcdf_nc_interfaces,only:nc_unlimited
use netcdf_nc_interfaces,only:nc_global
use netcdf_nc_interfaces,only:nc_max_dims
use netcdf_nc_interfaces,only:nc_max_attrs
use netcdf_nc_interfaces,only:nc_max_vars
use netcdf_nc_interfaces,only:nc_max_name
use netcdf_nc_interfaces,only:nc_max_var_dims
use netcdf_nc_interfaces,only:nc_noerr
use netcdf_nc_interfaces,only:nc2_err
use netcdf_nc_interfaces,only:nc_syserr
use netcdf_nc_interfaces,only:nc_exdr
use netcdf_nc_interfaces,only:nc_ebadid
use netcdf_nc_interfaces,only:nc_ebfile
use netcdf_nc_interfaces,only:nc_eexist
use netcdf_nc_interfaces,only:nc_einval
use netcdf_nc_interfaces,only:nc_eperm
use netcdf_nc_interfaces,only:nc_enotindefine
use netcdf_nc_interfaces,only:nc_eindefine
use netcdf_nc_interfaces,only:nc_einvalcoords
use netcdf_nc_interfaces,only:nc_emaxdims
use netcdf_nc_interfaces,only:nc_enameinuse
use netcdf_nc_interfaces,only:nc_enotatt
use netcdf_nc_interfaces,only:nc_emaxatts
use netcdf_nc_interfaces,only:nc_ebadtype
use netcdf_nc_interfaces,only:nc_ebaddim
use netcdf_nc_interfaces,only:nc_eunlimpos
use netcdf_nc_interfaces,only:nc_emaxvars
use netcdf_nc_interfaces,only:nc_enotvar
use netcdf_nc_interfaces,only:nc_eglobal
use netcdf_nc_interfaces,only:nc_enotnc
use netcdf_nc_interfaces,only:nc_ests
use netcdf_nc_interfaces,only:nc_emaxname
use netcdf_nc_interfaces,only:nc_eunlimit
use netcdf_nc_interfaces,only:nc_enorecvars
use netcdf_nc_interfaces,only:nc_echar
use netcdf_nc_interfaces,only:nc_eedge
use netcdf_nc_interfaces,only:nc_estride
use netcdf_nc_interfaces,only:nc_ebadname
use netcdf_nc_interfaces,only:nc_erange
use netcdf_nc_interfaces,only:nc_enomem
use netcdf_nc_interfaces,only:nc_evarsize
use netcdf_nc_interfaces,only:nc_edimsize
use netcdf_nc_interfaces,only:nc_etrunc
use netcdf_nc_interfaces,only:nc_eaxistype
use netcdf_nc_interfaces,only:nc_edap
use netcdf_nc_interfaces,only:nc_ecurl
use netcdf_nc_interfaces,only:nc_eio
use netcdf_nc_interfaces,only:nc_enodata
use netcdf_nc_interfaces,only:nc_edapsvc
use netcdf_nc_interfaces,only:nc_edas
use netcdf_nc_interfaces,only:nc_edds
use netcdf_nc_interfaces,only:nc_edatadds
use netcdf_nc_interfaces,only:nc_edapurl
use netcdf_nc_interfaces,only:nc_edapconstraint
use netcdf_nc_interfaces,only:nc_etranslation
use netcdf_nc_interfaces,only:nc_fatal
use netcdf_nc_interfaces,only:nc_verbose
use netcdf_nc_interfaces,only:nc_format_netcdf4
use netcdf_nc_interfaces,only:nc_format_netcdf4_classic
use netcdf_nc_interfaces,only:nc_netcdf4
use netcdf_nc_interfaces,only:nc_classic_model
use netcdf_nc_interfaces,only:nc_long
use netcdf_nc_interfaces,only:nc_ubyte
use netcdf_nc_interfaces,only:nc_ushort
use netcdf_nc_interfaces,only:nc_uint
use netcdf_nc_interfaces,only:nc_int64
use netcdf_nc_interfaces,only:nc_uint64
use netcdf_nc_interfaces,only:nc_string
use netcdf_nc_interfaces,only:nc_vlen
use netcdf_nc_interfaces,only:nc_opaque
use netcdf_nc_interfaces,only:nc_enum
use netcdf_nc_interfaces,only:nc_compound
use netcdf_nc_interfaces,only:nc_fill_ubyte
use netcdf_nc_interfaces,only:nc_fill_ushort
use netcdf_nc_interfaces,only:nc_fill_uint
use netcdf_nc_interfaces,only:nc_fill_int64
use netcdf_nc_interfaces,only:nc_chunk_seq
use netcdf_nc_interfaces,only:nc_chunk_sub
use netcdf_nc_interfaces,only:nc_chunk_sizes
use netcdf_nc_interfaces,only:nc_endian_native
use netcdf_nc_interfaces,only:nc_endian_little
use netcdf_nc_interfaces,only:nc_endian_big
use netcdf_nc_interfaces,only:nc_chunked
use netcdf_nc_interfaces,only:nc_notcontiguous
use netcdf_nc_interfaces,only:nc_contiguous
use netcdf_nc_interfaces,only:nc_nochecksum
use netcdf_nc_interfaces,only:nc_fletcher32
use netcdf_nc_interfaces,only:nc_noshuffle
use netcdf_nc_interfaces,only:nc_shuffle
use netcdf_nc_interfaces,only:nc_independent
use netcdf_nc_interfaces,only:nc_collective
use netcdf_nc_interfaces,only:nc_mpiio
use netcdf_nc_interfaces,only:nc_mpiposix
use netcdf_nc_interfaces,only:nc_pnetcdf
use netcdf_nc_interfaces,only:nc_szip_ec_option_mask
use netcdf_nc_interfaces,only:nc_szip_nn_option_mask
use netcdf_nc_interfaces,only:nc_ehdferr
use netcdf_nc_interfaces,only:nc_ecantread
use netcdf_nc_interfaces,only:nc_ecantwrite
use netcdf_nc_interfaces,only:nc_ecantcreate
use netcdf_nc_interfaces,only:nc_efilemeta
use netcdf_nc_interfaces,only:nc_edimmeta
use netcdf_nc_interfaces,only:nc_eattmeta
use netcdf_nc_interfaces,only:nc_evarmeta
use netcdf_nc_interfaces,only:nc_enocompound
use netcdf_nc_interfaces,only:nc_eattexists
use netcdf_nc_interfaces,only:nc_enotnc4
use netcdf_nc_interfaces,only:nc_estrictnc3
use netcdf_nc_interfaces,only:nc_enotnc3
use netcdf_nc_interfaces,only:nc_enopar
use netcdf_nc_interfaces,only:nc_eparinit
use netcdf_nc_interfaces,only:nc_ebadgrpid
use netcdf_nc_interfaces,only:nc_ebadtypid
use netcdf_nc_interfaces,only:nc_etypdefined
use netcdf_nc_interfaces,only:nc_ebadfield
use netcdf_nc_interfaces,only:nc_ebadclass
use netcdf_nc_interfaces,only:nc_emaptype
use netcdf_nc_interfaces,only:nc_elatefill
use netcdf_nc_interfaces,only:nc_elatedef
use netcdf_nc_interfaces,only:nc_edimscale
use netcdf_nc_interfaces,only:nc_enogrp
use netcdf_nc_interfaces,only:nc_estorage
use netcdf_nc_interfaces,only:nc_ebadchunk
use netcdf_nc_interfaces,only:nc_enotbuilt
use netcdf_nc_interfaces,only:nc_ediskless
use netcdf_nc_interfaces,only:nc_ecantextend
use netcdf_nc_interfaces,only:nc_empi
use netcdf_nc_interfaces,only:nc_efilter
use netcdf_nc_interfaces,only:nc_ercfile
use netcdf_nc_interfaces,only:nc_enullpad
use netcdf_nc_interfaces,only:nc_einmemory
use netcdf_nc_interfaces,only:nc_enofilter
use netcdf_nc_interfaces,only:nc_enczarr
use netcdf_nc_interfaces,only:nc_es3
use netcdf_nc_interfaces,only:nc_eempty
use netcdf_nc_interfaces,only:nc_eobject
use netcdf_nc_interfaces,only:nc_enoobject
use netcdf_nc_interfaces,only:nc_eplugin
use netcdf_nc_interfaces,only:nc_noquantize
use netcdf_nc_interfaces,only:nc_quantize_bitgroom
use netcdf_nc_interfaces,only:nc_strerror
use netcdf_nc_interfaces,only:nc_inq_libvers
use netcdf_nc_interfaces,only:nc_create
use netcdf_nc_interfaces,only:nc__create
use netcdf_nc_interfaces,only:nc__create_mp
use netcdf_nc_interfaces,only:nc_create_par_fortran
use netcdf_nc_interfaces,only:nc_open
use netcdf_nc_interfaces,only:nc__open
use netcdf_nc_interfaces,only:nc__open_mp
use netcdf_nc_interfaces,only:nc_open_mem
use netcdf_nc_interfaces,only:nc_open_par_fortran
use netcdf_nc_interfaces,only:nc_var_par_access
use netcdf_nc_interfaces,only:nc_inq_path
use netcdf_nc_interfaces,only:nc_set_fill
use netcdf_nc_interfaces,only:nc_redef
use netcdf_nc_interfaces,only:nc_enddef
use netcdf_nc_interfaces,only:nc__enddef
use netcdf_nc_interfaces,only:nc_sync
use netcdf_nc_interfaces,only:nc_abort
use netcdf_nc_interfaces,only:nc_close
use netcdf_nc_interfaces,only:nc_delete
use netcdf_nc_interfaces,only:nc_delete_mp
use netcdf_nc_interfaces,only:nc_set_base_pe
use netcdf_nc_interfaces,only:nc_inq_base_pe
use netcdf_nc_interfaces,only:nc_inq
use netcdf_nc_interfaces,only:nc_inq_ndims
use netcdf_nc_interfaces,only:nc_inq_nvars
use netcdf_nc_interfaces,only:nc_inq_natts
use netcdf_nc_interfaces,only:nc_inq_unlimdim
use netcdf_nc_interfaces,only:nc_inq_format
use netcdf_nc_interfaces,only:nc_def_dim
use netcdf_nc_interfaces,only:nc_inq_dimid
use netcdf_nc_interfaces,only:nc_inq_dim
use netcdf_nc_interfaces,only:nc_inq_dimname
use netcdf_nc_interfaces,only:nc_inq_dimlen
use netcdf_nc_interfaces,only:nc_rename_dim
use netcdf_nc_interfaces,only:nc_def_var
use netcdf_nc_interfaces,only:nc_inq_var
use netcdf_nc_interfaces,only:nc_inq_varid
use netcdf_nc_interfaces,only:nc_inq_varname
use netcdf_nc_interfaces,only:nc_inq_vartype
use netcdf_nc_interfaces,only:nc_inq_varndims
use netcdf_nc_interfaces,only:nc_inq_vardimid
use netcdf_nc_interfaces,only:nc_inq_varnatts
use netcdf_nc_interfaces,only:nc_rename_var
use netcdf_nc_interfaces,only:nc_put_var_text
use netcdf_nc_interfaces,only:nc_get_var_text
use netcdf_nc_interfaces,only:nc_put_var_uchar
use netcdf_nc_interfaces,only:nc_get_var_uchar
use netcdf_nc_interfaces,only:nc_put_var_schar
use netcdf_nc_interfaces,only:nc_get_var_schar
use netcdf_nc_interfaces,only:nc_put_var_short
use netcdf_nc_interfaces,only:nc_get_var_short
use netcdf_nc_interfaces,only:nc_put_var_int
use netcdf_nc_interfaces,only:nc_get_var_int
use netcdf_nc_interfaces,only:nc_put_var_long
use netcdf_nc_interfaces,only:nc_get_var_long
use netcdf_nc_interfaces,only:nc_put_var_float
use netcdf_nc_interfaces,only:nc_get_var_float
use netcdf_nc_interfaces,only:nc_put_var_double
use netcdf_nc_interfaces,only:nc_get_var_double
use netcdf_nc_interfaces,only:nc_put_var_longlong
use netcdf_nc_interfaces,only:nc_get_var_longlong
use netcdf_nc_interfaces,only:nc_put_var1_text
use netcdf_nc_interfaces,only:nc_get_var1_text
use netcdf_nc_interfaces,only:nc_put_var1_uchar
use netcdf_nc_interfaces,only:nc_get_var1_uchar
use netcdf_nc_interfaces,only:nc_put_var1_schar
use netcdf_nc_interfaces,only:nc_get_var1_schar
use netcdf_nc_interfaces,only:nc_put_var1_short
use netcdf_nc_interfaces,only:nc_get_var1_short
use netcdf_nc_interfaces,only:nc_put_var1_int
use netcdf_nc_interfaces,only:nc_get_var1_int
use netcdf_nc_interfaces,only:nc_put_var1_long
use netcdf_nc_interfaces,only:nc_get_var1_long
use netcdf_nc_interfaces,only:nc_put_var1_float
use netcdf_nc_interfaces,only:nc_get_var1_float
use netcdf_nc_interfaces,only:nc_put_var1_double
use netcdf_nc_interfaces,only:nc_get_var1_double
use netcdf_nc_interfaces,only:nc_put_var1_longlong
use netcdf_nc_interfaces,only:nc_get_var1_longlong
use netcdf_nc_interfaces,only:nc_put_var1
use netcdf_nc_interfaces,only:nc_get_var1
use netcdf_nc_interfaces,only:nc_put_vara_text
use netcdf_nc_interfaces,only:nc_get_vara_text
use netcdf_nc_interfaces,only:nc_put_vara_uchar
use netcdf_nc_interfaces,only:nc_get_vara_uchar
use netcdf_nc_interfaces,only:nc_put_vara_schar
use netcdf_nc_interfaces,only:nc_get_vara_schar
use netcdf_nc_interfaces,only:nc_put_vara_short
use netcdf_nc_interfaces,only:nc_get_vara_short
use netcdf_nc_interfaces,only:nc_put_vara_int
use netcdf_nc_interfaces,only:nc_get_vara_int
use netcdf_nc_interfaces,only:nc_put_vara_long
use netcdf_nc_interfaces,only:nc_get_vara_long
use netcdf_nc_interfaces,only:nc_put_vara_float
use netcdf_nc_interfaces,only:nc_get_vara_float
use netcdf_nc_interfaces,only:nc_put_vara_double
use netcdf_nc_interfaces,only:nc_get_vara_double
use netcdf_nc_interfaces,only:nc_put_vara_longlong
use netcdf_nc_interfaces,only:nc_get_vara_longlong
use netcdf_nc_interfaces,only:nc_put_vara
use netcdf_nc_interfaces,only:nc_get_vara
use netcdf_nc_interfaces,only:nc_put_vars_text
use netcdf_nc_interfaces,only:nc_get_vars_text
use netcdf_nc_interfaces,only:nc_put_vars_uchar
use netcdf_nc_interfaces,only:nc_get_vars_uchar
use netcdf_nc_interfaces,only:nc_put_vars_schar
use netcdf_nc_interfaces,only:nc_get_vars_schar
use netcdf_nc_interfaces,only:nc_put_vars_short
use netcdf_nc_interfaces,only:nc_get_vars_short
use netcdf_nc_interfaces,only:nc_put_vars_int
use netcdf_nc_interfaces,only:nc_get_vars_int
use netcdf_nc_interfaces,only:nc_put_vars_long
use netcdf_nc_interfaces,only:nc_get_vars_long
use netcdf_nc_interfaces,only:nc_put_vars_float
use netcdf_nc_interfaces,only:nc_get_vars_float
use netcdf_nc_interfaces,only:nc_put_vars_double
use netcdf_nc_interfaces,only:nc_get_vars_double
use netcdf_nc_interfaces,only:nc_put_vars_longlong
use netcdf_nc_interfaces,only:nc_get_vars_longlong
use netcdf_nc_interfaces,only:nc_put_vars
use netcdf_nc_interfaces,only:nc_get_vars
use netcdf_nc_interfaces,only:nc_put_varm_text
use netcdf_nc_interfaces,only:nc_get_varm_text
use netcdf_nc_interfaces,only:nc_put_varm_uchar
use netcdf_nc_interfaces,only:nc_get_varm_uchar
use netcdf_nc_interfaces,only:nc_put_varm_schar
use netcdf_nc_interfaces,only:nc_get_varm_schar
use netcdf_nc_interfaces,only:nc_put_varm_short
use netcdf_nc_interfaces,only:nc_get_varm_short
use netcdf_nc_interfaces,only:nc_put_varm_int
use netcdf_nc_interfaces,only:nc_get_varm_int
use netcdf_nc_interfaces,only:nc_put_varm_long
use netcdf_nc_interfaces,only:nc_get_varm_long
use netcdf_nc_interfaces,only:nc_put_varm_float
use netcdf_nc_interfaces,only:nc_get_varm_float
use netcdf_nc_interfaces,only:nc_put_varm_double
use netcdf_nc_interfaces,only:nc_get_varm_double
use netcdf_nc_interfaces,only:nc_put_varm_longlong
use netcdf_nc_interfaces,only:nc_get_varm_longlong
use netcdf_nc_interfaces,only:nc_put_var
use netcdf_nc_interfaces,only:nc_get_var
use netcdf_nc_interfaces,only:nc_inq_att
use netcdf_nc_interfaces,only:nc_inq_attid
use netcdf_nc_interfaces,only:nc_inq_atttype
use netcdf_nc_interfaces,only:nc_inq_attlen
use netcdf_nc_interfaces,only:nc_inq_attname
use netcdf_nc_interfaces,only:nc_copy_att
use netcdf_nc_interfaces,only:nc_rename_att
use netcdf_nc_interfaces,only:nc_del_att
use netcdf_nc_interfaces,only:nc_put_att_text
use netcdf_nc_interfaces,only:nc_get_att_text
use netcdf_nc_interfaces,only:nc_put_att_uchar
use netcdf_nc_interfaces,only:nc_get_att_uchar
use netcdf_nc_interfaces,only:nc_put_att_schar
use netcdf_nc_interfaces,only:nc_get_att_schar
use netcdf_nc_interfaces,only:nc_put_att_short
use netcdf_nc_interfaces,only:nc_get_att_short
use netcdf_nc_interfaces,only:nc_put_att_int
use netcdf_nc_interfaces,only:nc_put_att_longlong
use netcdf_nc_interfaces,only:nc_get_att_int
use netcdf_nc_interfaces,only:nc_put_att_long
use netcdf_nc_interfaces,only:nc_get_att_long
use netcdf_nc_interfaces,only:nc_get_att_longlong
use netcdf_nc_interfaces,only:nc_put_att_float
use netcdf_nc_interfaces,only:nc_get_att_float
use netcdf_nc_interfaces,only:nc_put_att_double
use netcdf_nc_interfaces,only:nc_get_att_double
use netcdf_nc_interfaces,only:nc_put_att
use netcdf_nc_interfaces,only:nc_get_att
use netcdf_nc_interfaces,only:nc_copy_var
use netcdf_nc_interfaces,only:nc_set_default_format
use netcdf_nc_interfaces,only:nc_def_var_szip
use netcdf_nc_interfaces,only:nc_def_var_quantize
use netcdf_nc_interfaces,only:addcnullchar
use netcdf_nc_interfaces,only:stripcnullchar
interface
function nc_inq_ncid(ncid,name,grp_ncid) bind(c)
integer(4),value::ncid
character(1_8,1),intent(in)::name(1_8:*)
integer(4),intent(inout)::grp_ncid
integer(4)::nc_inq_ncid
end
end interface
interface
function nc_inq_numgrps(ncid,numgrps) bind(c)
integer(4),value::ncid
integer(4),intent(inout)::numgrps
integer(4)::nc_inq_numgrps
end
end interface
interface
function nc_inq_numtypes(ncid,numtypes) bind(c)
integer(4),value::ncid
integer(4),intent(inout)::numtypes
integer(4)::nc_inq_numtypes
end
end interface
interface
function nc_inq_grps(ncid,numgrps,ncids) bind(c)
integer(4),value::ncid
integer(4),intent(inout)::numgrps
integer(4),intent(inout)::ncids(1_8:*)
integer(4)::nc_inq_grps
end
end interface
interface
function nc_inq_grpname(ncid,name) bind(c)
integer(4),value::ncid
character(1_8,1),intent(inout)::name(1_8:*)
integer(4)::nc_inq_grpname
end
end interface
interface
function nc_inq_grpname_full(ncid,nlen,name) bind(c)
integer(4),value::ncid
integer(8),intent(inout)::nlen
character(1_8,1),intent(inout)::name(1_8:*)
integer(4)::nc_inq_grpname_full
end
end interface
interface
function nc_inq_grpname_len(ncid,nlen) bind(c)
integer(4),value::ncid
integer(8),intent(inout)::nlen
integer(4)::nc_inq_grpname_len
end
end interface
interface
function nc_inq_grp_full_ncid(ncid,full_name,grp_ncid) bind(c)
integer(4),value::ncid
character(1_8,1),intent(inout)::full_name(1_8:*)
integer(4),intent(inout)::grp_ncid
integer(4)::nc_inq_grp_full_ncid
end
end interface
interface
function nc_inq_grp_parent(ncid,parent_ncid) bind(c)
integer(4),value::ncid
integer(4),intent(inout)::parent_ncid
integer(4)::nc_inq_grp_parent
end
end interface
interface
function nc_inq_grp_ncid(ncid,grp_name,grp_ncid) bind(c)
integer(4),value::ncid
character(1_8,1),intent(in)::grp_name(1_8:*)
integer(4),intent(inout)::grp_ncid
integer(4)::nc_inq_grp_ncid
end
end interface
interface
function nc_inq_varids_f(ncid,nvars,varids) bind(c)
integer(4),value::ncid
integer(4),intent(inout)::nvars
integer(4),intent(inout)::varids(1_8:*)
integer(4)::nc_inq_varids_f
end
end interface
interface
function nc_inq_dimids_f(ncid,ndims,dimids,parent) bind(c)
integer(4),value::ncid
integer(4),intent(inout)::ndims
integer(4),intent(inout)::dimids(1_8:*)
integer(4),value::parent
integer(4)::nc_inq_dimids_f
end
end interface
interface
function nc_inq_typeids(ncid,ntypes,typeids) bind(c)
integer(4),value::ncid
integer(4),intent(inout)::ntypes
integer(4),intent(inout)::typeids(1_8:*)
integer(4)::nc_inq_typeids
end
end interface
interface
function nc_inq_typeid(ncid,name,typeid) bind(c)
integer(4),value::ncid
character(1_8,1),intent(in)::name(1_8:*)
integer(4),intent(inout)::typeid
integer(4)::nc_inq_typeid
end
end interface
interface
function nc_def_grp(parent_ncid,name,new_ncid) bind(c)
integer(4),value::parent_ncid
character(1_8,1),intent(in)::name(1_8:*)
integer(4),intent(inout)::new_ncid
integer(4)::nc_def_grp
end
end interface
interface
function nc_rename_grp(grpid,name) bind(c)
integer(4),value::grpid
character(1_8,1),intent(in)::name(1_8:*)
integer(4)::nc_rename_grp
end
end interface
interface
function nc_def_compound(ncid,isize,name,typeidp) bind(c)
integer(4),value::ncid
integer(8),value::isize
character(1_8,1),intent(in)::name(1_8:*)
integer(4),intent(inout)::typeidp
integer(4)::nc_def_compound
end
end interface
interface
function nc_insert_compound(ncid,xtype,name,offset,field_typeid) bind(c)
integer(4),value::ncid
integer(4),value::xtype
character(1_8,1),intent(in)::name(1_8:*)
integer(8),value::offset
integer(4),value::field_typeid
integer(4)::nc_insert_compound
end
end interface
interface
function nc_insert_array_compound_f(ncid,xtype,name,offset,field_typeid,ndims,dim_sizes) bind(c)
integer(4),value::ncid
integer(4),value::xtype
character(1_8,1),intent(in)::name(1_8:*)
integer(8),value::offset
integer(4),value::field_typeid
integer(4),value::ndims
integer(4),intent(in)::dim_sizes(1_8:*)
integer(4)::nc_insert_array_compound_f
end
end interface
interface
function nc_inq_type(ncid,xtype,name,isize) bind(c)
integer(4),value::ncid
integer(4),value::xtype
character(1_8,1),intent(in)::name(1_8:*)
integer(8),intent(inout)::isize
integer(4)::nc_inq_type
end
end interface
interface
function nc_inq_compound(ncid,xtype,name,isize,nfieldsp) bind(c)
integer(4),value::ncid
integer(4),value::xtype
character(1_8,1),intent(inout)::name(1_8:*)
integer(8),intent(inout)::isize
integer(8),intent(inout)::nfieldsp
integer(4)::nc_inq_compound
end
end interface
interface
function nc_inq_compound_name(ncid,xtype,name) bind(c)
integer(4),value::ncid
integer(4),value::xtype
character(1_8,1),intent(inout)::name(1_8:*)
integer(4)::nc_inq_compound_name
end
end interface
interface
function nc_inq_compound_size(ncid,xtype,isize) bind(c)
integer(4),value::ncid
integer(4),value::xtype
integer(8),intent(inout)::isize
integer(4)::nc_inq_compound_size
end
end interface
interface
function nc_inq_compound_nfields(ncid,xtype,nfieldsp) bind(c)
integer(4),value::ncid
integer(4),value::xtype
integer(8),intent(inout)::nfieldsp
integer(4)::nc_inq_compound_nfields
end
end interface
interface
function nc_inq_compound_field_ndims(ncid,xtype,fieldid,ndims) bind(c)
integer(4),value::ncid
integer(4),value::xtype
integer(4),value::fieldid
integer(4),intent(inout)::ndims
integer(4)::nc_inq_compound_field_ndims
end
end interface
interface
function nc_inq_compound_field_f(ncid,xtype,fieldid,name,offsetp,field_typeidp,ndimsp,dim_sizesp) bind(c)
integer(4),value::ncid
integer(4),value::xtype
integer(4),value::fieldid
character(1_8,1),intent(inout)::name(1_8:*)
integer(8),intent(inout)::offsetp
integer(4),intent(inout)::field_typeidp
integer(4),intent(inout)::ndimsp
integer(4),intent(inout)::dim_sizesp(1_8:*)
integer(4)::nc_inq_compound_field_f
end
end interface
interface
function nc_inq_compound_fieldoffset(ncid,xtype,fieldid,offsetp) bind(c)
integer(4),value::ncid
integer(4),value::xtype
integer(4),value::fieldid
integer(8),intent(inout)::offsetp
integer(4)::nc_inq_compound_fieldoffset
end
end interface
interface
function nc_inq_compound_fieldname(ncid,xtype,fieldid,name) bind(c)
integer(4),value::ncid
integer(4),value::xtype
integer(4),value::fieldid
character(1_8,1),intent(inout)::name(1_8:*)
integer(4)::nc_inq_compound_fieldname
end
end interface
interface
function nc_inq_compound_fieldindex(ncid,xtype,name,fieldidp) bind(c)
integer(4),value::ncid
integer(4),value::xtype
character(1_8,1),intent(in)::name(1_8:*)
integer(4),intent(inout)::fieldidp
integer(4)::nc_inq_compound_fieldindex
end
end interface
interface
function nc_inq_compound_fieldtype(ncid,xtype,fieldid,field_typeidp) bind(c)
integer(4),value::ncid
integer(4),value::xtype
integer(4),value::fieldid
integer(4),intent(inout)::field_typeidp
integer(4)::nc_inq_compound_fieldtype
end
end interface
interface
function nc_inq_compound_fieldndims(ncid,xtype,fieldid,ndimsp) bind(c)
integer(4),value::ncid
integer(4),value::xtype
integer(4),value::fieldid
integer(4),intent(inout)::ndimsp
integer(4)::nc_inq_compound_fieldndims
end
end interface
interface
function nc_inq_compound_fielddim_sizes(ncid,xtype,fieldid,dim_sizes) bind(c)
integer(4),value::ncid
integer(4),value::xtype
integer(4),value::fieldid
integer(4),intent(inout)::dim_sizes(1_8:*)
integer(4)::nc_inq_compound_fielddim_sizes
end
end interface
interface
function nc_def_vlen(ncid,name,base_typeid,xtypep) bind(c)
integer(4),value::ncid
character(1_8,1),intent(in)::name(1_8:*)
integer(4),value::base_typeid
integer(4),intent(inout)::xtypep
integer(4)::nc_def_vlen
end
end interface
interface
function nc_inq_vlen(ncid,xtype,name,datum_sizep,base_nc_typep) bind(c)
integer(4),value::ncid
integer(4),value::xtype
character(1_8,1),intent(inout)::name(1_8:*)
integer(8),intent(inout)::datum_sizep
integer(4),intent(inout)::base_nc_typep
integer(4)::nc_inq_vlen
end
end interface
interface
function nc_inq_user_type(ncid,xtype,name,isize,base_nc_typep,nfieldsp,classp) bind(c)
integer(4),value::ncid
integer(4),value::xtype
character(1_8,1),intent(inout)::name(1_8:*)
integer(8),intent(inout)::isize
integer(4),intent(inout)::base_nc_typep
integer(8),intent(inout)::nfieldsp
integer(4),intent(inout)::classp
integer(4)::nc_inq_user_type
end
end interface
interface
function nc_def_enum(ncid,base_typeid,name,typeidp) bind(c)
integer(4),value::ncid
integer(4),value::base_typeid
character(1_8,1),intent(in)::name(1_8:*)
integer(4),intent(out)::typeidp
integer(4)::nc_def_enum
end
end interface
interface
function nc_insert_enum(ncid,xtype,name,values) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::xtype
character(1_8,1),intent(in)::name(1_8:*)
type(c_ptr),value::values
integer(4)::nc_insert_enum
end
end interface
interface
function nc_inq_enum(ncid,xtype,name,base_nc_typep,base_sizep,num_membersp) bind(c)
integer(4),value::ncid
integer(4),value::xtype
character(1_8,1),intent(inout)::name(1_8:*)
integer(4),intent(inout)::base_nc_typep
integer(8),intent(inout)::base_sizep
integer(8),intent(inout)::num_membersp
integer(4)::nc_inq_enum
end
end interface
interface
function nc_inq_enum_member(ncid,xtype,idx,name,value) bind(c)
integer(4),value::ncid
integer(4),value::xtype
integer(4),value::idx
character(1_8,1),intent(inout)::name(1_8:*)
character(1_8,1),intent(out)::value(1_8:*)
integer(4)::nc_inq_enum_member
end
end interface
interface
function nc_inq_enum_ident(ncid,xtype,val,name) bind(c)
integer(4),value::ncid
integer(4),value::xtype
integer(8),value::val
character(1_8,1),intent(inout)::name(1_8:*)
integer(4)::nc_inq_enum_ident
end
end interface
interface
function nc_def_opaque(ncid,isize,name,xtypep) bind(c)
integer(4),value::ncid
integer(8),value::isize
character(1_8,1),intent(in)::name(1_8:*)
integer(4),intent(out)::xtypep
integer(4)::nc_def_opaque
end
end interface
interface
function nc_inq_opaque(ncid,xtype,name,sizep) bind(c)
integer(4),value::ncid
integer(4),value::xtype
character(1_8,1),intent(out)::name(1_8:*)
integer(8),intent(out)::sizep
integer(4)::nc_inq_opaque
end
end interface
interface
function nc_def_var_fill(ncid,varid,no_fill,cfill_value_p) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
integer(4),value::no_fill
type(c_ptr),value::cfill_value_p
integer(4)::nc_def_var_fill
end
end interface
interface
function nc_inq_var_fill(ncid,varid,no_fill,fill_value) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(4),intent(inout)::no_fill
character(1_8,1),intent(inout)::fill_value(1_8:*)
integer(4)::nc_inq_var_fill
end
end interface
interface
function nc_inq_varnparams(ncid,varid,nparamsp) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(8),intent(inout)::nparamsp
integer(4)::nc_inq_varnparams
end
end interface
interface
function nc_inq_var_szip(ncid,varid,options_mask,pixels_per_block) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(4),intent(inout)::options_mask
integer(4),intent(inout)::pixels_per_block
integer(4)::nc_inq_var_szip
end
end interface
interface
function nc_inq_var_quantize(ncid,varid,quantize_mode,nsd) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(4),intent(inout)::quantize_mode
integer(4),intent(inout)::nsd
integer(4)::nc_inq_var_quantize
end
end interface
interface
function nc_def_var_fletcher32(ncid,varid,fletcher32) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(4),value::fletcher32
integer(4)::nc_def_var_fletcher32
end
end interface
interface
function nc_inq_var_fletcher32(ncid,varid,fletcher32) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(4),intent(inout)::fletcher32
integer(4)::nc_inq_var_fletcher32
end
end interface
interface
function nc_def_var_deflate(ncid,varid,shuffle,deflate,deflate_level) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(4),value::shuffle
integer(4),value::deflate
integer(4),value::deflate_level
integer(4)::nc_def_var_deflate
end
end interface
interface
function nc_inq_var_deflate(ncid,varid,shuffle,deflate,deflate_level) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(4),intent(inout)::shuffle
integer(4),intent(inout)::deflate
integer(4),intent(inout)::deflate_level
integer(4)::nc_inq_var_deflate
end
end interface
interface
function nc_def_var_zstandard(ncid,varid,zstandard_level) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(4),value::zstandard_level
integer(4)::nc_def_var_zstandard
end
end interface
interface
function nc_inq_var_zstandard(ncid,varid,zstandard,zstandard_level) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(4),intent(inout)::zstandard
integer(4),intent(inout)::zstandard_level
integer(4)::nc_inq_var_zstandard
end
end interface
interface
function nc_def_var_chunking(ncid,varid,contiguousp,chunksizesp) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(4),value::contiguousp
integer(8),intent(inout)::chunksizesp
integer(4)::nc_def_var_chunking
end
end interface
interface
function nc_inq_var_chunking(ncid,varid,contiguousp,chunksizesp) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(4),intent(inout)::contiguousp
integer(8),intent(inout)::chunksizesp(1_8:*)
integer(4)::nc_inq_var_chunking
end
end interface
interface
function nc_def_var_chunking_ints(ncid,varid,contiguousp,chunksizesp) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
integer(4),value::contiguousp
type(c_ptr),value::chunksizesp
integer(4)::nc_def_var_chunking_ints
end
end interface
interface
function nc_inq_var_chunking_ints(ncid,varid,contiguousp,chunksizesp) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(4),intent(inout)::contiguousp
integer(4),intent(inout)::chunksizesp(1_8:*)
integer(4)::nc_inq_var_chunking_ints
end
end interface
interface
function nc_def_var_endian(ncid,varid,endiann) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(4),value::endiann
integer(4)::nc_def_var_endian
end
end interface
interface
function nc_inq_var_endian(ncid,varid,endiann) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(4),intent(inout)::endiann
integer(4)::nc_inq_var_endian
end
end interface
interface
function nc_def_var_filter(ncid,varid,id,nparams,params) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(4),value::id
integer(8),value::nparams
integer(4)::params(1_8:*)
integer(4)::nc_def_var_filter
end
end interface
interface
function nc_inq_var_filter(ncid,varid,id,nparams,params) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(4),intent(inout)::id
integer(8),intent(inout)::nparams
integer(4),intent(inout)::params(1_8:*)
integer(4)::nc_inq_var_filter
end
end interface
interface
function nc_put_vlen_element(ncid,xtype,vlen_element,nlen,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::xtype
character(1_8,1),intent(inout)::vlen_element(1_8:*)
integer(8),value::nlen
type(c_ptr),value::op
integer(4)::nc_put_vlen_element
end
end interface
interface
function nc_get_vlen_element(ncid,xtype,vlen_element,nlen,op) bind(c)
integer(4),value::ncid
integer(4),value::xtype
character(1_8,1),intent(inout)::vlen_element(1_8:*)
integer(8),intent(inout)::nlen
character(1_8,1),intent(inout)::op(1_8:*)
integer(4)::nc_get_vlen_element
end
end interface
interface
function nc_free_vlen(vl) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
type(c_ptr),value::vl
integer(4)::nc_free_vlen
end
end interface
interface
function nc_free_vlens(len,vl) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(8),intent(in)::len
type(c_ptr),value::vl
integer(4)::nc_free_vlens
end
end interface
interface
function nc_free_string(len,vl) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(8),intent(in)::len
type(c_ptr),value::vl
integer(4)::nc_free_string
end
end interface
interface
function nc_set_chunk_cache_ints(size,nelems,preemption) bind(c)
integer(4),value::size
integer(4),value::nelems
integer(4),value::preemption
integer(4)::nc_set_chunk_cache_ints
end
end interface
interface
function nc_get_chunk_cache_ints(size,nelems,preemption) bind(c)
integer(4),intent(inout)::size
integer(4),intent(inout)::nelems
integer(4),intent(inout)::preemption
integer(4)::nc_get_chunk_cache_ints
end
end interface
interface
function nc_set_var_chunk_cache_ints(ncid,varid,size,nelems,preemption) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(4),value::size
integer(4),value::nelems
integer(4),value::preemption
integer(4)::nc_set_var_chunk_cache_ints
end
end interface
interface
function nc_get_var_chunk_cache_ints(ncid,varid,size,nelems,preemption) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(4),intent(inout)::size
integer(4),intent(inout)::nelems
integer(4),intent(inout)::preemption
integer(4)::nc_get_var_chunk_cache_ints
end
end interface
interface
function nc_set_chunk_cache(size,nelems,preemption) bind(c)
integer(8),value::size
integer(8),value::nelems
real(4),value::preemption
integer(4)::nc_set_chunk_cache
end
end interface
interface
function nc_get_chunk_cache(size,nelems,preemption) bind(c)
integer(8),intent(inout)::size
integer(8),intent(inout)::nelems
real(4),intent(inout)::preemption
integer(4)::nc_get_chunk_cache
end
end interface
end
