!mod$ v1 sum:68e17af94e712ae5
!need$ 0435512db51cee99 n netcdf
!need$ fe3180dd7f22d4c1 n parkind1
!need$ 7266944e5e92cbf3 n radiation_io
module easy_netcdf
use parkind1,only:jprb
use parkind1,only:jpib
use parkind1,only:jprm
use parkind1,only:jprd
use radiation_io,only:nulout
use radiation_io,only:nulerr
use radiation_io,only:my_abort=>radiation_abort
use netcdf,only:nf90_byte
use netcdf,only:nf90_int1
use netcdf,only:nf90_char
use netcdf,only:nf90_short
use netcdf,only:nf90_int2
use netcdf,only:nf90_int
use netcdf,only:nf90_int4
use netcdf,only:nf90_float
use netcdf,only:nf90_real
use netcdf,only:nf90_real4
use netcdf,only:nf90_double
use netcdf,only:nf90_real8
use netcdf,only:nf90_fill_char
use netcdf,only:nf90_fill_byte
use netcdf,only:nf90_fill_int1
use netcdf,only:nf90_fill_short
use netcdf,only:nf90_fill_int2
use netcdf,only:nf90_fill_int
use netcdf,only:nf90_fill_float
use netcdf,only:nf90_fill_real
use netcdf,only:nf90_fill_real4
use netcdf,only:nf90_fill_double
use netcdf,only:nf90_fill_real8
use netcdf,only:nf90_nowrite
use netcdf,only:nf90_write
use netcdf,only:nf90_clobber
use netcdf,only:nf90_noclobber
use netcdf,only:nf90_fill
use netcdf,only:nf90_nofill
use netcdf,only:nf90_64bit_offset
use netcdf,only:nf90_64bit_data
use netcdf,only:nf90_cdf5
use netcdf,only:nf90_lock
use netcdf,only:nf90_share
use netcdf,only:nf90_diskless
use netcdf,only:nf90_mmap
use netcdf,only:nf90_sizehint_default
use netcdf,only:nf90_align_chunk
use netcdf,only:nf90_unlimited
use netcdf,only:nf90_global
use netcdf,only:nf90_max_dims
use netcdf,only:nf90_max_attrs
use netcdf,only:nf90_max_vars
use netcdf,only:nf90_max_name
use netcdf,only:nf90_max_var_dims
use netcdf,only:nf90_noerr
use netcdf,only:nf90_ebadid
use netcdf,only:nf90_eexist
use netcdf,only:nf90_einval
use netcdf,only:nf90_eperm
use netcdf,only:nf90_enotindefine
use netcdf,only:nf90_eindefine
use netcdf,only:nf90_einvalcoords
use netcdf,only:nf90_emaxdims
use netcdf,only:nf90_enameinuse
use netcdf,only:nf90_enotatt
use netcdf,only:nf90_emaxatts
use netcdf,only:nf90_ebadtype
use netcdf,only:nf90_ebaddim
use netcdf,only:nf90_eunlimpos
use netcdf,only:nf90_emaxvars
use netcdf,only:nf90_enotvar
use netcdf,only:nf90_eglobal
use netcdf,only:nf90_enotnc
use netcdf,only:nf90_ests
use netcdf,only:nf90_emaxname
use netcdf,only:nf90_eunlimit
use netcdf,only:nf90_enorecvars
use netcdf,only:nf90_echar
use netcdf,only:nf90_eedge
use netcdf,only:nf90_estride
use netcdf,only:nf90_ebadname
use netcdf,only:nf90_erange
use netcdf,only:nf90_enomem
use netcdf,only:nf90_evarsize
use netcdf,only:nf90_edimsize
use netcdf,only:nf90_etrunc
use netcdf,only:nf90_eaxistype
use netcdf,only:nf90_edap
use netcdf,only:nf90_ecurl
use netcdf,only:nf90_eio
use netcdf,only:nf90_enodata
use netcdf,only:nf90_edapsvc
use netcdf,only:nf90_edas
use netcdf,only:nf90_edds
use netcdf,only:nf90_edatadds
use netcdf,only:nf90_edapurl
use netcdf,only:nf90_edapconstraint
use netcdf,only:nf90_etranslation
use netcdf,only:nf904_first_error
use netcdf,only:nf90_ehdferr
use netcdf,only:nf90_ecantread
use netcdf,only:nf90_ecantwrite
use netcdf,only:nf90_ecantcreate
use netcdf,only:nf90_efilemeta
use netcdf,only:nf90_edimmeta
use netcdf,only:nf90_eattmeta
use netcdf,only:nf90_evarmeta
use netcdf,only:nf90_enocompound
use netcdf,only:nf90_eattexists
use netcdf,only:nf90_enotnc4
use netcdf,only:nf90_estrictnc3
use netcdf,only:nf90_enotnc3
use netcdf,only:nf90_enopar
use netcdf,only:nf90_eparinit
use netcdf,only:nf90_ebadgrpid
use netcdf,only:nf90_ebadtypid
use netcdf,only:nf90_etypdefined
use netcdf,only:nf90_ebadfield
use netcdf,only:nf90_ebadclass
use netcdf,only:nf90_emaptype
use netcdf,only:nf90_elatefill
use netcdf,only:nf90_elatedef
use netcdf,only:nf90_edimscale
use netcdf,only:nf90_enogrp
use netcdf,only:nf90_estorage
use netcdf,only:nf90_ebadchunk
use netcdf,only:nf90_enotbuilt
use netcdf,only:nf90_ediskless
use netcdf,only:nf90_ecantextend
use netcdf,only:nf90_empi
use netcdf,only:nf90_efilter
use netcdf,only:nf90_ercfile
use netcdf,only:nf90_enullpad
use netcdf,only:nf90_einmemory
use netcdf,only:nf90_enofilter
use netcdf,only:nf90_enczarr
use netcdf,only:nf90_es3
use netcdf,only:nf90_eempty
use netcdf,only:nf90_eobject
use netcdf,only:nf90_enoobject
use netcdf,only:nf90_eplugin
use netcdf,only:nf904_last_error
use netcdf,only:nf90_fatal
use netcdf,only:nf90_verbose
use netcdf,only:nf90_format_classic
use netcdf,only:nf90_format_64bit
use netcdf,only:nf90_format_64bit_offset
use netcdf,only:nf90_format_64bit_data
use netcdf,only:nf90_format_cdf5
use netcdf,only:nf90_format_netcdf4
use netcdf,only:nf90_format_netcdf4_classic
use netcdf,only:nf90_ubyte
use netcdf,only:nf90_ushort
use netcdf,only:nf90_uint
use netcdf,only:nf90_int64
use netcdf,only:nf90_uint64
use netcdf,only:nf90_string
use netcdf,only:nf90_vlen
use netcdf,only:nf90_opaque
use netcdf,only:nf90_enum
use netcdf,only:nf90_compound
use netcdf,only:nf90_fill_ubyte
use netcdf,only:nf90_fill_uint1
use netcdf,only:nf90_fill_ushort
use netcdf,only:nf90_fill_uint2
use netcdf,only:nf90_fill_uint
use netcdf,only:nf90_netcdf4
use netcdf,only:nf90_hdf5
use netcdf,only:nf90_classic_model
use netcdf,only:nf90_independent
use netcdf,only:nf90_collective
use netcdf,only:nf90_mpiio
use netcdf,only:nf90_mpiposix
use netcdf,only:nf90_pnetcdf
use netcdf,only:nf90_chunk_seq
use netcdf,only:nf90_chunk_sub
use netcdf,only:nf90_chunk_sizes
use netcdf,only:nf90_endian_native
use netcdf,only:nf90_endian_little
use netcdf,only:nf90_endian_big
use netcdf,only:nf90_chunked
use netcdf,only:nf90_notcontiguous
use netcdf,only:nf90_contiguous
use netcdf,only:nf90_compact
use netcdf,only:nf90_nochecksum
use netcdf,only:nf90_fletcher32
use netcdf,only:nf90_noshuffle
use netcdf,only:nf90_shuffle
use netcdf,only:nf90_szip_ec_option_mask
use netcdf,only:nf90_szip_nn_option_mask
use netcdf,only:nf90_noquantize
use netcdf,only:nf90_quantize_bitgroom
use netcdf,only:nf90_quantize_granularbr
use netcdf,only:nf90_quantize_bitround
use netcdf,only:nf90_def_var
use netcdf,only:nf90_put_att
use netcdf,only:nf90_get_att
use netcdf,only:nf90_put_var
use netcdf,only:nf90_get_var
use netcdf,only:nf90_def_var_fill
use netcdf,only:nf90_inq_var_fill
use netcdf,only:nf90_inq_libvers
use netcdf,only:nf90_strerror
use netcdf,only:nf90_inq_base_pe
use netcdf,only:nf90_set_base_pe
use netcdf,only:nf90_create_mp
use netcdf,only:nf90_open_mp
use netcdf,only:nf90_set_fill
use netcdf,only:nf90_redef
use netcdf,only:nf90_enddef
use netcdf,only:nf90_sync
use netcdf,only:nf90_abort
use netcdf,only:nf90_close
use netcdf,only:nf90_delete
use netcdf,only:nf90_inquire
use netcdf,only:nf90_inq_path
use netcdf,only:nf90_inq_format
use netcdf,only:nf90_open
use netcdf,only:nf90_create
use netcdf,only:nf90_def_dim
use netcdf,only:nf90_inq_dimid
use netcdf,only:nf90_rename_dim
use netcdf,only:nf90_inquire_dimension
use netcdf,only:nf90_copy_att
use netcdf,only:nf90_rename_att
use netcdf,only:nf90_del_att
use netcdf,only:nf90_inq_attname
use netcdf,only:nf90_inquire_attribute
use netcdf,only:nf90_inq_varid
use netcdf,only:nf90_inquire_variable
use netcdf,only:nf90_rename_var
use netcdf,only:nf90_create_par
use netcdf,only:nf90_open_par
use netcdf,only:nf90_var_par_access
use netcdf,only:nf90_inq_ncid
use netcdf,only:nf90_inq_grps
use netcdf,only:nf90_inq_grpname_len
use netcdf,only:nf90_inq_grp_ncid
use netcdf,only:nf90_inq_grp_full_ncid
use netcdf,only:nf90_inq_grp_parent
use netcdf,only:nf90_inq_grpname
use netcdf,only:nf90_inq_grpname_full
use netcdf,only:nf90_inq_varids
use netcdf,only:nf90_inq_dimids
use netcdf,only:nf90_inq_typeids
use netcdf,only:nf90_def_grp
use netcdf,only:nf90_rename_grp
use netcdf,only:nf90_def_compound
use netcdf,only:nf90_insert_compound
use netcdf,only:nf90_insert_array_compound
use netcdf,only:nf90_inq_type
use netcdf,only:nf90_inq_compound
use netcdf,only:nf90_inq_compound_name
use netcdf,only:nf90_inq_compound_size
use netcdf,only:nf90_inq_compound_nfields
use netcdf,only:nf90_inq_compound_field
use netcdf,only:nf90_inq_compound_fieldname
use netcdf,only:nf90_inq_compound_fieldindex
use netcdf,only:nf90_inq_compound_fieldoffset
use netcdf,only:nf90_inq_compound_fieldtype
use netcdf,only:nf90_inq_compound_fieldndims
use netcdf,only:nf90_inq_cmp_fielddim_sizes
use netcdf,only:nf90_def_vlen
use netcdf,only:nf90_inq_vlen
use netcdf,only:nf90_def_enum
use netcdf,only:nf90_inq_user_type
use netcdf,only:nf90_insert_enum
use netcdf,only:nf90_inq_enum
use netcdf,only:nf90_inq_enum_member
use netcdf,only:nf90_inq_enum_ident
use netcdf,only:nf90_def_opaque
use netcdf,only:nf90_inq_opaque
use netcdf,only:nf90_def_var_chunking
use netcdf,only:nf90_def_var_deflate
use netcdf,only:nf90_def_var_szip
use netcdf,only:nf90_def_var_zstandard
use netcdf,only:nf90_def_var_quantize
use netcdf,only:nf90_def_var_fletcher32
use netcdf,only:nf90_inq_var_chunking
use netcdf,only:nf90_inq_var_deflate
use netcdf,only:nf90_inq_var_szip
use netcdf,only:nf90_inq_var_zstandard
use netcdf,only:nf90_inq_var_quantize
use netcdf,only:nf90_inq_var_fletcher32
use netcdf,only:nf90_def_var_endian
use netcdf,only:nf90_inq_var_endian
use netcdf,only:nf90_def_var_filter
use netcdf,only:nf90_inq_var_filter
use netcdf,only:nf90_put_att_any
use netcdf,only:nf90_get_att_any
use netcdf,only:nf90_put_var_any
use netcdf,only:nf90_get_var_any
use netcdf,only:netcdf$netcdf$nf90_def_var_manydims=>nf90_def_var_manydims
use netcdf,only:netcdf$netcdf$nf90_get_att_one_eightbytereal=>nf90_get_att_one_eightbytereal
use netcdf,only:netcdf$netcdf$nf90_get_att_text=>nf90_get_att_text
use netcdf,only:netcdf$netcdf$nf90_get_var_1d_eightbytereal=>nf90_get_var_1d_eightbytereal
use netcdf,only:netcdf$netcdf$nf90_get_var_1d_fourbyteint=>nf90_get_var_1d_fourbyteint
use netcdf,only:netcdf$netcdf$nf90_get_var_1d_text=>nf90_get_var_1d_text
use netcdf,only:netcdf$netcdf$nf90_get_var_2d_eightbytereal=>nf90_get_var_2d_eightbytereal
use netcdf,only:netcdf$netcdf$nf90_get_var_2d_text=>nf90_get_var_2d_text
use netcdf,only:netcdf$netcdf$nf90_get_var_3d_eightbytereal=>nf90_get_var_3d_eightbytereal
use netcdf,only:netcdf$netcdf$nf90_get_var_4d_eightbytereal=>nf90_get_var_4d_eightbytereal
use netcdf,only:netcdf$netcdf$nf90_get_var_eightbytereal=>nf90_get_var_eightbytereal
use netcdf,only:netcdf$netcdf$nf90_get_var_fourbyteint=>nf90_get_var_fourbyteint
use netcdf,only:netcdf$netcdf$nf90_put_att_one_eightbytereal=>nf90_put_att_one_eightbytereal
use netcdf,only:netcdf$netcdf$nf90_put_att_one_fourbyteint=>nf90_put_att_one_fourbyteint
use netcdf,only:netcdf$netcdf$nf90_put_att_one_fourbytereal=>nf90_put_att_one_fourbytereal
use netcdf,only:netcdf$netcdf$nf90_put_att_one_onebyteint=>nf90_put_att_one_onebyteint
use netcdf,only:netcdf$netcdf$nf90_put_att_one_twobyteint=>nf90_put_att_one_twobyteint
use netcdf,only:netcdf$netcdf$nf90_put_att_text=>nf90_put_att_text
use netcdf,only:netcdf$netcdf$nf90_put_var_1d_eightbytereal=>nf90_put_var_1d_eightbytereal
use netcdf,only:netcdf$netcdf$nf90_put_var_1d_fourbyteint=>nf90_put_var_1d_fourbyteint
use netcdf,only:netcdf$netcdf$nf90_put_var_2d_eightbytereal=>nf90_put_var_2d_eightbytereal
use netcdf,only:netcdf$netcdf$nf90_put_var_3d_eightbytereal=>nf90_put_var_3d_eightbytereal
use netcdf,only:netcdf$netcdf$nf90_put_var_eightbytereal=>nf90_put_var_eightbytereal
private::netcdf$netcdf$nf90_def_var_manydims
private::netcdf$netcdf$nf90_get_att_one_eightbytereal
private::netcdf$netcdf$nf90_get_att_text
private::netcdf$netcdf$nf90_get_var_1d_eightbytereal
private::netcdf$netcdf$nf90_get_var_1d_fourbyteint
private::netcdf$netcdf$nf90_get_var_1d_text
private::netcdf$netcdf$nf90_get_var_2d_eightbytereal
private::netcdf$netcdf$nf90_get_var_2d_text
private::netcdf$netcdf$nf90_get_var_3d_eightbytereal
private::netcdf$netcdf$nf90_get_var_4d_eightbytereal
private::netcdf$netcdf$nf90_get_var_eightbytereal
private::netcdf$netcdf$nf90_get_var_fourbyteint
private::netcdf$netcdf$nf90_put_att_one_eightbytereal
private::netcdf$netcdf$nf90_put_att_one_fourbyteint
private::netcdf$netcdf$nf90_put_att_one_fourbytereal
private::netcdf$netcdf$nf90_put_att_one_onebyteint
private::netcdf$netcdf$nf90_put_att_one_twobyteint
private::netcdf$netcdf$nf90_put_att_text
private::netcdf$netcdf$nf90_put_var_1d_eightbytereal
private::netcdf$netcdf$nf90_put_var_1d_fourbyteint
private::netcdf$netcdf$nf90_put_var_2d_eightbytereal
private::netcdf$netcdf$nf90_put_var_3d_eightbytereal
private::netcdf$netcdf$nf90_put_var_eightbytereal
type::netcdf_file
integer(4)::ncid=-1_4
integer(4)::iverbose
logical(4)::do_transpose_2d=.false._4
logical(4)::is_write_mode=.false._4
logical(4)::is_define_mode=.true._4
logical(4)::is_double_precision=.false._4
logical(4)::do_permute_3d=.false._4
logical(4)::do_permute_4d=.false._4
integer(4)::i_permute_3d(1_8:3_8)=[INTEGER(4)::1_4,2_4,3_4]
integer(4)::i_permute_4d(1_8:4_8)=[INTEGER(4)::1_4,2_4,3_4,4_4]
character(511_4,1)::file_name
contains
procedure::open=>open_netcdf_file
procedure::create=>create_netcdf_file
procedure::close=>close_netcdf_file
procedure::is_open
procedure::get_real_scalar
procedure::get_int_scalar
procedure::get_real_vector
procedure::get_int_vector
procedure::get_real_matrix
procedure::get_real_array3
procedure::get_real_scalar_indexed
procedure::get_real_vector_indexed
procedure::get_real_matrix_indexed
procedure::get_real_array3_indexed
procedure::get_real_array3_indexed2
procedure::get_real_array4
procedure::get_char_vector
procedure::get_char_matrix
generic::get=>get_real_scalar
generic::get=>get_int_scalar
generic::get=>get_real_vector
generic::get=>get_int_vector
generic::get=>get_real_matrix
generic::get=>get_real_array3
generic::get=>get_real_array4
generic::get=>get_real_scalar_indexed
generic::get=>get_real_vector_indexed
generic::get=>get_real_matrix_indexed
generic::get=>get_real_array3_indexed
generic::get=>get_real_array3_indexed2
generic::get=>get_char_vector
generic::get=>get_char_matrix
procedure::get_real_scalar_attribute
procedure::get_string_attribute
generic::get_attribute=>get_real_scalar_attribute
generic::get_attribute=>get_string_attribute
procedure::get_global_attribute
procedure::define_dimension
procedure::define_variable
procedure::put_attribute
procedure::put_global_attributes
procedure::put_global_attribute
procedure::put_real_scalar
procedure::put_real_vector
procedure::put_int_vector
procedure::put_real_matrix
procedure::put_real_array3
procedure::put_real_scalar_indexed
procedure::put_real_vector_indexed
procedure::put_real_matrix_indexed
generic::put=>put_real_scalar
generic::put=>put_real_vector
generic::put=>put_real_matrix
generic::put=>put_real_array3
generic::put=>put_real_scalar_indexed
generic::put=>put_real_vector_indexed
generic::put=>put_real_matrix_indexed
generic::put=>put_int_vector
procedure::set_verbose
procedure::transpose_matrices
procedure::double_precision
procedure::permute_3d_arrays
procedure::get_rank
procedure::exists
procedure::get_outer_dimension
procedure::attribute_exists
procedure::global_attribute_exists
procedure::copy_variable_definition
procedure::copy_variable
procedure,private::get_array_dimensions
procedure,private::get_variable_id
procedure,private::end_define_mode
procedure,private::print_variable_attributes
end type
contains
subroutine open_netcdf_file(this,file_name,iverbose,is_write_mode,is_hdf5_file)
class(netcdf_file)::this
character(*,1),intent(in)::file_name
integer(4),intent(in),optional::iverbose
logical(4),intent(in),optional::is_write_mode
logical(4),intent(in),optional::is_hdf5_file
end
subroutine create_netcdf_file(this,file_name,iverbose,is_hdf5_file)
class(netcdf_file)::this
character(*,1),intent(in)::file_name
integer(4),intent(in),optional::iverbose
logical(4),intent(in),optional::is_hdf5_file
end
subroutine close_netcdf_file(this)
class(netcdf_file)::this
end
subroutine set_verbose(this,ival)
class(netcdf_file)::this
integer(4),optional::ival
end
subroutine double_precision(this,is_double)
class(netcdf_file)::this
logical(4),optional::is_double
end
subroutine transpose_matrices(this,do_transpose)
class(netcdf_file)::this
logical(4),optional::do_transpose
end
subroutine permute_3d_arrays(this,ipermute)
class(netcdf_file)::this
integer(4),intent(in)::ipermute(1_8:3_8)
end
subroutine permute_4d_arrays(this,ipermute)
class(netcdf_file)::this
integer(4),intent(in)::ipermute(1_8:4_8)
end
subroutine get_variable_id(this,var_name,ivarid)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
integer(4),intent(out)::ivarid
end
subroutine get_array_dimensions(this,ivarid,ndims,ndimlens,ntotal)
class(netcdf_file)::this
integer(4),intent(in)::ivarid
integer(4),intent(out)::ndims
integer(4),intent(out)::ndimlens(1_8:1024_8)
integer(8),intent(out),optional::ntotal
end
subroutine end_define_mode(this)
class(netcdf_file)::this
end
function is_open(this)
class(netcdf_file)::this
logical(4)::is_open
end
function get_rank(this,var_name) result(ndims)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
integer(4)::ndims
end
function get_outer_dimension(this,var_name) result(n)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
integer(4)::n
end
function exists(this,var_name) result(is_present)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
logical(4)::is_present
end
function attribute_exists(this,var_name,attr_name,len) result(is_present)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
character(*,1),intent(in)::attr_name
integer(4),intent(in),optional::len
logical(4)::is_present
end
function global_attribute_exists(this,attr_name,len) result(is_present)
class(netcdf_file)::this
character(*,1),intent(in)::attr_name
integer(4),intent(in),optional::len
logical(4)::is_present
end
subroutine get_real_scalar(this,var_name,scalar)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
real(8),intent(out)::scalar
end
subroutine get_int_scalar(this,var_name,scalar)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
integer(4),intent(out)::scalar
end
subroutine get_real_scalar_indexed(this,var_name,scalar,index)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
real(8),intent(out)::scalar
integer(4),intent(in)::index
end
subroutine get_real_vector(this,var_name,vector)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
real(8),allocatable,intent(out)::vector(:)
end
subroutine get_char_vector(this,var_name,vector)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
character(1_4,1),allocatable,intent(out)::vector(:)
end
subroutine get_int_vector(this,var_name,vector)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
integer(4),allocatable,intent(out)::vector(:)
end
subroutine get_real_vector_indexed(this,var_name,vector,index)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
real(8),allocatable,intent(out)::vector(:)
integer(4),intent(in)::index
end
subroutine get_real_matrix(this,var_name,matrix,do_transp)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
real(8),allocatable,intent(out)::matrix(:,:)
logical(4),intent(in),optional::do_transp
end
subroutine get_char_matrix(this,var_name,matrix,do_transp)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
character(1_4,1),allocatable,intent(inout)::matrix(:,:)
logical(4),intent(in),optional::do_transp
end
subroutine get_real_matrix_indexed(this,var_name,matrix,index,do_transp)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
real(8),allocatable,intent(out)::matrix(:,:)
integer(4),intent(in)::index
logical(4),intent(in),optional::do_transp
end
subroutine get_real_array3(this,var_name,var,ipermute)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
real(8),allocatable,intent(out)::var(:,:,:)
integer(4),intent(in),optional::ipermute(1_8:3_8)
end
subroutine get_real_array3_indexed(this,var_name,var,index,ipermute)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
real(8),allocatable,intent(out)::var(:,:,:)
integer(4),intent(in)::index
integer(4),intent(in),optional::ipermute(1_8:3_8)
end
subroutine get_real_array3_indexed2(this,var_name,var,index4,index5,ipermute)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
real(8),allocatable,intent(out)::var(:,:,:)
integer(4),intent(in)::index4
integer(4),intent(in)::index5
integer(4),intent(in),optional::ipermute(1_8:3_8)
end
subroutine get_real_array4(this,var_name,var,ipermute,ld_first_touch)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
real(8),allocatable,intent(out)::var(:,:,:,:)
integer(4),intent(in),optional::ipermute(1_8:4_8)
logical(4),intent(in),optional::ld_first_touch
end
subroutine get_string_attribute(this,var_name,attr_name,attr_str)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
character(*,1),intent(in)::attr_name
character(*,1),intent(inout)::attr_str
end
subroutine get_real_scalar_attribute(this,var_name,attr_name,attr)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
character(*,1),intent(in)::attr_name
real(8),intent(out)::attr
end
subroutine get_global_attribute(this,attr_name,attr_str)
class(netcdf_file)::this
character(*,1),intent(in)::attr_name
character(*,1),intent(inout)::attr_str
end
subroutine print_variable_attributes(this,ivarid,iunit)
class(netcdf_file)::this
integer(4),intent(in)::ivarid
integer(4),intent(in)::iunit
end
subroutine define_dimension(this,dim_name,n)
class(netcdf_file)::this
character(*,1),intent(in)::dim_name
integer(4),intent(in)::n
end
subroutine define_variable(this,var_name,dim1_name,dim2_name,dim3_name,dim4_name,long_name,units_str,comment_str,standard_name,is_double,data_type_name,fill_value,deflate_level,shuffle,chunksizes,ndims)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
character(*,1),intent(in),optional::dim1_name
character(*,1),intent(in),optional::dim2_name
character(*,1),intent(in),optional::dim3_name
character(*,1),intent(in),optional::dim4_name
character(*,1),intent(in),optional::long_name
character(*,1),intent(in),optional::units_str
character(*,1),intent(in),optional::comment_str
character(*,1),intent(in),optional::standard_name
logical(4),intent(in),optional::is_double
character(*,1),intent(in),optional::data_type_name
real(8),intent(in),optional::fill_value
integer(4),intent(in),optional::deflate_level
logical(4),intent(in),optional::shuffle
integer(4),intent(in),optional::chunksizes(:)
integer(4),intent(in),optional::ndims
end
subroutine put_global_attributes(this,title_str,inst_str,source_str,comment_str,references_str,creator_name,creator_email_str,contributor_name,project_str,conventions_str,prior_history_str)
class(netcdf_file)::this
character(*,1),intent(in),optional::title_str
character(*,1),intent(in),optional::inst_str
character(*,1),intent(in),optional::source_str
character(*,1),intent(in),optional::comment_str
character(*,1),intent(in),optional::references_str
character(*,1),intent(in),optional::creator_name
character(*,1),intent(in),optional::creator_email_str
character(*,1),intent(in),optional::contributor_name
character(*,1),intent(in),optional::project_str
character(*,1),intent(in),optional::conventions_str
character(*,1),intent(in),optional::prior_history_str
end
subroutine put_global_attribute(this,attr_name,attr_str)
class(netcdf_file)::this
character(*,1),intent(in)::attr_name
character(*,1),intent(in)::attr_str
end
subroutine put_attribute(this,var_name,attr_name,attr_str)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
character(*,1),intent(in)::attr_name
character(*,1),intent(in)::attr_str
end
subroutine put_real_scalar(this,var_name,var)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
real(8),intent(in)::var
end
subroutine put_real_scalar_indexed(this,var_name,index,var)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
integer(4),intent(in)::index
real(8),intent(in)::var
end
subroutine put_real_vector(this,var_name,var)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
real(8),intent(in)::var(:)
end
subroutine put_int_vector(this,var_name,var)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
integer(4),intent(in)::var(:)
end
subroutine put_real_vector_indexed(this,var_name,var,index2,index3)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
real(8),intent(in)::var(:)
integer(4),intent(in)::index2
integer(4),intent(in),optional::index3
end
subroutine put_real_matrix(this,var_name,var,do_transp)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
real(8),intent(in)::var(:,:)
logical(4),intent(in),optional::do_transp
end
subroutine put_real_matrix_indexed(this,var_name,var,index3,index4,do_transp)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
real(8),intent(in)::var(:,:)
integer(4),intent(in)::index3
integer(4),intent(in),optional::index4
logical(4),intent(in),optional::do_transp
end
subroutine put_real_array3(this,var_name,var,ipermute)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
real(8),intent(in)::var(:,:,:)
integer(4),intent(in),optional::ipermute(1_8:3_8)
end
subroutine copy_variable_definition(this,infile,var_name)
class(netcdf_file)::this
type(netcdf_file),intent(in)::infile
character(*,1),intent(in)::var_name
end
subroutine copy_variable(this,infile,var_name)
class(netcdf_file)::this
class(netcdf_file),intent(in)::infile
character(*,1),intent(in)::var_name
end
end
