!mod$ v1 sum:cd6f9d469b06c6f5
!need$ fe3180dd7f22d4c1 n parkind1
module type_aero
use parkind1,only:jpim
use parkind1,only:jprb
integer(4),parameter::nsw_max=14_4
integer(4),parameter::nlw_max=16_4
type::taero_phobic
real(8),allocatable::rext(:,:)
real(8),allocatable::rssa(:,:)
real(8),allocatable::rasm(:,:)
end type
type::taero_philic
real(8),allocatable::rext(:,:,:)
real(8),allocatable::rssa(:,:,:)
real(8),allocatable::rasm(:,:,:)
end type
type::taero_sw_file
integer(4)::nband
real(8),allocatable::rweight(:)
real(8),allocatable::rmask(:,:)
type(taero_phobic)::phobic
type(taero_philic)::philic
end type
type::taero_lw_file
integer(4)::nband
real(8),allocatable::rweight(:)
real(8),allocatable::rmask(:,:)
type(taero_phobic)::phobic
type(taero_philic)::philic
end type
type::taero_sw_avg
integer(4)::nband
type(taero_phobic)::phobic
type(taero_philic)::philic
end type
type::taero_lw_avg
integer(4)::nband
type(taero_phobic)::phobic
type(taero_philic)::philic
end type
type::taero_file
integer(4)::naero
type(taero_sw_file)::sw
type(taero_lw_file)::lw
end type
type::taero_avg
integer(4)::nhum
real(8),allocatable::rhum(:)
type(taero_sw_avg)::sw
type(taero_lw_avg)::lw
end type
end
