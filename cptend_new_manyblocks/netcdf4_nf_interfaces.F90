!mod$ v1 sum:8319d370c4cee9ee
module netcdf4_nf_interfaces
interface
function nf_inq_ncid(ncid,name,groupid) result(status)
integer(4),intent(in)::ncid
character(*,1),intent(in)::name
integer(4),intent(out)::groupid
integer(4)::status
end
end interface
interface
function nf_inq_grps(ncid,numgrps,ncids) result(status)
integer(4),intent(in)::ncid
integer(4),intent(out)::numgrps
integer(4),intent(inout)::ncids(1_8:*)
integer(4)::status
end
end interface
interface
function nf_inq_grpname(ncid,name) result(status)
integer(4),intent(in)::ncid
character(*,1),intent(out)::name
integer(4)::status
end
end interface
interface
function nf_inq_grpname_full(ncid,nlen,name) result(status)
integer(4),intent(in)::ncid
integer(4),intent(out)::nlen
character(*,1),intent(out)::name
integer(4)::status
end
end interface
interface
function nf_inq_grpname_len(ncid,nlen) result(status)
integer(4),intent(in)::ncid
integer(4),intent(out)::nlen
integer(4)::status
end
end interface
interface
function nf_inq_grp_parent(ncid,parent_ncid) result(status)
integer(4),intent(in)::ncid
integer(4),intent(inout)::parent_ncid
integer(4)::status
end
end interface
interface
function nf_inq_grp_full_ncid(ncid,grp_name,grp_ncid) result(status)
integer(4),intent(in)::ncid
character(*,1),intent(in)::grp_name
integer(4),intent(inout)::grp_ncid
integer(4)::status
end
end interface
interface
function nf_inq_grp_ncid(ncid,grp_name,parent_ncid) result(status)
integer(4),intent(in)::ncid
character(*,1),intent(in)::grp_name
integer(4),intent(inout)::parent_ncid
integer(4)::status
end
end interface
interface
function nf_inq_varids(ncid,nvars,varids) result(status)
integer(4),intent(in)::ncid
integer(4),intent(out)::nvars
integer(4),intent(inout)::varids(1_8:*)
integer(4)::status
end
end interface
interface
function nf_inq_dimids(ncid,ndims,dimids,include_parents) result(status)
integer(4),intent(in)::ncid
integer(4),intent(out)::ndims
integer(4),intent(inout)::dimids(1_8:*)
integer(4),intent(in)::include_parents
integer(4)::status
end
end interface
interface
function nf_inq_typeids(ncid,ntypes,typeids) result(status)
integer(4),intent(in)::ncid
integer(4),intent(out)::ntypes
integer(4),intent(inout)::typeids(1_8:*)
integer(4)::status
end
end interface
interface
function nf_inq_typeid(ncid,name,typeid) result(status)
integer(4),intent(in)::ncid
character(*,1),intent(in)::name
integer(4),intent(out)::typeid
integer(4)::status
end
end interface
interface
function nf_def_grp(parent_ncid,name,new_ncid) result(status)
integer(4),intent(in)::parent_ncid
character(*,1),intent(in)::name
integer(4),intent(out)::new_ncid
integer(4)::status
end
end interface
interface
function nf_rename_grp(grpid,name) result(status)
integer(4),intent(in)::grpid
character(*,1),intent(in)::name
integer(4)::status
end
end interface
interface
function nf_def_compound(ncid,isize,name,typeid) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::isize
character(*,1),intent(in)::name
integer(4),intent(out)::typeid
integer(4)::status
end
end interface
interface
function nf_insert_compound(ncid,xtype,name,offset,field_typeid) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::xtype
character(*,1),intent(in)::name
integer(4),intent(in)::offset
integer(4),intent(in)::field_typeid
integer(4)::status
end
end interface
interface
function nf_insert_array_compound(ncid,xtype,name,offset,field_typeid,ndims,dim_sizes) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::xtype
character(*,1),intent(in)::name
integer(4),intent(in)::offset
integer(4),intent(in)::field_typeid
integer(4),intent(in)::ndims
integer(4),intent(in)::dim_sizes(1_8:*)
integer(4)::status
end
end interface
interface
function nf_inq_type(ncid,xtype,name,isize) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::xtype
character(*,1),intent(in)::name
integer(4),intent(out)::isize
integer(4)::status
end
end interface
interface
function nf_inq_compound(ncid,xtype,name,isize,nfields) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::xtype
character(*,1),intent(inout)::name
integer(4),intent(inout)::isize
integer(4),intent(inout)::nfields
integer(4)::status
end
end interface
interface
function nf_inq_compound_name(ncid,xtype,name) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::xtype
character(*,1),intent(out)::name
integer(4)::status
end
end interface
interface
function nf_inq_compound_size(ncid,xtype,isize) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::xtype
integer(4),intent(inout)::isize
integer(4)::status
end
end interface
interface
function nf_inq_compound_nfields(ncid,xtype,nfields) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::xtype
integer(4),intent(inout)::nfields
integer(4)::status
end
end interface
interface
function nf_inq_compound_field(ncid,xtype,fieldid,name,offset,field_typeid,ndims,dim_sizes) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::xtype
integer(4),intent(in)::fieldid
character(*,1),intent(out)::name
integer(4),intent(out)::offset
integer(4),intent(out)::field_typeid
integer(4),intent(out)::ndims
integer(4),intent(out)::dim_sizes(1_8:*)
integer(4)::status
end
end interface
interface
function nf_inq_compound_fieldname(ncid,xtype,fieldid,name) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::xtype
integer(4),intent(in)::fieldid
character(*,1),intent(out)::name
integer(4)::status
end
end interface
interface
function nf_inq_compound_fieldindex(ncid,xtype,name,fieldid) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::xtype
character(*,1),intent(in)::name
integer(4),intent(out)::fieldid
integer(4)::status
end
end interface
interface
function nf_inq_compound_fieldoffset(ncid,xtype,fieldid,offset) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::xtype
integer(4),intent(in)::fieldid
integer(4),intent(out)::offset
integer(4)::status
end
end interface
interface
function nf_inq_compound_fieldtype(ncid,xtype,fieldid,field_typeid) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::xtype
integer(4),intent(in)::fieldid
integer(4),intent(out)::field_typeid
integer(4)::status
end
end interface
interface
function nf_inq_compound_fieldndims(ncid,xtype,fieldid,ndims) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::xtype
integer(4),intent(in)::fieldid
integer(4),intent(out)::ndims
integer(4)::status
end
end interface
interface
function nf_inq_compound_fielddim_sizes(ncid,xtype,fieldid,dim_sizes) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::xtype
integer(4),intent(in)::fieldid
integer(4),intent(inout)::dim_sizes(1_8:*)
integer(4)::status
end
end interface
interface
function nf_def_vlen(ncid,name,base_typeid,xtype) result(status)
integer(4),intent(in)::ncid
character(*,1),intent(in)::name
integer(4),intent(in)::base_typeid
integer(4),intent(out)::xtype
integer(4)::status
end
end interface
interface
function nf_inq_vlen(ncid,xtype,name,datum_size,base_type) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::xtype
character(*,1),intent(out)::name
integer(4),intent(out)::datum_size
integer(4),intent(out)::base_type
integer(4)::status
end
end interface
interface
function nf_inq_user_type(ncid,xtype,name,isize,base_type,nfields,iclass) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::xtype
character(*,1),intent(inout)::name
integer(4),intent(out)::isize
integer(4),intent(out)::base_type
integer(4),intent(out)::nfields
integer(4),intent(out)::iclass
integer(4)::status
end
end interface
interface
function nf_def_enum(ncid,base_typeid,name,typeid) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::base_typeid
character(*,1),intent(in)::name
integer(4),intent(out)::typeid
integer(4)::status
end
end interface
interface
function nf_inq_enum(ncid,xtype,name,base_nf_type,base_size,num_members) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::xtype
character(*,1),intent(inout)::name
integer(4),intent(inout)::base_nf_type
integer(4),intent(inout)::base_size
integer(4),intent(inout)::num_members
integer(4)::status
end
end interface
interface
function nf_inq_enum_ident(ncid,xtype,value,name) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::xtype
integer(4),intent(in)::value
character(*,1),intent(inout)::name
integer(4)::status
end
end interface
interface
function nf_def_opaque(ncid,isize,name,xtype) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::isize
character(*,1),intent(in)::name
integer(4),intent(out)::xtype
integer(4)::status
end
end interface
interface
function nf_inq_opaque(ncid,xtype,name,isize) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::xtype
character(*,1),intent(inout)::name
integer(4),intent(out)::isize
integer(4)::status
end
end interface
interface
function nf_def_var_chunking(ncid,varid,contiguous,chunksizes) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::contiguous
integer(4),intent(in)::chunksizes(1_8:*)
integer(4)::status
end
end interface
interface
function nf_inq_var_chunking(ncid,varid,contiguous,chunksizes) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(inout)::contiguous
integer(4),intent(inout)::chunksizes(1_8:*)
integer(4)::status
end
end interface
interface
function nf_def_var_deflate(ncid,varid,shuffle,deflate,deflate_level) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::shuffle
integer(4),intent(in)::deflate
integer(4),intent(in)::deflate_level
integer(4)::status
end
end interface
interface
function nf_inq_var_deflate(ncid,varid,shuffle,deflate,deflate_level) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(out)::shuffle
integer(4),intent(out)::deflate
integer(4),intent(out)::deflate_level
integer(4)::status
end
end interface
interface
function nf_def_var_szip(ncid,varid,options_mask,pixels_per_block) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::options_mask
integer(4),intent(in)::pixels_per_block
integer(4)::status
end
end interface
interface
function nf_inq_var_szip(ncid,varid,options_mask,pixels_per_block) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(inout)::options_mask
integer(4),intent(inout)::pixels_per_block
integer(4)::status
end
end interface
interface
function nf_def_var_quantize(ncid,varid,quantize_mode,nsd) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::quantize_mode
integer(4),intent(in)::nsd
integer(4)::status
end
end interface
interface
function nf_inq_var_quantize(ncid,varid,quantize_mode,nsd) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(inout)::quantize_mode
integer(4),intent(inout)::nsd
integer(4)::status
end
end interface
interface
function nf_def_var_zstandard(ncid,varid,zstandard_level) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::zstandard_level
integer(4)::status
end
end interface
interface
function nf_inq_var_zstandard(ncid,varid,zstandard,zstandard_level) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(inout)::zstandard
integer(4),intent(inout)::zstandard_level
integer(4)::status
end
end interface
interface
function nf_def_var_fletcher32(ncid,varid,fletcher32) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::fletcher32
integer(4)::status
end
end interface
interface
function nf_inq_var_fletcher32(ncid,varid,fletcher32) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(out)::fletcher32
integer(4)::status
end
end interface
interface
function nf_def_var_endian(ncid,varid,endiann) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::endiann
integer(4)::status
end
end interface
interface
function nf_inq_var_endian(ncid,varid,endiann) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(out)::endiann
integer(4)::status
end
end interface
interface
function nf_def_var_filter(ncid,varid,id,nparams,params) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::id
integer(4),intent(in)::nparams
integer(4),intent(in)::params(1_8:*)
integer(4)::status
end
end interface
interface
function nf_inq_var_filter(ncid,varid,id,inparams,params) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(inout)::id
integer(4),intent(inout)::inparams
integer(4),intent(inout)::params(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_var1_int64(ncid,varid,ndex,ival) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::ndex(1_8:*)
integer(8),intent(in)::ival
integer(4)::status
end
end interface
interface
function nf_put_vara_int64(ncid,varid,start,counts,ivals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(8),intent(in)::ivals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_vars_int64(ncid,varid,start,counts,strides,ivals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
integer(8),intent(in)::ivals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_varm_int64(ncid,varid,start,counts,strides,maps,ivals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
integer(4),intent(in)::maps(1_8:*)
integer(8),intent(in)::ivals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_var_int64(ncid,varid,ivals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(8),intent(in)::ivals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_var1_int64(ncid,varid,ndex,ival) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::ndex(1_8:*)
integer(8),intent(out)::ival
integer(4)::status
end
end interface
interface
function nf_get_vara_int64(ncid,varid,start,counts,ivals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(8),intent(out)::ivals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_vars_int64(ncid,varid,start,counts,strides,ivals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
integer(8),intent(out)::ivals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_varm_int64(ncid,varid,start,counts,strides,maps,ivals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
integer(4),intent(in)::maps(1_8:*)
integer(8),intent(out)::ivals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_var_int64(ncid,varid,ivals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(8),intent(out)::ivals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_set_chunk_cache(chunk_size,nelems,preemption) result(status)
integer(4),intent(in)::chunk_size
integer(4),intent(in)::nelems
integer(4),intent(in)::preemption
integer(4)::status
end
end interface
interface
function nf_get_chunk_cache(chunk_size,nelems,preemption) result(status)
integer(4),intent(inout)::chunk_size
integer(4),intent(inout)::nelems
integer(4),intent(inout)::preemption
integer(4)::status
end
end interface
interface
function nf_set_var_chunk_cache(ncid,varid,chunk_size,nelems,preemption) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::chunk_size
integer(4),intent(in)::nelems
integer(4),intent(in)::preemption
integer(4)::status
end
end interface
interface
function nf_get_var_chunk_cache(ncid,varid,chunk_size,nelems,preemption) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(inout)::chunk_size
integer(4),intent(inout)::nelems
integer(4),intent(inout)::preemption
integer(4)::status
end
end interface
procedure(integer(4))::nf_insert_enum
procedure(integer(4))::nf_inq_enum_member
procedure(integer(4))::nf_put_att
procedure(integer(4))::nf_get_att
procedure(integer(4))::nf_put_vlen_element
procedure(integer(4))::nf_get_vlen_element
procedure(integer(4))::nf_free_vlen
procedure(integer(4))::nf_free_vlens
procedure(integer(4))::nf_free_string
procedure(integer(4))::nf_put_var
procedure(integer(4))::nf_get_var
procedure(integer(4))::nf_def_var_fill
procedure(integer(4))::nf_inq_var_fill
end
