!mod$ v1 sum:29af46a3c2cbb404
!need$ 6df3a4026c28925a n netcdf_nc_data
module netcdf_nc_interfaces
use netcdf_nc_data,only:c_associated
use netcdf_nc_data,only:c_funloc
use netcdf_nc_data,only:c_funptr
use netcdf_nc_data,only:c_f_pointer
use netcdf_nc_data,only:c_loc
use netcdf_nc_data,only:c_null_funptr
use netcdf_nc_data,only:c_null_ptr
use netcdf_nc_data,only:c_ptr
use netcdf_nc_data,only:c_sizeof
use netcdf_nc_data,only:operator(==)
use netcdf_nc_data,only:operator(/=)
use netcdf_nc_data,only:c_int8_t
use netcdf_nc_data,only:c_int16_t
use netcdf_nc_data,only:c_int32_t
use netcdf_nc_data,only:c_int64_t
use netcdf_nc_data,only:c_int128_t
use netcdf_nc_data,only:c_int
use netcdf_nc_data,only:c_short
use netcdf_nc_data,only:c_long
use netcdf_nc_data,only:c_long_long
use netcdf_nc_data,only:c_signed_char
use netcdf_nc_data,only:c_size_t
use netcdf_nc_data,only:c_intmax_t
use netcdf_nc_data,only:c_intptr_t
use netcdf_nc_data,only:c_ptrdiff_t
use netcdf_nc_data,only:c_int_least8_t
use netcdf_nc_data,only:c_int_fast8_t
use netcdf_nc_data,only:c_int_least16_t
use netcdf_nc_data,only:c_int_fast16_t
use netcdf_nc_data,only:c_int_least32_t
use netcdf_nc_data,only:c_int_fast32_t
use netcdf_nc_data,only:c_int_least64_t
use netcdf_nc_data,only:c_int_fast64_t
use netcdf_nc_data,only:c_int_least128_t
use netcdf_nc_data,only:c_int_fast128_t
use netcdf_nc_data,only:c_float
use netcdf_nc_data,only:c_double
use netcdf_nc_data,only:c_long_double
use netcdf_nc_data,only:c_float_complex
use netcdf_nc_data,only:c_double_complex
use netcdf_nc_data,only:c_long_double_complex
use netcdf_nc_data,only:c_bool
use netcdf_nc_data,only:c_char
use netcdf_nc_data,only:c_null_char
use netcdf_nc_data,only:c_alert
use netcdf_nc_data,only:c_backspace
use netcdf_nc_data,only:c_form_feed
use netcdf_nc_data,only:c_new_line
use netcdf_nc_data,only:c_carriage_return
use netcdf_nc_data,only:c_horizontal_tab
use netcdf_nc_data,only:c_vertical_tab
use netcdf_nc_data,only:c_float128
use netcdf_nc_data,only:c_float128_complex
use netcdf_nc_data,only:c_uint8_t
use netcdf_nc_data,only:c_uint16_t
use netcdf_nc_data,only:c_uint32_t
use netcdf_nc_data,only:c_uint64_t
use netcdf_nc_data,only:c_uint128_t
use netcdf_nc_data,only:c_unsigned_char
use netcdf_nc_data,only:c_unsigned_short
use netcdf_nc_data,only:c_unsigned
use netcdf_nc_data,only:c_unsigned_long
use netcdf_nc_data,only:c_unsigned_long_long
use netcdf_nc_data,only:c_uintmax_t
use netcdf_nc_data,only:c_uint_fast8_t
use netcdf_nc_data,only:c_uint_fast16_t
use netcdf_nc_data,only:c_uint_fast32_t
use netcdf_nc_data,only:c_uint_fast64_t
use netcdf_nc_data,only:c_uint_fast128_t
use netcdf_nc_data,only:c_uint_least8_t
use netcdf_nc_data,only:c_uint_least16_t
use netcdf_nc_data,only:c_uint_least32_t
use netcdf_nc_data,only:c_uint_least64_t
use netcdf_nc_data,only:c_uint_least128_t
use netcdf_nc_data,only:c_f_procpointer
use netcdf_nc_data,only:selected_real_kind
use netcdf_nc_data,only:selected_int_kind
use netcdf_nc_data,only:rk4
use netcdf_nc_data,only:rk8
use netcdf_nc_data,only:ik1
use netcdf_nc_data,only:ik2
use netcdf_nc_data,only:ik4
use netcdf_nc_data,only:ik8
use netcdf_nc_data,only:cint1
use netcdf_nc_data,only:nfint1
use netcdf_nc_data,only:cint2
use netcdf_nc_data,only:nfint2
use netcdf_nc_data,only:cint
use netcdf_nc_data,only:nfint
use netcdf_nc_data,only:cint8
use netcdf_nc_data,only:nfint8
use netcdf_nc_data,only:nfreal
use netcdf_nc_data,only:c_enum
use netcdf_nc_data,only:kind
use netcdf_nc_data,only:nc_nat
use netcdf_nc_data,only:nc_byte
use netcdf_nc_data,only:nc_char
use netcdf_nc_data,only:nc_short
use netcdf_nc_data,only:nc_int
use netcdf_nc_data,only:nc_float
use netcdf_nc_data,only:nc_double
use netcdf_nc_data,only:nc_fill_char
use netcdf_nc_data,only:nc_fill_byte
use netcdf_nc_data,only:nc_fill_short
use netcdf_nc_data,only:nc_fill_int
use netcdf_nc_data,only:nc_fill_float
use netcdf_nc_data,only:nc_fill_double
use netcdf_nc_data,only:nc_nowrite
use netcdf_nc_data,only:nc_write
use netcdf_nc_data,only:nc_clobber
use netcdf_nc_data,only:nc_noclobber
use netcdf_nc_data,only:nc_fill
use netcdf_nc_data,only:nc_nofill
use netcdf_nc_data,only:nc_lock
use netcdf_nc_data,only:nc_share
use netcdf_nc_data,only:nc_strict_nc3
use netcdf_nc_data,only:nc_64bit_offset
use netcdf_nc_data,only:nc_64bit_data
use netcdf_nc_data,only:nc_cdf5
use netcdf_nc_data,only:nc_sizehint_default
use netcdf_nc_data,only:nc_align_chunk
use netcdf_nc_data,only:nc_format_classic
use netcdf_nc_data,only:nc_format_64bit
use netcdf_nc_data,only:nc_format_64bit_offset
use netcdf_nc_data,only:nc_format_64bit_data
use netcdf_nc_data,only:nc_format_cdf5
use netcdf_nc_data,only:nc_diskless
use netcdf_nc_data,only:nc_mmap
use netcdf_nc_data,only:nc_inmemory
use netcdf_nc_data,only:nc_unlimited
use netcdf_nc_data,only:nc_global
use netcdf_nc_data,only:nc_max_dims
use netcdf_nc_data,only:nc_max_attrs
use netcdf_nc_data,only:nc_max_vars
use netcdf_nc_data,only:nc_max_name
use netcdf_nc_data,only:nc_max_var_dims
use netcdf_nc_data,only:nc_noerr
use netcdf_nc_data,only:nc2_err
use netcdf_nc_data,only:nc_syserr
use netcdf_nc_data,only:nc_exdr
use netcdf_nc_data,only:nc_ebadid
use netcdf_nc_data,only:nc_ebfile
use netcdf_nc_data,only:nc_eexist
use netcdf_nc_data,only:nc_einval
use netcdf_nc_data,only:nc_eperm
use netcdf_nc_data,only:nc_enotindefine
use netcdf_nc_data,only:nc_eindefine
use netcdf_nc_data,only:nc_einvalcoords
use netcdf_nc_data,only:nc_emaxdims
use netcdf_nc_data,only:nc_enameinuse
use netcdf_nc_data,only:nc_enotatt
use netcdf_nc_data,only:nc_emaxatts
use netcdf_nc_data,only:nc_ebadtype
use netcdf_nc_data,only:nc_ebaddim
use netcdf_nc_data,only:nc_eunlimpos
use netcdf_nc_data,only:nc_emaxvars
use netcdf_nc_data,only:nc_enotvar
use netcdf_nc_data,only:nc_eglobal
use netcdf_nc_data,only:nc_enotnc
use netcdf_nc_data,only:nc_ests
use netcdf_nc_data,only:nc_emaxname
use netcdf_nc_data,only:nc_eunlimit
use netcdf_nc_data,only:nc_enorecvars
use netcdf_nc_data,only:nc_echar
use netcdf_nc_data,only:nc_eedge
use netcdf_nc_data,only:nc_estride
use netcdf_nc_data,only:nc_ebadname
use netcdf_nc_data,only:nc_erange
use netcdf_nc_data,only:nc_enomem
use netcdf_nc_data,only:nc_evarsize
use netcdf_nc_data,only:nc_edimsize
use netcdf_nc_data,only:nc_etrunc
use netcdf_nc_data,only:nc_eaxistype
use netcdf_nc_data,only:nc_edap
use netcdf_nc_data,only:nc_ecurl
use netcdf_nc_data,only:nc_eio
use netcdf_nc_data,only:nc_enodata
use netcdf_nc_data,only:nc_edapsvc
use netcdf_nc_data,only:nc_edas
use netcdf_nc_data,only:nc_edds
use netcdf_nc_data,only:nc_edatadds
use netcdf_nc_data,only:nc_edapurl
use netcdf_nc_data,only:nc_edapconstraint
use netcdf_nc_data,only:nc_etranslation
use netcdf_nc_data,only:nc_fatal
use netcdf_nc_data,only:nc_verbose
use netcdf_nc_data,only:nc_format_netcdf4
use netcdf_nc_data,only:nc_format_netcdf4_classic
use netcdf_nc_data,only:nc_netcdf4
use netcdf_nc_data,only:nc_classic_model
use netcdf_nc_data,only:nc_long
use netcdf_nc_data,only:nc_ubyte
use netcdf_nc_data,only:nc_ushort
use netcdf_nc_data,only:nc_uint
use netcdf_nc_data,only:nc_int64
use netcdf_nc_data,only:nc_uint64
use netcdf_nc_data,only:nc_string
use netcdf_nc_data,only:nc_vlen
use netcdf_nc_data,only:nc_opaque
use netcdf_nc_data,only:nc_enum
use netcdf_nc_data,only:nc_compound
use netcdf_nc_data,only:nc_fill_ubyte
use netcdf_nc_data,only:nc_fill_ushort
use netcdf_nc_data,only:nc_fill_uint
use netcdf_nc_data,only:nc_fill_int64
use netcdf_nc_data,only:nc_chunk_seq
use netcdf_nc_data,only:nc_chunk_sub
use netcdf_nc_data,only:nc_chunk_sizes
use netcdf_nc_data,only:nc_endian_native
use netcdf_nc_data,only:nc_endian_little
use netcdf_nc_data,only:nc_endian_big
use netcdf_nc_data,only:nc_chunked
use netcdf_nc_data,only:nc_notcontiguous
use netcdf_nc_data,only:nc_contiguous
use netcdf_nc_data,only:nc_nochecksum
use netcdf_nc_data,only:nc_fletcher32
use netcdf_nc_data,only:nc_noshuffle
use netcdf_nc_data,only:nc_shuffle
use netcdf_nc_data,only:nc_independent
use netcdf_nc_data,only:nc_collective
use netcdf_nc_data,only:nc_mpiio
use netcdf_nc_data,only:nc_mpiposix
use netcdf_nc_data,only:nc_pnetcdf
use netcdf_nc_data,only:nc_szip_ec_option_mask
use netcdf_nc_data,only:nc_szip_nn_option_mask
use netcdf_nc_data,only:nc_ehdferr
use netcdf_nc_data,only:nc_ecantread
use netcdf_nc_data,only:nc_ecantwrite
use netcdf_nc_data,only:nc_ecantcreate
use netcdf_nc_data,only:nc_efilemeta
use netcdf_nc_data,only:nc_edimmeta
use netcdf_nc_data,only:nc_eattmeta
use netcdf_nc_data,only:nc_evarmeta
use netcdf_nc_data,only:nc_enocompound
use netcdf_nc_data,only:nc_eattexists
use netcdf_nc_data,only:nc_enotnc4
use netcdf_nc_data,only:nc_estrictnc3
use netcdf_nc_data,only:nc_enotnc3
use netcdf_nc_data,only:nc_enopar
use netcdf_nc_data,only:nc_eparinit
use netcdf_nc_data,only:nc_ebadgrpid
use netcdf_nc_data,only:nc_ebadtypid
use netcdf_nc_data,only:nc_etypdefined
use netcdf_nc_data,only:nc_ebadfield
use netcdf_nc_data,only:nc_ebadclass
use netcdf_nc_data,only:nc_emaptype
use netcdf_nc_data,only:nc_elatefill
use netcdf_nc_data,only:nc_elatedef
use netcdf_nc_data,only:nc_edimscale
use netcdf_nc_data,only:nc_enogrp
use netcdf_nc_data,only:nc_estorage
use netcdf_nc_data,only:nc_ebadchunk
use netcdf_nc_data,only:nc_enotbuilt
use netcdf_nc_data,only:nc_ediskless
use netcdf_nc_data,only:nc_ecantextend
use netcdf_nc_data,only:nc_empi
use netcdf_nc_data,only:nc_efilter
use netcdf_nc_data,only:nc_ercfile
use netcdf_nc_data,only:nc_enullpad
use netcdf_nc_data,only:nc_einmemory
use netcdf_nc_data,only:nc_enofilter
use netcdf_nc_data,only:nc_enczarr
use netcdf_nc_data,only:nc_es3
use netcdf_nc_data,only:nc_eempty
use netcdf_nc_data,only:nc_eobject
use netcdf_nc_data,only:nc_enoobject
use netcdf_nc_data,only:nc_eplugin
use netcdf_nc_data,only:nc_noquantize
use netcdf_nc_data,only:nc_quantize_bitgroom
interface
function nc_strerror(ncerr) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncerr
type(c_ptr)::nc_strerror
end
end interface
interface
function nc_inq_libvers() bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
type(c_ptr)::nc_inq_libvers
end
end interface
interface
function nc_create(path,cmode,ncidp) bind(c)
character(1_8,1),intent(in)::path(1_8:*)
integer(4),value::cmode
integer(4),intent(out)::ncidp
integer(4)::nc_create
end
end interface
interface
function nc__create(path,cmode,initialsz,chunksizehintp,ncidp) bind(c)
character(1_8,1),intent(in)::path(1_8:*)
integer(4),value::cmode
integer(8),value::initialsz
integer(8),intent(in)::chunksizehintp
integer(4),intent(out)::ncidp
integer(4)::nc__create
end
end interface
interface
function nc__create_mp(path,cmode,initialsz,basepe,chunksizehintp,ncidp) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
character(1_8,1),intent(in)::path(1_8:*)
integer(4),value::cmode
integer(8),value::initialsz
type(c_ptr),value::basepe
integer(8),intent(in)::chunksizehintp
integer(4),intent(out)::ncidp
integer(4)::nc__create_mp
end
end interface
interface
function nc_create_par_fortran(path,cmode,comm,info,ncidp) bind(c)
character(1_8,1),intent(in)::path(1_8:*)
integer(4),value::cmode
integer(4),value::comm
integer(4),value::info
integer(4),intent(out)::ncidp
integer(4)::nc_create_par_fortran
end
end interface
interface
function nc_open(path,mode,ncidp) bind(c)
character(1_8,1),intent(in)::path(1_8:*)
integer(4),value::mode
integer(4),intent(out)::ncidp
integer(4)::nc_open
end
end interface
interface
function nc__open(path,mode,chunksizehintp,ncidp) bind(c)
character(1_8,1),intent(in)::path(1_8:*)
integer(4),value::mode
integer(8),intent(in)::chunksizehintp
integer(4),intent(out)::ncidp
integer(4)::nc__open
end
end interface
interface
function nc__open_mp(path,mode,basepe,chunksizehintp,ncidp) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
character(1_8,1),intent(in)::path(1_8:*)
integer(4),value::mode
type(c_ptr),value::basepe
integer(8),intent(in)::chunksizehintp
integer(4),intent(out)::ncidp
integer(4)::nc__open_mp
end
end interface
interface
function nc_open_mem(path,mode,size,memory,ncid) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
character(1_8,1),intent(in)::path(1_8:*)
integer(4),value::mode
integer(8),value::size
type(c_ptr),value::memory
integer(4),intent(out)::ncid
integer(4)::nc_open_mem
end
end interface
interface
function nc_open_par_fortran(path,mode,comm,info,ncidp) bind(c)
character(1_8,1),intent(in)::path(1_8:*)
integer(4),value::mode
integer(4),value::comm
integer(4),value::info
integer(4),intent(out)::ncidp
integer(4)::nc_open_par_fortran
end
end interface
interface
function nc_var_par_access(ncid,varid,par_access) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(4),value::par_access
integer(4)::nc_var_par_access
end
end interface
interface
function nc_inq_path(ncid,pathlen,path) bind(c)
integer(4),value::ncid
integer(8),intent(inout)::pathlen
character(1_8,1),intent(inout)::path(1_8:*)
integer(4)::nc_inq_path
end
end interface
interface
function nc_set_fill(ncid,fillmode,old_modep) bind(c)
integer(4),value::ncid
integer(4),value::fillmode
integer(4),intent(out)::old_modep
integer(4)::nc_set_fill
end
end interface
interface
function nc_redef(ncid) bind(c)
integer(4),value::ncid
integer(4)::nc_redef
end
end interface
interface
function nc_enddef(ncid) bind(c)
integer(4),value::ncid
integer(4)::nc_enddef
end
end interface
interface
function nc__enddef(ncid,h_minfree,v_align,v_minfree,r_align) bind(c)
integer(4),value::ncid
integer(8),value::h_minfree
integer(8),value::v_align
integer(8),value::v_minfree
integer(8),value::r_align
integer(4)::nc__enddef
end
end interface
interface
function nc_sync(ncid) bind(c)
integer(4),value::ncid
integer(4)::nc_sync
end
end interface
interface
function nc_abort(ncid) bind(c)
integer(4),value::ncid
integer(4)::nc_abort
end
end interface
interface
function nc_close(ncid) bind(c)
integer(4),value::ncid
integer(4)::nc_close
end
end interface
interface
function nc_delete(path) bind(c)
character(1_8,1),intent(in)::path(1_8:*)
integer(4)::nc_delete
end
end interface
interface
function nc_delete_mp(path,pe) bind(c)
character(1_8,1),intent(in)::path(1_8:*)
integer(4),value::pe
integer(4)::nc_delete_mp
end
end interface
interface
function nc_set_base_pe(ncid,pe) bind(c)
integer(4),value::ncid
integer(4),value::pe
integer(4)::nc_set_base_pe
end
end interface
interface
function nc_inq_base_pe(ncid,pe) bind(c)
integer(4),value::ncid
integer(4),intent(out)::pe
integer(4)::nc_inq_base_pe
end
end interface
interface
function nc_inq(ncid,ndimsp,nvarsp,ngattsp,unlimdimidp) bind(c)
integer(4),value::ncid
integer(4),intent(out)::ndimsp
integer(4),intent(out)::nvarsp
integer(4),intent(out)::ngattsp
integer(4),intent(out)::unlimdimidp
integer(4)::nc_inq
end
end interface
interface
function nc_inq_ndims(ncid,ndimsp) bind(c)
integer(4),value::ncid
integer(4),intent(out)::ndimsp
integer(4)::nc_inq_ndims
end
end interface
interface
function nc_inq_nvars(ncid,nvarsp) bind(c)
integer(4),value::ncid
integer(4),intent(out)::nvarsp
integer(4)::nc_inq_nvars
end
end interface
interface
function nc_inq_natts(ncid,ngattsp) bind(c)
integer(4),value::ncid
integer(4),intent(out)::ngattsp
integer(4)::nc_inq_natts
end
end interface
interface
function nc_inq_unlimdim(ncid,unlimdimidp) bind(c)
integer(4),value::ncid
integer(4),intent(out)::unlimdimidp
integer(4)::nc_inq_unlimdim
end
end interface
interface
function nc_inq_format(ncid,formatp) bind(c)
integer(4),value::ncid
integer(4),intent(out)::formatp
integer(4)::nc_inq_format
end
end interface
interface
function nc_def_dim(ncid,name,nlen,idp) bind(c)
integer(4),value::ncid
character(1_8,1),intent(in)::name(1_8:*)
integer(8),value::nlen
integer(4),intent(inout)::idp
integer(4)::nc_def_dim
end
end interface
interface
function nc_inq_dimid(ncid,name,idp) bind(c)
integer(4),value::ncid
character(1_8,1),intent(in)::name(1_8:*)
integer(4),intent(inout)::idp
integer(4)::nc_inq_dimid
end
end interface
interface
function nc_inq_dim(ncid,dimid,name,lenp) bind(c)
integer(4),value::ncid
integer(4),value::dimid
character(1_8,1),intent(inout)::name(1_8:*)
integer(8),intent(out)::lenp
integer(4)::nc_inq_dim
end
end interface
interface
function nc_inq_dimname(ncid,dimid,name) bind(c)
integer(4),value::ncid
integer(4),value::dimid
character(1_8,1),intent(inout)::name(1_8:*)
integer(4)::nc_inq_dimname
end
end interface
interface
function nc_inq_dimlen(ncid,dimid,lenp) bind(c)
integer(4),value::ncid
integer(4),value::dimid
integer(8),intent(out)::lenp
integer(4)::nc_inq_dimlen
end
end interface
interface
function nc_rename_dim(ncid,dimid,name) bind(c)
integer(4),value::ncid
integer(4),value::dimid
character(1_8,1),intent(in)::name(1_8:*)
integer(4)::nc_rename_dim
end
end interface
interface
function nc_def_var(ncid,name,xtype,ndims,dimidsp,varidp) bind(c)
integer(4),value::ncid
character(1_8,1),intent(in)::name(1_8:*)
integer(4),value::xtype
integer(4),value::ndims
integer(4),intent(in)::dimidsp(1_8:*)
integer(4),intent(out)::varidp
integer(4)::nc_def_var
end
end interface
interface
function nc_inq_var(ncid,varid,name,xtypep,ndimsp,dimidsp,nattsp) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(out)::name(1_8:*)
integer(4),intent(out)::xtypep
integer(4),intent(out)::ndimsp
integer(4),intent(out)::dimidsp(1_8:*)
integer(4),intent(out)::nattsp
integer(4)::nc_inq_var
end
end interface
interface
function nc_inq_varid(ncid,name,varidp) bind(c)
integer(4),value::ncid
character(1_8,1),intent(in)::name(1_8:*)
integer(4),intent(out)::varidp
integer(4)::nc_inq_varid
end
end interface
interface
function nc_inq_varname(ncid,varid,name) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(out)::name(1_8:*)
integer(4)::nc_inq_varname
end
end interface
interface
function nc_inq_vartype(ncid,varid,xtypep) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(4),intent(out)::xtypep
integer(4)::nc_inq_vartype
end
end interface
interface
function nc_inq_varndims(ncid,varid,ndimsp) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(4),intent(out)::ndimsp
integer(4)::nc_inq_varndims
end
end interface
interface
function nc_inq_vardimid(ncid,varid,dimidsp) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(4),intent(out)::dimidsp(1_8:*)
integer(4)::nc_inq_vardimid
end
end interface
interface
function nc_inq_varnatts(ncid,varid,nattsp) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(4),intent(out)::nattsp
integer(4)::nc_inq_varnatts
end
end interface
interface
function nc_rename_var(ncid,varid,name) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::name(1_8:*)
integer(4)::nc_rename_var
end
end interface
interface
function nc_put_var_text(ncid,varid,op) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::op(1_8:*)
integer(4)::nc_put_var_text
end
end interface
interface
function nc_get_var_text(ncid,varid,ip) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(inout)::ip(1_8:*)
integer(4)::nc_get_var_text
end
end interface
interface
function nc_put_var_uchar(ncid,varid,op) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(1),intent(in)::op(1_8:*)
integer(4)::nc_put_var_uchar
end
end interface
interface
function nc_get_var_uchar(ncid,varid,ip) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(1),intent(out)::ip(1_8:*)
integer(4)::nc_get_var_uchar
end
end interface
interface
function nc_put_var_schar(ncid,varid,op) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(1),intent(in)::op(1_8:*)
integer(4)::nc_put_var_schar
end
end interface
interface
function nc_get_var_schar(ncid,varid,ip) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(1),intent(out)::ip(1_8:*)
integer(4)::nc_get_var_schar
end
end interface
interface
function nc_put_var_short(ncid,varid,op) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(2),intent(in)::op(1_8:*)
integer(4)::nc_put_var_short
end
end interface
interface
function nc_get_var_short(ncid,varid,ip) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(2),intent(out)::ip(1_8:*)
integer(4)::nc_get_var_short
end
end interface
interface
function nc_put_var_int(ncid,varid,op) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(4),intent(in)::op(1_8:*)
integer(4)::nc_put_var_int
end
end interface
interface
function nc_get_var_int(ncid,varid,ip) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(4),intent(out)::ip(1_8:*)
integer(4)::nc_get_var_int
end
end interface
interface
function nc_put_var_long(ncid,varid,op) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(8),intent(in)::op(1_8:*)
integer(4)::nc_put_var_long
end
end interface
interface
function nc_get_var_long(ncid,varid,ip) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(8),intent(out)::ip(1_8:*)
integer(4)::nc_get_var_long
end
end interface
interface
function nc_put_var_float(ncid,varid,op) bind(c)
integer(4),value::ncid
integer(4),value::varid
real(4),intent(in)::op(1_8:*)
integer(4)::nc_put_var_float
end
end interface
interface
function nc_get_var_float(ncid,varid,ip) bind(c)
integer(4),value::ncid
integer(4),value::varid
real(4),intent(out)::ip(1_8:*)
integer(4)::nc_get_var_float
end
end interface
interface
function nc_put_var_double(ncid,varid,op) bind(c)
integer(4),value::ncid
integer(4),value::varid
real(8),intent(in)::op(1_8:*)
integer(4)::nc_put_var_double
end
end interface
interface
function nc_get_var_double(ncid,varid,ip) bind(c)
integer(4),value::ncid
integer(4),value::varid
real(8),intent(out)::ip(1_8:*)
integer(4)::nc_get_var_double
end
end interface
interface
function nc_put_var_longlong(ncid,varid,op) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(8),intent(in)::op(1_8:*)
integer(4)::nc_put_var_longlong
end
end interface
interface
function nc_get_var_longlong(ncid,varid,ip) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(8),intent(out)::ip(1_8:*)
integer(4)::nc_get_var_longlong
end
end interface
interface
function nc_put_var1_text(ncid,varid,indexp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::indexp
character(1_4,1),intent(in)::op
integer(4)::nc_put_var1_text
end
end interface
interface
function nc_get_var1_text(ncid,varid,indexp,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::indexp
character(1_8,1),intent(out)::ip
integer(4)::nc_get_var1_text
end
end interface
interface
function nc_put_var1_uchar(ncid,varid,indexp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::indexp
integer(1),intent(in)::op
integer(4)::nc_put_var1_uchar
end
end interface
interface
function nc_get_var1_uchar(ncid,varid,indexp,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::indexp
integer(1),intent(out)::ip
integer(4)::nc_get_var1_uchar
end
end interface
interface
function nc_put_var1_schar(ncid,varid,indexp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::indexp
integer(1),intent(in)::op
integer(4)::nc_put_var1_schar
end
end interface
interface
function nc_get_var1_schar(ncid,varid,indexp,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::indexp
integer(1),intent(out)::ip
integer(4)::nc_get_var1_schar
end
end interface
interface
function nc_put_var1_short(ncid,varid,indexp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::indexp
integer(2),intent(in)::op
integer(4)::nc_put_var1_short
end
end interface
interface
function nc_get_var1_short(ncid,varid,indexp,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::indexp
integer(2),intent(out)::ip
integer(4)::nc_get_var1_short
end
end interface
interface
function nc_put_var1_int(ncid,varid,indexp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::indexp
integer(4),intent(in)::op
integer(4)::nc_put_var1_int
end
end interface
interface
function nc_get_var1_int(ncid,varid,indexp,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::indexp
integer(4),intent(out)::ip
integer(4)::nc_get_var1_int
end
end interface
interface
function nc_put_var1_long(ncid,varid,indexp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::indexp
integer(8),intent(in)::op
integer(4)::nc_put_var1_long
end
end interface
interface
function nc_get_var1_long(ncid,varid,indexp,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::indexp
integer(8),intent(out)::ip
integer(4)::nc_get_var1_long
end
end interface
interface
function nc_put_var1_float(ncid,varid,indexp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::indexp
real(4),intent(in)::op
integer(4)::nc_put_var1_float
end
end interface
interface
function nc_get_var1_float(ncid,varid,indexp,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::indexp
real(4),intent(out)::ip
integer(4)::nc_get_var1_float
end
end interface
interface
function nc_put_var1_double(ncid,varid,indexp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::indexp
real(8),intent(in)::op
integer(4)::nc_put_var1_double
end
end interface
interface
function nc_get_var1_double(ncid,varid,indexp,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::indexp
real(8),intent(out)::ip
integer(4)::nc_get_var1_double
end
end interface
interface
function nc_put_var1_longlong(ncid,varid,indexp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::indexp
integer(8),intent(in)::op
integer(4)::nc_put_var1_longlong
end
end interface
interface
function nc_get_var1_longlong(ncid,varid,indexp,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::indexp
integer(8),intent(out)::ip
integer(4)::nc_get_var1_longlong
end
end interface
interface
function nc_put_var1(ncid,varid,indexp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::indexp
type(c_ptr),value::op
integer(4)::nc_put_var1
end
end interface
interface
function nc_get_var1(ncid,varid,indexp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::indexp
character(1_8,1),intent(inout)::op(1_8:*)
integer(4)::nc_get_var1
end
end interface
interface
function nc_put_vara_text(ncid,varid,startp,countp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
character(1_8,1),intent(in)::op(1_8:*)
integer(4)::nc_put_vara_text
end
end interface
interface
function nc_get_vara_text(ncid,varid,startp,countp,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
character(1_8,1),intent(out)::ip(1_8:*)
integer(4)::nc_get_vara_text
end
end interface
interface
function nc_put_vara_uchar(ncid,varid,startp,countp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
integer(1),intent(in)::op(1_8:*)
integer(4)::nc_put_vara_uchar
end
end interface
interface
function nc_get_vara_uchar(ncid,varid,startp,countp,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
integer(1),intent(out)::ip(1_8:*)
integer(4)::nc_get_vara_uchar
end
end interface
interface
function nc_put_vara_schar(ncid,varid,startp,countp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
integer(1),intent(in)::op(1_8:*)
integer(4)::nc_put_vara_schar
end
end interface
interface
function nc_get_vara_schar(ncid,varid,startp,countp,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
integer(1),intent(out)::ip(1_8:*)
integer(4)::nc_get_vara_schar
end
end interface
interface
function nc_put_vara_short(ncid,varid,startp,countp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
integer(2),intent(in)::op(1_8:*)
integer(4)::nc_put_vara_short
end
end interface
interface
function nc_get_vara_short(ncid,varid,startp,countp,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
integer(2),intent(out)::ip(1_8:*)
integer(4)::nc_get_vara_short
end
end interface
interface
function nc_put_vara_int(ncid,varid,startp,countp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
integer(4),intent(in)::op(1_8:*)
integer(4)::nc_put_vara_int
end
end interface
interface
function nc_get_vara_int(ncid,varid,startp,countp,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
integer(4),intent(out)::ip(1_8:*)
integer(4)::nc_get_vara_int
end
end interface
interface
function nc_put_vara_long(ncid,varid,startp,countp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
integer(8),intent(in)::op(1_8:*)
integer(4)::nc_put_vara_long
end
end interface
interface
function nc_get_vara_long(ncid,varid,startp,countp,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
integer(8),intent(out)::ip(1_8:*)
integer(4)::nc_get_vara_long
end
end interface
interface
function nc_put_vara_float(ncid,varid,startp,countp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
real(4),intent(in)::op(1_8:*)
integer(4)::nc_put_vara_float
end
end interface
interface
function nc_get_vara_float(ncid,varid,startp,countp,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
real(4),intent(out)::ip(1_8:*)
integer(4)::nc_get_vara_float
end
end interface
interface
function nc_put_vara_double(ncid,varid,startp,countp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
real(8),intent(in)::op(1_8:*)
integer(4)::nc_put_vara_double
end
end interface
interface
function nc_get_vara_double(ncid,varid,startp,countp,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
real(8),intent(out)::ip(1_8:*)
integer(4)::nc_get_vara_double
end
end interface
interface
function nc_put_vara_longlong(ncid,varid,startp,countp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
integer(8),intent(in)::op(1_8:*)
integer(4)::nc_put_vara_longlong
end
end interface
interface
function nc_get_vara_longlong(ncid,varid,startp,countp,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
integer(8),intent(out)::ip(1_8:*)
integer(4)::nc_get_vara_longlong
end
end interface
interface
function nc_put_vara(ncid,varid,startp,countp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::op
integer(4)::nc_put_vara
end
end interface
interface
function nc_get_vara(ncid,varid,startp,countp,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
character(1_8,1),intent(inout)::ip(1_8:*)
integer(4)::nc_get_vara
end
end interface
interface
function nc_put_vars_text(ncid,varid,startp,countp,stridep,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
character(1_8,1),intent(in)::op(1_8:*)
integer(4)::nc_put_vars_text
end
end interface
interface
function nc_get_vars_text(ncid,varid,startp,countp,stridep,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
character(1_8,1),intent(out)::ip(1_8:*)
integer(4)::nc_get_vars_text
end
end interface
interface
function nc_put_vars_uchar(ncid,varid,startp,countp,stridep,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
integer(1),intent(in)::op(1_8:*)
integer(4)::nc_put_vars_uchar
end
end interface
interface
function nc_get_vars_uchar(ncid,varid,startp,countp,stridep,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
integer(1),intent(out)::ip(1_8:*)
integer(4)::nc_get_vars_uchar
end
end interface
interface
function nc_put_vars_schar(ncid,varid,startp,countp,stridep,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
integer(1),intent(in)::op(1_8:*)
integer(4)::nc_put_vars_schar
end
end interface
interface
function nc_get_vars_schar(ncid,varid,startp,countp,stridep,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
integer(1),intent(out)::ip(1_8:*)
integer(4)::nc_get_vars_schar
end
end interface
interface
function nc_put_vars_short(ncid,varid,startp,countp,stridep,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
integer(2),intent(in)::op(1_8:*)
integer(4)::nc_put_vars_short
end
end interface
interface
function nc_get_vars_short(ncid,varid,startp,countp,stridep,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
integer(2),intent(out)::ip(1_8:*)
integer(4)::nc_get_vars_short
end
end interface
interface
function nc_put_vars_int(ncid,varid,startp,countp,stridep,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
integer(4),intent(in)::op(1_8:*)
integer(4)::nc_put_vars_int
end
end interface
interface
function nc_get_vars_int(ncid,varid,startp,countp,stridep,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
integer(4),intent(out)::ip(1_8:*)
integer(4)::nc_get_vars_int
end
end interface
interface
function nc_put_vars_long(ncid,varid,startp,countp,stridep,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
integer(8),intent(in)::op(1_8:*)
integer(4)::nc_put_vars_long
end
end interface
interface
function nc_get_vars_long(ncid,varid,startp,countp,stridep,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
integer(8),intent(out)::ip(1_8:*)
integer(4)::nc_get_vars_long
end
end interface
interface
function nc_put_vars_float(ncid,varid,startp,countp,stridep,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
real(4),intent(in)::op(1_8:*)
integer(4)::nc_put_vars_float
end
end interface
interface
function nc_get_vars_float(ncid,varid,startp,countp,stridep,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
real(4),intent(out)::ip(1_8:*)
integer(4)::nc_get_vars_float
end
end interface
interface
function nc_put_vars_double(ncid,varid,startp,countp,stridep,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
real(8),intent(in)::op(1_8:*)
integer(4)::nc_put_vars_double
end
end interface
interface
function nc_get_vars_double(ncid,varid,startp,countp,stridep,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
real(8),intent(out)::ip(1_8:*)
integer(4)::nc_get_vars_double
end
end interface
interface
function nc_put_vars_longlong(ncid,varid,startp,countp,stridep,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
integer(8),intent(in)::op(1_8:*)
integer(4)::nc_put_vars_longlong
end
end interface
interface
function nc_get_vars_longlong(ncid,varid,startp,countp,stridep,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
integer(8),intent(out)::ip(1_8:*)
integer(4)::nc_get_vars_longlong
end
end interface
interface
function nc_put_vars(ncid,varid,startp,countp,stridep,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
type(c_ptr),value::op
integer(4)::nc_put_vars
end
end interface
interface
function nc_get_vars(ncid,varid,startp,countp,stridep,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
character(1_8,1),intent(inout)::ip(1_8:*)
integer(4)::nc_get_vars
end
end interface
interface
function nc_put_varm_text(ncid,varid,startp,countp,stridep,imapp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
type(c_ptr),value::imapp
character(1_8,1),intent(in)::op(1_8:*)
integer(4)::nc_put_varm_text
end
end interface
interface
function nc_get_varm_text(ncid,varid,startp,countp,stridep,imapp,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
type(c_ptr),value::imapp
character(1_8,1),intent(out)::ip(1_8:*)
integer(4)::nc_get_varm_text
end
end interface
interface
function nc_put_varm_uchar(ncid,varid,startp,countp,stridep,imapp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
type(c_ptr),value::imapp
integer(1),intent(in)::op(1_8:*)
integer(4)::nc_put_varm_uchar
end
end interface
interface
function nc_get_varm_uchar(ncid,varid,startp,countp,stridep,imapp,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
type(c_ptr),value::imapp
integer(1),intent(out)::ip(1_8:*)
integer(4)::nc_get_varm_uchar
end
end interface
interface
function nc_put_varm_schar(ncid,varid,startp,countp,stridep,imapp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
type(c_ptr),value::imapp
integer(1),intent(in)::op(1_8:*)
integer(4)::nc_put_varm_schar
end
end interface
interface
function nc_get_varm_schar(ncid,varid,startp,countp,stridep,imapp,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
type(c_ptr),value::imapp
integer(1),intent(out)::ip(1_8:*)
integer(4)::nc_get_varm_schar
end
end interface
interface
function nc_put_varm_short(ncid,varid,startp,countp,stridep,imapp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
type(c_ptr),value::imapp
integer(2),intent(in)::op(1_8:*)
integer(4)::nc_put_varm_short
end
end interface
interface
function nc_get_varm_short(ncid,varid,startp,countp,stridep,imapp,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
type(c_ptr),value::imapp
integer(2),intent(out)::ip(1_8:*)
integer(4)::nc_get_varm_short
end
end interface
interface
function nc_put_varm_int(ncid,varid,startp,countp,stridep,imapp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
type(c_ptr),value::imapp
integer(4),intent(in)::op(1_8:*)
integer(4)::nc_put_varm_int
end
end interface
interface
function nc_get_varm_int(ncid,varid,startp,countp,stridep,imapp,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
type(c_ptr),value::imapp
integer(4),intent(out)::ip(1_8:*)
integer(4)::nc_get_varm_int
end
end interface
interface
function nc_put_varm_long(ncid,varid,startp,countp,stridep,imapp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
type(c_ptr),value::imapp
integer(8),intent(in)::op(1_8:*)
integer(4)::nc_put_varm_long
end
end interface
interface
function nc_get_varm_long(ncid,varid,startp,countp,stridep,imapp,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
type(c_ptr),value::imapp
integer(8),intent(out)::ip(1_8:*)
integer(4)::nc_get_varm_long
end
end interface
interface
function nc_put_varm_float(ncid,varid,startp,countp,stridep,imapp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
type(c_ptr),value::imapp
real(4),intent(in)::op(1_8:*)
integer(4)::nc_put_varm_float
end
end interface
interface
function nc_get_varm_float(ncid,varid,startp,countp,stridep,imapp,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
type(c_ptr),value::imapp
real(4),intent(out)::ip(1_8:*)
integer(4)::nc_get_varm_float
end
end interface
interface
function nc_put_varm_double(ncid,varid,startp,countp,stridep,imapp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
type(c_ptr),value::imapp
real(8),intent(in)::op(1_8:*)
integer(4)::nc_put_varm_double
end
end interface
interface
function nc_get_varm_double(ncid,varid,startp,countp,stridep,imapp,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
type(c_ptr),value::imapp
real(8),intent(out)::ip(1_8:*)
integer(4)::nc_get_varm_double
end
end interface
interface
function nc_put_varm_longlong(ncid,varid,startp,countp,stridep,imapp,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
type(c_ptr),value::imapp
integer(8),intent(in)::op(1_8:*)
integer(4)::nc_put_varm_longlong
end
end interface
interface
function nc_get_varm_longlong(ncid,varid,startp,countp,stridep,imapp,ip) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::startp
type(c_ptr),value::countp
type(c_ptr),value::stridep
type(c_ptr),value::imapp
integer(8),intent(out)::ip(1_8:*)
integer(4)::nc_get_varm_longlong
end
end interface
interface
function nc_put_var(ncid,varid,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
type(c_ptr),value::op
integer(4)::nc_put_var
end
end interface
interface
function nc_get_var(ncid,varid,ip) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(inout)::ip(1_8:*)
integer(4)::nc_get_var
end
end interface
interface
function nc_inq_att(ncid,varid,name,xtypep,lenp) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::name(1_8:*)
integer(4),intent(out)::xtypep
integer(8),intent(out)::lenp
integer(4)::nc_inq_att
end
end interface
interface
function nc_inq_attid(ncid,varid,name,attnump) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::name(1_8:*)
integer(4),intent(out)::attnump
integer(4)::nc_inq_attid
end
end interface
interface
function nc_inq_atttype(ncid,varid,name,xtypep) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::name(1_8:*)
integer(4),intent(out)::xtypep
integer(4)::nc_inq_atttype
end
end interface
interface
function nc_inq_attlen(ncid,varid,name,lenp) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::name(1_8:*)
integer(8),intent(out)::lenp
integer(4)::nc_inq_attlen
end
end interface
interface
function nc_inq_attname(ncid,varid,attnum,name) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(4),value::attnum
character(1_8,1),intent(inout)::name(1_8:*)
integer(4)::nc_inq_attname
end
end interface
interface
function nc_copy_att(ncid_in,varid_in,name,ncid_out,varid_out) bind(c)
integer(4),value::ncid_in
integer(4),value::varid_in
character(1_8,1),intent(in)::name(1_8:*)
integer(4),value::ncid_out
integer(4),value::varid_out
integer(4)::nc_copy_att
end
end interface
interface
function nc_rename_att(ncid,varid,name,newname) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::name(1_8:*)
character(1_8,1),intent(in)::newname(1_8:*)
integer(4)::nc_rename_att
end
end interface
interface
function nc_del_att(ncid,varid,name) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::name(1_8:*)
integer(4)::nc_del_att
end
end interface
interface
function nc_put_att_text(ncid,varid,name,nlen,op) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::name(1_8:*)
integer(8),value::nlen
character(1_8,1),intent(in)::op(1_8:*)
integer(4)::nc_put_att_text
end
end interface
interface
function nc_get_att_text(ncid,varid,name,ip) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::name(1_8:*)
character(1_8,1),intent(out)::ip(1_8:*)
integer(4)::nc_get_att_text
end
end interface
interface
function nc_put_att_uchar(ncid,varid,name,xtype,nlen,op) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::name(1_8:*)
integer(4),value::xtype
integer(8),value::nlen
integer(1),intent(in)::op(1_8:*)
integer(4)::nc_put_att_uchar
end
end interface
interface
function nc_get_att_uchar(ncid,varid,name,ip) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::name(1_8:*)
integer(1),intent(out)::ip(1_8:*)
integer(4)::nc_get_att_uchar
end
end interface
interface
function nc_put_att_schar(ncid,varid,name,xtype,nlen,op) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::name(1_8:*)
integer(4),value::xtype
integer(8),value::nlen
integer(1),intent(in)::op(1_8:*)
integer(4)::nc_put_att_schar
end
end interface
interface
function nc_get_att_schar(ncid,varid,name,ip) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::name(1_8:*)
integer(1),intent(out)::ip(1_8:*)
integer(4)::nc_get_att_schar
end
end interface
interface
function nc_put_att_short(ncid,varid,name,xtype,nlen,op) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::name(1_8:*)
integer(4),value::xtype
integer(8),value::nlen
integer(2),intent(in)::op(1_8:*)
integer(4)::nc_put_att_short
end
end interface
interface
function nc_get_att_short(ncid,varid,name,ip) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::name(1_8:*)
integer(2),intent(out)::ip(1_8:*)
integer(4)::nc_get_att_short
end
end interface
interface
function nc_put_att_int(ncid,varid,name,xtype,nlen,op) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::name(1_8:*)
integer(4),value::xtype
integer(8),value::nlen
integer(4),intent(in)::op(1_8:*)
integer(4)::nc_put_att_int
end
end interface
interface
function nc_put_att_longlong(ncid,varid,name,xtype,nlen,op) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::name(1_8:*)
integer(4),value::xtype
integer(8),value::nlen
integer(8),intent(in)::op(1_8:*)
integer(4)::nc_put_att_longlong
end
end interface
interface
function nc_get_att_int(ncid,varid,name,ip) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::name(1_8:*)
integer(4),intent(out)::ip(1_8:*)
integer(4)::nc_get_att_int
end
end interface
interface
function nc_put_att_long(ncid,varid,name,xtype,nlen,op) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::name(1_8:*)
integer(4),value::xtype
integer(8),value::nlen
integer(8),intent(in)::op(1_8:*)
integer(4)::nc_put_att_long
end
end interface
interface
function nc_get_att_long(ncid,varid,name,ip) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::name(1_8:*)
integer(8),intent(out)::ip(1_8:*)
integer(4)::nc_get_att_long
end
end interface
interface
function nc_get_att_longlong(ncid,varid,name,ip) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::name(1_8:*)
integer(8),intent(out)::ip(1_8:*)
integer(4)::nc_get_att_longlong
end
end interface
interface
function nc_put_att_float(ncid,varid,name,xtype,nlen,op) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::name(1_8:*)
integer(4),value::xtype
integer(8),value::nlen
real(4),intent(in)::op(1_8:*)
integer(4)::nc_put_att_float
end
end interface
interface
function nc_get_att_float(ncid,varid,name,ip) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::name(1_8:*)
real(4),intent(out)::ip(1_8:*)
integer(4)::nc_get_att_float
end
end interface
interface
function nc_put_att_double(ncid,varid,name,xtype,nlen,op) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::name(1_8:*)
integer(4),value::xtype
integer(8),value::nlen
real(8),intent(in)::op(1_8:*)
integer(4)::nc_put_att_double
end
end interface
interface
function nc_get_att_double(ncid,varid,name,ip) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::name(1_8:*)
real(8),intent(out)::ip(1_8:*)
integer(4)::nc_get_att_double
end
end interface
interface
function nc_put_att(ncid,varid,name,xtype,nlen,op) bind(c)
use,intrinsic::iso_c_binding,only:c_ptr
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::name(1_8:*)
integer(4),value::xtype
integer(8),value::nlen
type(c_ptr),value::op
integer(4)::nc_put_att
end
end interface
interface
function nc_get_att(ncid,varid,name,op) bind(c)
integer(4),value::ncid
integer(4),value::varid
character(1_8,1),intent(in)::name(1_8:*)
character(1_8,1),intent(out)::op(1_8:*)
integer(4)::nc_get_att
end
end interface
interface
function nc_copy_var(ncid_in,varid,ncid_out) bind(c)
integer(4),value::ncid_in
integer(4),value::varid
integer(4),value::ncid_out
integer(4)::nc_copy_var
end
end interface
interface
function nc_set_default_format(newform,old_format) bind(c)
integer(4),value::newform
integer(4),intent(out)::old_format
integer(4)::nc_set_default_format
end
end interface
interface
function nc_def_var_szip(ncid,varid,options_mask,pixels_per_block) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(4),value::options_mask
integer(4),value::pixels_per_block
integer(4)::nc_def_var_szip
end
end interface
interface
function nc_def_var_quantize(ncid,varid,quantize_mode,nsd) bind(c)
integer(4),value::ncid
integer(4),value::varid
integer(4),value::quantize_mode
integer(4),value::nsd
integer(4)::nc_def_var_quantize
end
end interface
interface addcnullchar
procedure::addcnullchar
end interface
interface stripcnullchar
procedure::stripcnullchar
end interface
contains
function addcnullchar(string,nlen) result(cstring)
character(*,1),intent(in)::string
integer(4),intent(inout)::nlen
character((int(int(string%len,kind=8),kind=4)+1_4),1)::cstring
end
function stripcnullchar(cstring,nlen) result(string)
character(*,1),intent(in)::cstring
integer(4),intent(in)::nlen
character(nlen,1)::string
end
end
