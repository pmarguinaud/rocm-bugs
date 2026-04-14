!mod$ v1 sum:36400f10d6274402
module netcdf_nf_interfaces
interface
function nf_inq_libvers() result(vermsg)
character(80_4,1)::vermsg
end
end interface
interface
function nf_strerror(nerr) result(errmsg)
integer(4),intent(in)::nerr
character(80_4,1)::errmsg
end
end interface
interface
function nf_issyserr(nerr) result(status)
integer(4),intent(in)::nerr
logical(4)::status
end
end interface
interface
function nf_create(path,cmode,ncid) result(status)
character(*,1),intent(in)::path
integer(4),intent(in)::cmode
integer(4),intent(out)::ncid
integer(4)::status
end
end interface
interface
function nf_create_par(path,cmode,comm,info,ncid) result(status)
character(*,1),intent(in)::path
integer(4),intent(in)::cmode
integer(4),intent(in)::comm
integer(4),intent(in)::info
integer(4),intent(out)::ncid
integer(4)::status
end
end interface
interface
function nf__create(path,cmode,initialsz,chunksizehintp,ncid) result(status)
character(*,1),intent(in)::path
integer(4),intent(in)::cmode
integer(4),intent(in)::initialsz
integer(4),intent(in)::chunksizehintp
integer(4),intent(out)::ncid
integer(4)::status
end
end interface
interface
function nf__create_mp(path,cmode,initialsz,basepe,chunksizehintp,ncid) result(status)
character(*,1),intent(in)::path
integer(4),intent(in)::cmode
integer(4),intent(in)::initialsz
integer(4),intent(in)::basepe
integer(4),intent(in)::chunksizehintp
integer(4),intent(out)::ncid
integer(4)::status
end
end interface
interface
function nf_open(path,mode,ncid) result(status)
character(*,1),intent(in)::path
integer(4),intent(in)::mode
integer(4),intent(inout)::ncid
integer(4)::status
end
end interface
interface
function nf_open_par(path,mode,comm,info,ncid) result(status)
character(*,1),intent(in)::path
integer(4),intent(in)::mode
integer(4),intent(in)::comm
integer(4),intent(in)::info
integer(4),intent(out)::ncid
integer(4)::status
end
end interface
interface
function nf__open(path,mode,chunksizehintp,ncid) result(status)
character(*,1),intent(in)::path
integer(4),intent(in)::mode
integer(4),intent(in)::chunksizehintp
integer(4),intent(inout)::ncid
integer(4)::status
end
end interface
interface
function nf__open_mp(path,mode,basepe,chunksizehintp,ncid) result(status)
character(*,1),intent(in)::path
integer(4),intent(in)::mode
integer(4),intent(in)::basepe
integer(4),intent(in)::chunksizehintp
integer(4),intent(inout)::ncid
integer(4)::status
end
end interface
interface
function nf_open_mem(path,mode,size,memory,ncid) result(status)
character(*,1),intent(in)::path
integer(4),intent(in)::mode
integer(4),intent(in)::size
character(1_8,1),intent(in),target::memory(1_8:*)
integer(4),intent(inout)::ncid
integer(4)::status
end
end interface
interface
function nf_var_par_access(ncid,varid,iaccess) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::iaccess
integer(4)::status
end
end interface
interface
function nf_inq_path(ncid,pathlen,path) result(status)
integer(4),intent(in)::ncid
integer(4),intent(inout)::pathlen
character(*,1),intent(inout)::path
integer(4)::status
end
end interface
interface
function nf_set_fill(ncid,fillmode,old_mode) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::fillmode
integer(4),intent(out)::old_mode
integer(4)::status
end
end interface
interface
function nf_set_default_format(newform,old_format) result(status)
integer(4),intent(in)::newform
integer(4),intent(out)::old_format
integer(4)::status
end
end interface
interface
function nf_redef(ncid) result(status)
integer(4),intent(in)::ncid
integer(4)::status
end
end interface
interface
function nf_enddef(ncid) result(status)
integer(4),intent(in)::ncid
integer(4)::status
end
end interface
interface
function nf__enddef(ncid,h_minfree,v_align,v_minfree,r_align) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::h_minfree
integer(4),intent(in)::v_align
integer(4),intent(in)::v_minfree
integer(4),intent(in)::r_align
integer(4)::status
end
end interface
interface
function nf_sync(ncid) result(status)
integer(4),intent(in)::ncid
integer(4)::status
end
end interface
interface
function nf_abort(ncid) result(status)
integer(4),intent(in)::ncid
integer(4)::status
end
end interface
interface
function nf_close(ncid) result(status)
integer(4),intent(in)::ncid
integer(4)::status
end
end interface
interface
function nf_delete(path) result(status)
character(*,1),intent(in)::path
integer(4)::status
end
end interface
interface
function nf_delete_mp(path,pe) result(status)
character(*,1),intent(in)::path
integer(4),intent(in)::pe
integer(4)::status
end
end interface
interface
function nf_set_base_pe(ncid,pe) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::pe
integer(4)::status
end
end interface
interface
function nf_inq_base_pe(ncid,pe) result(status)
integer(4),intent(in)::ncid
integer(4),intent(out)::pe
integer(4)::status
end
end interface
interface
function nf_def_dim(ncid,name,dlen,dimid) result(status)
integer(4),intent(in)::ncid
character(*,1),intent(in)::name
integer(4),intent(in)::dlen
integer(4),intent(out)::dimid
integer(4)::status
end
end interface
interface
function nf_inq_dim(ncid,dimid,name,dlen) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::dimid
character(*,1),intent(out)::name
integer(4),intent(out)::dlen
integer(4)::status
end
end interface
interface
function nf_inq_dimid(ncid,name,dimid) result(status)
integer(4),intent(in)::ncid
character(*,1),intent(in)::name
integer(4),intent(out)::dimid
integer(4)::status
end
end interface
interface
function nf_inq_dimlen(ncid,dimid,dlen) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::dimid
integer(4),intent(out)::dlen
integer(4)::status
end
end interface
interface
function nf_inq_dimname(ncid,dimid,name) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::dimid
character(*,1),intent(out)::name
integer(4)::status
end
end interface
interface
function nf_rename_dim(ncid,dimid,name) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::dimid
character(*,1),intent(in)::name
integer(4)::status
end
end interface
interface
function nf_inq(ncid,ndims,nvars,ngatts,unlimdimid) result(status)
integer(4),intent(in)::ncid
integer(4),intent(out)::ndims
integer(4),intent(out)::nvars
integer(4),intent(out)::ngatts
integer(4),intent(out)::unlimdimid
integer(4)::status
end
end interface
interface
function nf_inq_ndims(ncid,ndims) result(status)
integer(4),intent(in)::ncid
integer(4),intent(out)::ndims
integer(4)::status
end
end interface
interface
function nf_inq_nvars(ncid,nvars) result(status)
integer(4),intent(in)::ncid
integer(4),intent(out)::nvars
integer(4)::status
end
end interface
interface
function nf_inq_natts(ncid,ngatts) result(status)
integer(4),intent(in)::ncid
integer(4),intent(out)::ngatts
integer(4)::status
end
end interface
interface
function nf_inq_unlimdim(ncid,unlimdimid) result(status)
integer(4),intent(in)::ncid
integer(4),intent(out)::unlimdimid
integer(4)::status
end
end interface
interface
function nf_inq_format(ncid,format_type) result(status)
integer(4),intent(in)::ncid
integer(4),intent(out)::format_type
integer(4)::status
end
end interface
interface
function nf_def_var(ncid,name,xtype,nvdims,vdims,varid) result(status)
integer(4),intent(in)::ncid
character(*,1),intent(in)::name
integer(4),intent(in)::xtype
integer(4),intent(in)::nvdims
integer(4),intent(in)::vdims(1_8:*)
integer(4),intent(out)::varid
integer(4)::status
end
end interface
interface
function nf_inq_varndims(ncid,varid,vndims) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(out)::vndims
integer(4)::status
end
end interface
interface
function nf_inq_var(ncid,varid,name,xtype,ndims,dimids,natts) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
character(*,1),intent(out)::name
integer(4),intent(out)::xtype
integer(4),intent(out)::ndims
integer(4),intent(out)::dimids(1_8:*)
integer(4),intent(out)::natts
integer(4)::status
end
end interface
interface
function nf_inq_vardimid(ncid,varid,dimids) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(out)::dimids(1_8:*)
integer(4)::status
end
end interface
interface
function nf_inq_varid(ncid,name,varid) result(status)
integer(4),intent(in)::ncid
character(*,1),intent(in)::name
integer(4),intent(out)::varid
integer(4)::status
end
end interface
interface
function nf_inq_varname(ncid,varid,name) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
character(*,1),intent(out)::name
integer(4)::status
end
end interface
interface
function nf_inq_vartype(ncid,varid,xtype) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(out)::xtype
integer(4)::status
end
end interface
interface
function nf_inq_varnatts(ncid,varid,nvatts) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(out)::nvatts
integer(4)::status
end
end interface
interface
function nf_rename_var(ncid,varid,name) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
character(*,1),intent(in)::name
integer(4)::status
end
end interface
interface
function nf_copy_var(ncid_in,varid,ncid_out) result(status)
integer(4),intent(in)::ncid_in
integer(4),intent(in)::varid
integer(4),intent(in)::ncid_out
integer(4)::status
end
end interface
interface
function nf_inq_att(ncid,varid,name,xtype,nlen) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
character(*,1),intent(in)::name
integer(4),intent(out)::xtype
integer(4),intent(out)::nlen
integer(4)::status
end
end interface
interface
function nf_inq_atttype(ncid,varid,name,xtype) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
character(*,1),intent(in)::name
integer(4),intent(out)::xtype
integer(4)::status
end
end interface
interface
function nf_inq_attlen(ncid,varid,name,nlen) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
character(*,1),intent(in)::name
integer(4),intent(out)::nlen
integer(4)::status
end
end interface
interface
function nf_inq_attid(ncid,varid,name,attnum) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
character(*,1),intent(in)::name
integer(4),intent(out)::attnum
integer(4)::status
end
end interface
interface
function nf_inq_attname(ncid,varid,attnum,name) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::attnum
character(*,1),intent(out)::name
integer(4)::status
end
end interface
interface
function nf_copy_att(ncid_in,varid_in,name,ncid_out,varid_out) result(status)
integer(4),intent(in)::ncid_in
integer(4),intent(in)::varid_in
character(*,1),intent(in)::name
integer(4),intent(in)::ncid_out
integer(4),intent(in)::varid_out
integer(4)::status
end
end interface
interface
function nf_rename_att(ncid,varid,name,newname) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
character(*,1),intent(in)::name
character(*,1),intent(in)::newname
integer(4)::status
end
end interface
interface
function nf_del_att(ncid,varid,name) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
character(*,1),intent(in)::name
integer(4)::status
end
end interface
interface
function nf_put_var1_text(ncid,varid,ndex,chval) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::ndex(1_8:*)
character(1_4,1),intent(in)::chval
integer(4)::status
end
end interface
interface
function nf_put_var1_int1(ncid,varid,ndex,ival) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::ndex(1_8:*)
integer(1),intent(in)::ival
integer(4)::status
end
end interface
interface
function nf_put_var1_int2(ncid,varid,ndex,ival) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::ndex(1_8:*)
integer(2),intent(in)::ival
integer(4)::status
end
end interface
interface
function nf_put_var1_int(ncid,varid,ndex,ival) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::ndex(1_8:*)
integer(4),intent(in)::ival
integer(4)::status
end
end interface
interface
function nf_put_var1_real(ncid,varid,ndex,rval) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::ndex(1_8:*)
real(4),intent(in)::rval
integer(4)::status
end
end interface
interface
function nf_put_var1_double(ncid,varid,ndex,dval) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::ndex(1_8:*)
real(8),intent(in)::dval
integer(4)::status
end
end interface
interface
function nf_get_var1_text(ncid,varid,ndex,chval) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::ndex(1_8:*)
character(1_4,1),intent(out)::chval
integer(4)::status
end
end interface
interface
function nf_get_var1_int1(ncid,varid,ndex,ival) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::ndex(1_8:*)
integer(1),intent(out)::ival
integer(4)::status
end
end interface
interface
function nf_get_var1_int2(ncid,varid,ndex,ival) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::ndex(1_8:*)
integer(2),intent(out)::ival
integer(4)::status
end
end interface
interface
function nf_get_var1_int(ncid,varid,ndex,ival) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::ndex(1_8:*)
integer(4),intent(out)::ival
integer(4)::status
end
end interface
interface
function nf_get_var1_real(ncid,varid,ndex,rval) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::ndex(1_8:*)
real(4),intent(out)::rval
integer(4)::status
end
end interface
interface
function nf_get_var1_double(ncid,varid,ndex,rval) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::ndex(1_8:*)
real(8),intent(out)::rval
integer(4)::status
end
end interface
interface
function nf_put_var_text(ncid,varid,text) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
character(*,1),intent(in)::text
integer(4)::status
end
end interface
interface
function nf_put_var_text_a(ncid,varid,text) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
character(1_4,1),intent(in)::text(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_var_int1(ncid,varid,i1vals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(1),intent(in)::i1vals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_var_int2(ncid,varid,i2vals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(2),intent(in)::i2vals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_var_int(ncid,varid,ivals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::ivals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_var_real(ncid,varid,rvals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
real(4),intent(in)::rvals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_var_double(ncid,varid,dvals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
real(8),intent(in)::dvals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_var_text(ncid,varid,text) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
character(*,1),intent(out)::text
integer(4)::status
end
end interface
interface
function nf_get_var_text_a(ncid,varid,text) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
character(1_4,1),intent(out)::text(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_var_int1(ncid,varid,i1vals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(1),intent(out)::i1vals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_var_int2(ncid,varid,i2vals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(2),intent(out)::i2vals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_var_int(ncid,varid,ivals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(out)::ivals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_var_real(ncid,varid,rvals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
real(4),intent(out)::rvals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_var_double(ncid,varid,dvals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
real(8),intent(out)::dvals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_vars_text(ncid,varid,start,counts,strides,text) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
character(*,1),intent(in)::text
integer(4)::status
end
end interface
interface
function nf_put_vars_text_a(ncid,varid,start,counts,strides,text) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
character(1_4,1),intent(in)::text(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_vars_int1(ncid,varid,start,counts,strides,i1vals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
integer(1),intent(in)::i1vals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_vars_int2(ncid,varid,start,counts,strides,i2vals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
integer(2),intent(in)::i2vals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_vars_int(ncid,varid,start,counts,strides,ivals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
integer(4),intent(in)::ivals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_vars_real(ncid,varid,start,counts,strides,rvals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
real(4),intent(in)::rvals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_vars_double(ncid,varid,start,counts,strides,dvals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
real(8),intent(in)::dvals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_vars_text(ncid,varid,start,counts,strides,text) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
character(*,1),intent(out)::text
integer(4)::status
end
end interface
interface
function nf_get_vars_text_a(ncid,varid,start,counts,strides,text) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
character(1_4,1),intent(out)::text(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_vars_int1(ncid,varid,start,counts,strides,i1vals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
integer(1),intent(out)::i1vals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_vars_int2(ncid,varid,start,counts,strides,i2vals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
integer(2),intent(out)::i2vals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_vars_int(ncid,varid,start,counts,strides,ivals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
integer(4),intent(out)::ivals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_vars_real(ncid,varid,start,counts,strides,rvals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
real(4),intent(out)::rvals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_vars_double(ncid,varid,start,counts,strides,dvals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
real(8),intent(out)::dvals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_varm_text(ncid,varid,start,counts,strides,maps,text) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
integer(4),intent(in)::maps(1_8:*)
character(*,1),intent(in)::text
integer(4)::status
end
end interface
interface
function nf_put_varm_text_a(ncid,varid,start,counts,strides,maps,text) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
integer(4),intent(in)::maps(1_8:*)
character(1_4,1),intent(in)::text(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_varm_int1(ncid,varid,start,counts,strides,maps,i1vals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
integer(4),intent(in)::maps(1_8:*)
integer(1),intent(in)::i1vals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_varm_int2(ncid,varid,start,counts,strides,maps,i2vals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
integer(4),intent(in)::maps(1_8:*)
integer(2),intent(in)::i2vals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_varm_int(ncid,varid,start,counts,strides,maps,ivals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
integer(4),intent(in)::maps(1_8:*)
integer(4),intent(in)::ivals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_varm_real(ncid,varid,start,counts,strides,maps,rvals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
integer(4),intent(in)::maps(1_8:*)
real(4),intent(in)::rvals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_varm_double(ncid,varid,start,counts,strides,maps,dvals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
integer(4),intent(in)::maps(1_8:*)
real(8),intent(in)::dvals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_varm_text(ncid,varid,start,counts,strides,maps,text) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
integer(4),intent(in)::maps(1_8:*)
character(*,1),intent(out)::text
integer(4)::status
end
end interface
interface
function nf_get_varm_text_a(ncid,varid,start,counts,strides,maps,text) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
integer(4),intent(in)::maps(1_8:*)
character(1_4,1),intent(out)::text(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_varm_int1(ncid,varid,start,counts,strides,maps,i1vals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
integer(4),intent(in)::maps(1_8:*)
integer(1),intent(out)::i1vals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_varm_int2(ncid,varid,start,counts,strides,maps,i2vals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
integer(4),intent(in)::maps(1_8:*)
integer(2),intent(out)::i2vals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_varm_int(ncid,varid,start,counts,strides,maps,ivals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
integer(4),intent(in)::maps(1_8:*)
integer(4),intent(out)::ivals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_varm_real(ncid,varid,start,counts,strides,maps,rvals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
integer(4),intent(in)::maps(1_8:*)
real(4),intent(out)::rvals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_varm_double(ncid,varid,start,counts,strides,maps,dvals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::strides(1_8:*)
integer(4),intent(in)::maps(1_8:*)
real(8),intent(out)::dvals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_vara_text(ncid,varid,start,counts,text) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
character(*,1),intent(in)::text
integer(4)::status
end
end interface
interface
function nf_put_vara_text_a(ncid,varid,start,counts,text) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
character(1_4,1),intent(in)::text(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_vara_int1(ncid,varid,start,counts,i1vals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(1),intent(in)::i1vals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_vara_int2(ncid,varid,start,counts,i2vals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(2),intent(in)::i2vals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_vara_int(ncid,varid,start,counts,ivals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(in)::ivals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_vara_int64(ncid,varid,start,counts,i8vals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(8),intent(in)::i8vals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_vara_real(ncid,varid,start,counts,rvals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
real(4),intent(in)::rvals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_vara_double(ncid,varid,start,counts,dvals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
real(8),intent(in)::dvals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_vara_text(ncid,varid,start,counts,text) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
character(*,1),intent(out)::text
integer(4)::status
end
end interface
interface
function nf_get_vara_text_a(ncid,varid,start,counts,text) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
character(1_4,1),intent(out)::text(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_vara_int1(ncid,varid,start,counts,i1vals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(1),intent(out)::i1vals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_vara_int2(ncid,varid,start,counts,i2vals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(2),intent(out)::i2vals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_vara_int(ncid,varid,start,counts,ivals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(4),intent(out)::ivals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_vara_int64(ncid,varid,start,counts,i8vals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
integer(8),intent(out)::i8vals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_vara_real(ncid,varid,start,counts,rvals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
real(4),intent(out)::rvals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_vara_double(ncid,varid,start,counts,dvals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
integer(4),intent(in)::start(1_8:*)
integer(4),intent(in)::counts(1_8:*)
real(8),intent(out)::dvals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_att_text(ncid,varid,name,nlen,text) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
character(*,1),intent(in)::name
integer(4),intent(in)::nlen
character(*,1),intent(in)::text
integer(4)::status
end
end interface
interface
function nf_put_att_text_a(ncid,varid,name,nlen,text) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
character(*,1),intent(in)::name
integer(4),intent(in)::nlen
character(1_4,1),intent(in)::text(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_att_int1(ncid,varid,name,xtype,nlen,i1vals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
character(*,1),intent(in)::name
integer(4),intent(in)::xtype
integer(4),intent(in)::nlen
integer(1),intent(in)::i1vals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_att_int2(ncid,varid,name,xtype,nlen,i2vals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
character(*,1),intent(in)::name
integer(4),intent(in)::xtype
integer(4),intent(in)::nlen
integer(2),intent(in)::i2vals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_att_int(ncid,varid,name,xtype,nlen,ivals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
character(*,1),intent(in)::name
integer(4),intent(in)::xtype
integer(4),intent(in)::nlen
integer(4),intent(in)::ivals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_att_int64(ncid,varid,name,xtype,nlen,i8vals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
character(*,1),intent(in)::name
integer(4),intent(in)::xtype
integer(4),intent(in)::nlen
integer(8),intent(in)::i8vals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_att_real(ncid,varid,name,xtype,nlen,rvals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
character(*,1),intent(in)::name
integer(4),intent(in)::xtype
integer(4),intent(in)::nlen
real(4),intent(in)::rvals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_put_att_double(ncid,varid,name,xtype,nlen,dvals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
character(*,1),intent(in)::name
integer(4),intent(in)::xtype
integer(4),intent(in)::nlen
real(8),intent(in)::dvals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_att_text(ncid,varid,name,text) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
character(*,1),intent(in)::name
character(*,1),intent(out)::text
integer(4)::status
end
end interface
interface
function nf_get_att_text_a(ncid,varid,name,text) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
character(*,1),intent(in)::name
character(1_4,1),intent(out)::text(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_att_int1(ncid,varid,name,i1vals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
character(*,1),intent(in)::name
integer(1),intent(out)::i1vals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_att_int2(ncid,varid,name,i2vals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
character(*,1),intent(in)::name
integer(2),intent(out)::i2vals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_att_int(ncid,varid,name,ivals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
character(*,1),intent(in)::name
integer(4),intent(out)::ivals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_att_int64(ncid,varid,name,i8vals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
character(*,1),intent(in)::name
integer(8),intent(out)::i8vals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_att_real(ncid,varid,name,rvals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
character(*,1),intent(in)::name
real(4),intent(out)::rvals(1_8:*)
integer(4)::status
end
end interface
interface
function nf_get_att_double(ncid,varid,name,dvals) result(status)
integer(4),intent(in)::ncid
integer(4),intent(in)::varid
character(*,1),intent(in)::name
real(8),intent(out)::dvals(1_8:*)
integer(4)::status
end
end interface
procedure(integer(4))::nf_put_var1
procedure(integer(4))::nf_get_var1
procedure(integer(4))::nf_put_vars
procedure(integer(4))::nf_get_vars
procedure(integer(4))::nf_put_vara
procedure(integer(4))::nf_get_vara
procedure(integer(4))::nccre
procedure(integer(4))::ncopn
procedure(integer(4))::ncddef
procedure(integer(4))::ncdid
procedure(integer(4))::ncvdef
procedure(integer(4))::ncvid
procedure(integer(4))::nctlen
procedure(integer(4))::ncsfil
interface nf90_open_mem
procedure::nf_open_mem
end interface
interface nf_put_var_text
procedure::nf_put_var_text
procedure::nf_put_var_text_a
end interface
interface nf_get_var_text
procedure::nf_get_var_text
procedure::nf_get_var_text_a
end interface
interface nf_put_vars_text
procedure::nf_put_vars_text
procedure::nf_put_vars_text_a
end interface
interface nf_get_vars_text
procedure::nf_get_vars_text
procedure::nf_get_vars_text_a
end interface
interface nf_put_varm_text
procedure::nf_put_varm_text
procedure::nf_put_varm_text_a
end interface
interface nf_get_varm_text
procedure::nf_get_varm_text
procedure::nf_get_varm_text_a
end interface
interface nf_put_vara_text
procedure::nf_put_vara_text
procedure::nf_put_vara_text_a
end interface
interface nf_get_vara_text
procedure::nf_get_vara_text
procedure::nf_get_vara_text_a
end interface
interface nf_put_att_text
procedure::nf_put_att_text
procedure::nf_put_att_text_a
end interface
interface nf_get_att_text
procedure::nf_get_att_text
procedure::nf_get_att_text_a
end interface
end
