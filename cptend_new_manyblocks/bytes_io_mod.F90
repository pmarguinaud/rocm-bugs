!mod$ v1 sum:1913a45a79838a52
!need$ 6126d106263900c3 n mpl_module
!need$ 99f7ec52259902ea n yomhook
!need$ 2d97711792dc972b n ec_parkind
module bytes_io_mod
use ec_parkind,only:jprd
use ec_parkind,only:jpim
use ec_parkind,only:jpib
use ec_parkind,only:jprm
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use mpl_module,only:mpl_abort
use yomhook,only:yomhook$yomhook$dr_hook_default8=>dr_hook_default8
private::jprd
private::jpim
private::jpib
private::jprm
private::lhook
private::dr_hook
private::jphook
private::mpl_abort
integer(4),parameter::jpbytes_io_success=0_4
integer(4),parameter,private::jpbytes_io_could_not_open_file=-1_4
integer(4),parameter,private::jpbytes_io_could_not_close_file=-1_4
integer(4),parameter,private::jpbytes_io_invalid_file_name=-2_4
integer(4),parameter,private::jpbytes_io_invalid_open_mode=-3_4
integer(4),parameter,private::jpbytes_io_end_of_file=-1_4
integer(4),parameter,private::jpbytes_io_seek_error=-2_4
integer(4),parameter,private::jpbytes_io_read_jpim_error=-2_4
integer(4),parameter,private::jpbytes_io_write_jpim_error=-1_4
private::bytes_io_read_jpim_int
private::bytes_io_read_jpim_int_array
private::bytes_io_read_jpim_real4
private::bytes_io_read_jpim_real4_array
private::bytes_io_read_jpim_real4_array2
private::bytes_io_read_jpim_real8
private::bytes_io_read_jpim_real8_array
private::bytes_io_read_jpim_real8_array2
private::bytes_io_read_jpim_char_array
private::bytes_io_write_jpim_int
private::bytes_io_write_jpim_int_array
private::bytes_io_write_jpim_real4
private::bytes_io_write_jpim_real4_array
private::bytes_io_write_jpim_real4_array2
private::bytes_io_write_jpim_real8
private::bytes_io_write_jpim_real8_array
private::bytes_io_write_jpim_real8_array2
private::bytes_io_write_jpim_char_array
private::bytes_io_read_jpib_int
private::bytes_io_read_jpib_int_array
private::bytes_io_read_jpib_real4
private::bytes_io_read_jpib_real4_array
private::bytes_io_read_jpib_real4_array2
private::bytes_io_read_jpib_real8
private::bytes_io_read_jpib_real8_array
private::bytes_io_read_jpib_real8_array2
private::bytes_io_read_jpib_char_array
private::bytes_io_write_jpib_int
private::bytes_io_write_jpib_int_array
private::bytes_io_write_jpib_real4
private::bytes_io_write_jpib_real4_array
private::bytes_io_write_jpib_real4_array2
private::bytes_io_write_jpib_real8
private::bytes_io_write_jpib_real8_array
private::bytes_io_write_jpib_real8_array2
private::bytes_io_write_jpib_char_array
interface bytes_io_read
procedure::bytes_io_read_jpim_int
procedure::bytes_io_read_jpim_int_array
procedure::bytes_io_read_jpim_real4
procedure::bytes_io_read_jpim_real4_array
procedure::bytes_io_read_jpim_real4_array2
procedure::bytes_io_read_jpim_real8
procedure::bytes_io_read_jpim_real8_array
procedure::bytes_io_read_jpim_real8_array2
procedure::bytes_io_read_jpim_char_array
procedure::bytes_io_read_jpib_int
procedure::bytes_io_read_jpib_int_array
procedure::bytes_io_read_jpib_real4
procedure::bytes_io_read_jpib_real4_array
procedure::bytes_io_read_jpib_real4_array2
procedure::bytes_io_read_jpib_real8
procedure::bytes_io_read_jpib_real8_array
procedure::bytes_io_read_jpib_real8_array2
procedure::bytes_io_read_jpib_char_array
end interface
interface bytes_io_write
procedure::bytes_io_write_jpim_int
procedure::bytes_io_write_jpim_int_array
procedure::bytes_io_write_jpim_real4
procedure::bytes_io_write_jpim_real4_array
procedure::bytes_io_write_jpim_real4_array2
procedure::bytes_io_write_jpim_real8
procedure::bytes_io_write_jpim_real8_array
procedure::bytes_io_write_jpim_real8_array2
procedure::bytes_io_write_jpim_char_array
procedure::bytes_io_write_jpib_int
procedure::bytes_io_write_jpib_int_array
procedure::bytes_io_write_jpib_real4
procedure::bytes_io_write_jpib_real4_array
procedure::bytes_io_write_jpib_real4_array2
procedure::bytes_io_write_jpib_real8
procedure::bytes_io_write_jpib_real8_array
procedure::bytes_io_write_jpib_real8_array2
procedure::bytes_io_write_jpib_char_array
end interface
contains
subroutine bytes_io_open(kfile,cdpath,cdmode,kret)
integer(4),intent(out)::kfile
character(*,1),intent(in)::cdpath
character(1_4,1),intent(in)::cdmode
integer(4),intent(out),optional::kret
end
subroutine bytes_io_close(kfile,kret)
integer(4),intent(in)::kfile
integer(4),intent(out),optional::kret
end
subroutine bytes_io_flush(kfile)
integer(4),intent(in)::kfile
end
subroutine bytes_io_seek(kfile,koffset,kwhence,kret)
integer(4),intent(in)::kfile
integer(4),intent(in)::koffset
integer(4),intent(in)::kwhence
integer(4),intent(out),optional::kret
end
subroutine bytes_io_tell(kfile,kret)
integer(4),intent(in)::kfile
integer(4),intent(out),optional::kret
end
subroutine bytes_io_read_jpim_int(kfile,kbuf,kbytes,kret)
integer(4),intent(in)::kfile
integer(4),intent(out)::kbuf
integer(4),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_read_jpim_int_array(kfile,kbuf,kbytes,kret)
integer(4),intent(in)::kfile
integer(4),intent(out)::kbuf(:)
integer(4),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_read_jpim_real4(kfile,pbuf,kbytes,kret)
integer(4),intent(in)::kfile
real(4),intent(out)::pbuf
integer(4),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_read_jpim_real4_array(kfile,pbuf,kbytes,kret)
integer(4),intent(in)::kfile
real(4),intent(out)::pbuf(:)
integer(4),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_read_jpim_real4_array2(kfile,pbuf,kbytes,kret)
integer(4),intent(in)::kfile
real(4),intent(out)::pbuf(:,:)
integer(4),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_read_jpim_real8(kfile,pbuf,kbytes,kret)
integer(4),intent(in)::kfile
real(8),intent(out)::pbuf
integer(4),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_read_jpim_real8_array(kfile,pbuf,kbytes,kret)
integer(4),intent(in)::kfile
real(8),intent(out)::pbuf(:)
integer(4),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_read_jpim_real8_array2(kfile,pbuf,kbytes,kret)
integer(4),intent(in)::kfile
real(8),intent(out)::pbuf(:,:)
integer(4),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_read_jpim_char_array(kfile,cdbuf,kbytes,kret)
integer(4),intent(in)::kfile
character(1_4,1),intent(out)::cdbuf(:)
integer(4),intent(inout)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_write_jpim_int(kfile,pbuf,kbytes,kret)
integer(4),intent(in)::kfile
integer(4),intent(in)::pbuf
integer(4),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_write_jpim_int_array(kfile,pbuf,kbytes,kret)
integer(4),intent(in)::kfile
integer(4),intent(in)::pbuf(:)
integer(4),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_write_jpim_real4(kfile,pbuf,kbytes,kret)
integer(4),intent(in)::kfile
real(4),intent(in)::pbuf
integer(4),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_write_jpim_real4_array(kfile,pbuf,kbytes,kret)
integer(4),intent(in)::kfile
real(4),intent(in)::pbuf(:)
integer(4),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_write_jpim_real4_array2(kfile,pbuf,kbytes,kret)
integer(4),intent(in)::kfile
real(4),intent(in)::pbuf(:,:)
integer(4),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_write_jpim_real8(kfile,pbuf,kbytes,kret)
integer(4),intent(in)::kfile
real(8),intent(in)::pbuf
integer(4),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_write_jpim_real8_array(kfile,pbuf,kbytes,kret)
integer(4),intent(in)::kfile
real(8),intent(in)::pbuf(:)
integer(4),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_write_jpim_real8_array2(kfile,pbuf,kbytes,kret)
integer(4),intent(in)::kfile
real(8),intent(in)::pbuf(:,:)
integer(4),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_write_jpim_char_array(kfile,cdbuf,kbytes,kret)
integer(4),intent(in)::kfile
character(1_4,1),intent(in)::cdbuf(:)
integer(4),intent(inout)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_read_jpib_int(kfile,kbuf,kbytes,kret)
integer(4),intent(in)::kfile
integer(4),intent(out)::kbuf
integer(8),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_read_jpib_int_array(kfile,kbuf,kbytes,kret)
integer(4),intent(in)::kfile
integer(4),intent(out)::kbuf(:)
integer(8),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_read_jpib_real4(kfile,pbuf,kbytes,kret)
integer(4),intent(in)::kfile
real(4),intent(out)::pbuf
integer(8),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_read_jpib_real4_array(kfile,pbuf,kbytes,kret)
integer(4),intent(in)::kfile
real(4),intent(out)::pbuf(:)
integer(8),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_read_jpib_real4_array2(kfile,pbuf,kbytes,kret)
integer(4),intent(in)::kfile
real(4),intent(out)::pbuf(:,:)
integer(8),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_read_jpib_real8(kfile,pbuf,kbytes,kret)
integer(4),intent(in)::kfile
real(8),intent(out)::pbuf
integer(8),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_read_jpib_real8_array(kfile,pbuf,kbytes,kret)
integer(4),intent(in)::kfile
real(8),intent(out)::pbuf(:)
integer(8),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_read_jpib_real8_array2(kfile,pbuf,kbytes,kret)
integer(4),intent(in)::kfile
real(8),intent(out)::pbuf(:,:)
integer(8),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_read_jpib_char_array(kfile,cdbuf,kbytes,kret)
integer(4),intent(in)::kfile
character(1_4,1),intent(out)::cdbuf(:)
integer(8),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_write_jpib_int(kfile,pbuf,kbytes,kret)
integer(4),intent(in)::kfile
integer(4),intent(in)::pbuf
integer(8),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_write_jpib_int_array(kfile,pbuf,kbytes,kret)
integer(4),intent(in)::kfile
integer(4),intent(in)::pbuf(:)
integer(8),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_write_jpib_real4(kfile,pbuf,kbytes,kret)
integer(4),intent(in)::kfile
real(4),intent(in)::pbuf
integer(8),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_write_jpib_real4_array(kfile,pbuf,kbytes,kret)
integer(4),intent(in)::kfile
real(4),intent(in)::pbuf(:)
integer(8),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_write_jpib_real4_array2(kfile,pbuf,kbytes,kret)
integer(4),intent(in)::kfile
real(4),intent(in)::pbuf(:,:)
integer(8),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_write_jpib_real8(kfile,pbuf,kbytes,kret)
integer(4),intent(in)::kfile
real(8),intent(in)::pbuf
integer(8),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_write_jpib_real8_array(kfile,pbuf,kbytes,kret)
integer(4),intent(in)::kfile
real(8),intent(in)::pbuf(:)
integer(8),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_write_jpib_real8_array2(kfile,pbuf,kbytes,kret)
integer(4),intent(in)::kfile
real(8),intent(in)::pbuf(:,:)
integer(8),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
subroutine bytes_io_write_jpib_char_array(kfile,cdbuf,kbytes,kret)
integer(4),intent(in)::kfile
character(1_4,1),intent(in)::cdbuf(:)
integer(8),intent(in)::kbytes
integer(4),intent(out),optional::kret
end
end
