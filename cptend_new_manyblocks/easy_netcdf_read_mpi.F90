!mod$ v1 sum:b86b1eb590a573fd
!need$ 68e17af94e712ae5 n easy_netcdf
!need$ fe3180dd7f22d4c1 n parkind1
!need$ 7266944e5e92cbf3 n radiation_io
module easy_netcdf_read_mpi
use easy_netcdf,only:netcdf_file_raw=>netcdf_file
use parkind1,only:jpim
use parkind1,only:jprb
use radiation_io,only:nulout
use radiation_io,only:nulerr
use radiation_io,only:my_abort=>radiation_abort
integer(4),parameter::mtagrad=2800_4
type::netcdf_file
type(netcdf_file_raw)::file
logical(4)::is_master_task=.true._4
logical(4)::multi_open=.false._4
logical(4)::mpi_enabled=.false._4
contains
procedure::open=>open_netcdf_file
procedure::open_active=>open_netcdf_file_active
procedure::close=>close_netcdf_file
procedure::get_rank
procedure::get_real_scalar
procedure::get_int_scalar
procedure::get_real_vector
procedure::get_real_vector_active
procedure::get_int_vector
procedure::get_real_matrix
procedure::get_real_matrix_active
procedure::get_real_array3
procedure::get_real_array3_active
procedure::get_real_array3_indexed
procedure::get_real_array3_indexed2
procedure::get_real_array4
procedure::get_real_array4_active
generic::get=>get_real_scalar
generic::get=>get_int_scalar
generic::get=>get_real_vector
generic::get=>get_int_vector
generic::get=>get_real_matrix
generic::get=>get_real_array3
generic::get=>get_real_array4
generic::get=>get_real_array3_indexed
generic::get=>get_real_array3_indexed2
generic::get_active=>get_real_vector_active
generic::get_active=>get_real_matrix_active
generic::get_active=>get_real_array3_active
generic::get_active=>get_real_array4_active
procedure::get_global_attribute
procedure::set_verbose
procedure::transpose_matrices
procedure::exists
end type
contains
subroutine open_netcdf_file(this,file_name,iverbose)
class(netcdf_file)::this
character(*,1),intent(in)::file_name
integer(4),intent(in),optional::iverbose
end
subroutine open_netcdf_file_active(this,file_name,iverbose)
class(netcdf_file)::this
character(*,1),intent(in)::file_name
integer(4),intent(in),optional::iverbose
end
subroutine close_netcdf_file(this)
class(netcdf_file)::this
end
subroutine set_verbose(this,ival)
class(netcdf_file)::this
integer(4),optional::ival
end
subroutine transpose_matrices(this,do_transpose)
class(netcdf_file)::this
logical(4),optional::do_transpose
end
function exists(this,var_name) result(is_present)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
logical(4)::is_present
end
function get_rank(this,var_name) result(ndims)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
integer(4)::ndims
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
subroutine get_real_vector(this,var_name,vector)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
real(8),allocatable,intent(out)::vector(:)
end
subroutine get_real_vector_active(this,var_name,vector,iactive_rank,irequest,imp_type)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
real(8),allocatable,intent(out)::vector(:)
integer(4),intent(in)::iactive_rank
integer(4),intent(inout),optional::irequest
integer(4),intent(in),optional::imp_type
end
subroutine get_int_vector(this,var_name,vector)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
integer(4),allocatable,intent(out)::vector(:)
end
subroutine get_real_matrix(this,var_name,matrix,do_transp)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
real(8),allocatable,intent(out)::matrix(:,:)
logical(4),intent(in),optional::do_transp
end
subroutine get_real_matrix_active(this,var_name,matrix,do_transp,iactive_rank,irequest,imp_type)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
real(8),allocatable,intent(out)::matrix(:,:)
logical(4),intent(in),optional::do_transp
integer(4),intent(in)::iactive_rank
integer(4),intent(inout),optional::irequest
integer(4),intent(in),optional::imp_type
end
subroutine get_real_array3(this,var_name,var,ipermute)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
real(8),allocatable,intent(out)::var(:,:,:)
integer(4),intent(in),optional::ipermute(1_8:3_8)
end
subroutine get_real_array3_active(this,var_name,var,iactive_rank,ipermute,irequest,imp_type)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
real(8),allocatable,intent(out)::var(:,:,:)
integer(4),intent(in)::iactive_rank
integer(4),intent(in),optional::ipermute(1_8:3_8)
integer(4),intent(inout),optional::irequest
integer(4),intent(in),optional::imp_type
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
subroutine get_real_array4(this,var_name,var,ipermute)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
real(8),allocatable,intent(out)::var(:,:,:,:)
integer(4),intent(in),optional::ipermute(1_8:4_8)
end
subroutine get_real_array4_active(this,var_name,var,iactive_rank,ipermute,irequest,imp_type)
class(netcdf_file)::this
character(*,1),intent(in)::var_name
real(8),allocatable,intent(out)::var(:,:,:,:)
integer(4),intent(in)::iactive_rank
integer(4),intent(in),optional::ipermute(1_8:4_8)
integer(4),intent(inout),optional::irequest
integer(4),intent(in),optional::imp_type
end
subroutine get_global_attribute(this,attr_name,attr_str)
class(netcdf_file)::this
character(*,1),intent(in)::attr_name
character(*,1),intent(inout)::attr_str
end
end
