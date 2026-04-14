!mod$ v1 sum:acc15987a1e3d91c
!need$ fe3180dd7f22d4c1 n parkind1
!need$ f1de5abe9bfe2168 i iso_fortran_env
module field_defaults_module
use,intrinsic::iso_fortran_env,only:int64
use parkind1,only:jpit
use parkind1,only:selected_int_kind
use parkind1,only:jpis
use parkind1,only:jpim
use parkind1,only:jpib
use parkind1,only:jpia
use parkind1,only:jprt
use parkind1,only:selected_real_kind
use parkind1,only:jprs
use parkind1,only:jprm
use parkind1,only:jprb
use parkind1,only:jprd
use parkind1,only:jplm
logical(4)::use_init_debug_value
real(4)::init_debug_value_jprm
real(8)::init_debug_value_jprb
real(8)::init_debug_value_jprd
integer(4)::init_debug_value_jpim
logical(4)::init_debug_value_jplm
logical(4)::get_debug_print_crc
logical(4)::get_debug_print_location
logical(4)::init_pinned_value
logical(4)::init_sync_on_final
logical(4)::init_initialized
logical(4)::init_map_devptr
integer(4)::get_debug_print_location_depth
logical(4)::pool_owned_fields
integer(4)::pool_alloc_padding_factor
integer(8)::pool_block_size
integer(4)::num_async_queues
namelist/namfield_api/use_init_debug_value,init_debug_value_jprm,init_debug_value_jprb,init_debug_value_jprd,init_debug_value_jpim,init_debug_value_jplm,get_debug_print_crc,get_debug_print_location,init_pinned_value,init_sync_on_final,init_map_devptr,get_debug_print_location_depth,pool_owned_fields,pool_alloc_padding_factor,pool_block_size,num_async_queues
end
