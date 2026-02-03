!mod$ v1 sum:28a76a89d681a81c
!need$ 25b02d753545073c n modd_parameters
module modd_io
use modd_parameters,only:nfilenamelgtmax
integer(4),parameter::nverb_no=0_4
integer(4),parameter::nverb_fatal=1_4
integer(4),parameter::nverb_error=2_4
integer(4),parameter::nverb_warning=3_4
integer(4),parameter::nverb_info=4_4
integer(4),parameter::nverb_debug=5_4
integer(4),parameter::n_abort_level=2_4
type::tfiledata
logical(4)::lopened=.false._4
integer(4)::nlu=-1_4
end type
end
