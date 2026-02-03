!mod$ v1 sum:02fa50acb5949c1e
!need$ fe3180dd7f22d4c1 n parkind1
!need$ 1913a45a79838a52 n bytes_io_mod
!need$ 99f7ec52259902ea n yomhook
module random_numbers_mix
use parkind1,only:jpim
use parkind1,only:jprb
use yomhook,only:lhook
use yomhook,only:dr_hook
use yomhook,only:jphook
use bytes_io_mod,only:bytes_io_open
use bytes_io_mod,only:bytes_io_close
use bytes_io_mod,only:bytes_io_read
use bytes_io_mod,only:bytes_io_write
use bytes_io_mod,only:bytes_io_mod$bytes_io_mod$bytes_io_read_jpim_int=>bytes_io_read_jpim_int
use bytes_io_mod,only:bytes_io_mod$bytes_io_mod$bytes_io_read_jpim_int_array=>bytes_io_read_jpim_int_array
use bytes_io_mod,only:bytes_io_mod$bytes_io_mod$bytes_io_write_jpim_int=>bytes_io_write_jpim_int
use bytes_io_mod,only:bytes_io_mod$bytes_io_mod$bytes_io_write_jpim_int_array=>bytes_io_write_jpim_int_array
use yomhook,only:yomhook$yomhook$dr_hook_default8=>dr_hook_default8
private::jpim
private::jprb
private::lhook
private::dr_hook
private::jphook
private::bytes_io_open
private::bytes_io_close
private::bytes_io_read
private::bytes_io_write
private::bytes_io_mod$bytes_io_mod$bytes_io_read_jpim_int
private::bytes_io_mod$bytes_io_mod$bytes_io_read_jpim_int_array
private::bytes_io_mod$bytes_io_mod$bytes_io_write_jpim_int
private::bytes_io_mod$bytes_io_mod$bytes_io_write_jpim_int_array
integer(4),parameter,private::jpp=273_4
integer(4),parameter,private::jpq=607_4
integer(4),parameter,private::jps=105_4
integer(4),parameter,private::jpmm=30_4
integer(4),parameter,private::jpm=1073741824_4
integer(4),parameter,private::jpnumsplit=2_4
integer(4),parameter,private::jplensplit=167_4
integer(4),parameter,private::initvalue=12345678_4
type::randomnumberstream
integer(4),private::iused
integer(4),private::inittest
integer(4),private::ix(1_8:607_8)
real(8),private::zrm
end type
contains
subroutine initialize_random_numbers(kseed,yd_stream)
integer(4),intent(in)::kseed
type(randomnumberstream),intent(inout)::yd_stream
end
subroutine uniform_distribution(px,yd_stream)
real(8),contiguous,intent(out)::px(:)
type(randomnumberstream),intent(inout)::yd_stream
end
subroutine gaussian_distribution(px,yd_stream)
real(8),intent(out)::px(:)
type(randomnumberstream),intent(inout)::yd_stream
end
subroutine random_number_restartfile(cdfname,cdaction,yd_stream)
character(*,1),intent(in)::cdfname
character(1_4,1),intent(in)::cdaction
type(randomnumberstream),intent(inout)::yd_stream
end
subroutine wr_rangen_state(kunit,yd_stream)
integer(4),intent(in)::kunit
type(randomnumberstream),intent(in)::yd_stream
end
end
