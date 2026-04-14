!mod$ v1 sum:6fcb6f21beb00eda
!need$ 29af46a3c2cbb404 n netcdf_nc_interfaces
module netcdf_fortv2_c_interfaces
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
subroutine c_ncpopt(val) bind(c)
integer(4),value::val
end
end interface
interface
subroutine c_ncgopt(val) bind(c)
integer(4),intent(out)::val
end
end interface
interface
function c_nccre(pathname,clobmode,rcode) bind(c)
character(1_8,1),intent(in)::pathname(1_8:*)
integer(4),value::clobmode
integer(4),intent(out)::rcode
integer(4)::c_nccre
end
end interface
interface
function c_ncopn(pathname,rwmode,rcode) bind(c)
character(1_8,1),intent(in)::pathname(1_8:*)
integer(4),value::rwmode
integer(4),intent(out)::rcode
integer(4)::c_ncopn
end
end interface
interface
function c_ncddef(ncid,dimname,dimlen,rcode) bind(c)
integer(4),value::ncid
character(1_8,1),intent(in)::dimname(1_8:*)
integer(4),value::dimlen
integer(4),intent(out)::rcode
integer(4)::c_ncddef
end
end interface
interface
function c_ncdid(ncid,dimname,rcode) bind(c)
integer(4),value::ncid
character(1_8,1),intent(in)::dimname(1_8:*)
integer(4),intent(out)::rcode
integer(4)::c_ncdid
end
end interface
interface
function c_ncvdef(ncid,varname,datatype,ndims,dimidp,rcode) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
character(1_8,1),intent(in)::varname(1_8:*)
integer(4),value::datatype
integer(4),value::ndims
type(c_ptr),value::dimidp
integer(4),intent(out)::rcode
integer(4)::c_ncvdef
end
end interface
interface
function c_ncvid(ncid,varname,rcode) bind(c)
integer(4),value::ncid
character(1_8,1),intent(in)::varname(1_8:*)
integer(4),intent(out)::rcode
integer(4)::c_ncvid
end
end interface
interface
function c_nctlen(datatype,rcode) bind(c)
integer(4),value::datatype
integer(4),intent(out)::rcode
integer(4)::c_nctlen
end
end interface
interface
subroutine c_ncclos(ncid,rcode) bind(c)
integer(4),value::ncid
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncredf(ncid,rcode) bind(c)
integer(4),value::ncid
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncendf(ncid,rcode) bind(c)
integer(4),value::ncid
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncinq(ncid,indims,invars,inatts,irecdim,rcode) bind(c)
integer(4),value::ncid
integer(4),intent(out)::indims
integer(4),intent(out)::invars
integer(4),intent(out)::inatts
integer(4),intent(out)::irecdim
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncsnc(ncid,rcode) bind(c)
integer(4),value::ncid
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncabor(ncid,rcode) bind(c)
integer(4),value::ncid
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncdinq(ncid,dimid,dimname,size,rcode) bind(c)
integer(4),value::ncid
integer(4),value::dimid
character(1_8,1),intent(out)::dimname(1_8:*)
integer(4),intent(out)::size
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncdren(ncid,dimid,dimname,rcode) bind(c)
integer(4),value::ncid
integer(4),value::dimid
character(1_8,1),intent(in)::dimname(1_8:*)
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncvinq(ncid,varid,varname,datatype,indims,dimarray,inatts,rcode) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(inout)::varname(1_8:*)
integer(4),intent(out)::datatype
integer(4),intent(out)::indims
integer(4),intent(out)::dimarray(1_8:*)
integer(4),intent(out)::inatts
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncvpt1(ncid,varid,indices,value,rcode) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::indices
type(c_ptr),value::value
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncvp1c(ncid,varid,indices,value,rcode) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::indices
character(1_8,1),intent(in)::value(1_8:*)
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncvpt(ncid,varid,start,count,value,rcode) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::start
type(c_ptr),value::count
type(c_ptr),value::value
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncvptc(ncid,varid,start,count,value,lenstr,rcode) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::start
type(c_ptr),value::count
character(1_8,1),intent(in)::value(1_8:*)
integer(4),value::lenstr
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncvptg(ncid,varid,start,count,strides,imap,value,rcode) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::start
type(c_ptr),value::count
type(c_ptr),value::strides
type(c_ptr),value::imap
type(c_ptr),value::value
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncvpgc(ncid,varid,start,count,strides,imap,value,rcode) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::start
type(c_ptr),value::count
type(c_ptr),value::strides
type(c_ptr),value::imap
character(1_8,1),intent(in)::value(1_8:*)
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncvgt1(ncid,varid,indices,value,rcode) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::indices
character(1_8,1),intent(out)::value(1_8:*)
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncvg1c(ncid,varid,indices,value,rcode) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::indices
character(1_8,1),intent(inout)::value(1_8:*)
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncvgt(ncid,varid,start,count,value,rcode) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::start
type(c_ptr),value::count
character(1_8,1),intent(out)::value(1_8:*)
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncvgtc(ncid,varid,start,count,value,lenstr,rcode) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::start
type(c_ptr),value::count
character(1_8,1),intent(inout)::value(1_8:*)
integer(4),value::lenstr
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncvgtg(ncid,varid,start,count,strides,imap,value,rcode) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::start
type(c_ptr),value::count
type(c_ptr),value::strides
type(c_ptr),value::imap
character(1_8,1),intent(out)::value(1_8:*)
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncvggc(ncid,varid,start,count,strides,imap,value,rcode) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::start
type(c_ptr),value::count
type(c_ptr),value::strides
type(c_ptr),value::imap
character(1_8,1),intent(out)::value(1_8:*)
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncvren(ncid,varid,varname,rcode) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::varname(1_8:*)
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncapt(ncid,varid,attname,datatype,attlen,value,rcode) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::attname(1_8:*)
integer(4),value::datatype
integer(8),value::attlen
type(c_ptr),value::value
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncaptc(ncid,varid,attname,datatype,attlen,string,rcode) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::attname(1_8:*)
integer(4),value::datatype
integer(8),value::attlen
character(1_8,1),intent(in)::string(1_8:*)
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncainq(ncid,varid,attname,datatype,attlen,rcode) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::attname(1_8:*)
integer(4),intent(out)::datatype
integer(4),intent(out)::attlen
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncagt(ncid,varid,attname,value,rcode) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::attname(1_8:*)
character(1_8,1),intent(out)::value(1_8:*)
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncagtc(ncid,varid,attname,value,attlen,rcode) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::attname(1_8:*)
character(1_8,1),intent(out)::value(1_8:*)
integer(4),value::attlen
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncacpy(inncid,invarid,attname,outncid,outvarid,rcode) bind(c)
integer(4),value::inncid
integer(4),value::invarid
character(1_8,1),intent(in)::attname(1_8:*)
integer(4),value::outncid
integer(4),value::outvarid
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncanam(ncid,varid,attnum,newname,rcode) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(4),value::attnum
character(1_8,1),intent(inout)::newname(1_8:*)
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncaren(ncid,varid,attnam,newname,rcode) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::attnam(1_8:*)
character(1_8,1),intent(in)::newname(1_8:*)
integer(4),intent(out)::rcode
end
end interface
interface
subroutine c_ncadel(ncid,varid,attname,rcode) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::attname(1_8:*)
integer(4),intent(out)::rcode
end
end interface
interface
function c_ncsfil(ncid,fillmode,rcode) bind(c)
integer(4),value::ncid
integer(4),value::fillmode
integer(4),intent(out)::rcode
integer(4)::c_ncsfil
end
end interface
interface
function v2data_size(datatype) bind(c)
integer(4),value::datatype
integer(8)::v2data_size
end
end interface
contains
subroutine convert_v2_imap(cncid,cvarid,fmap,cmap,inullp)
integer(4),intent(in)::cncid
integer(4),intent(in)::cvarid
integer(4),intent(in)::fmap(1_8:*)
integer(8),intent(inout)::cmap(:)
integer(4),intent(out)::inullp
end
end
