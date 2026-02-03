!mod$ v1 sum:f825a4621c8628b4
!need$ fe3180dd7f22d4c1 n parkind1
module yomwindfarm
use parkind1,only:jpim
use parkind1,only:jprb
type::twfmeta
integer(4)::n_wt
integer(4),allocatable::mwt_type(:)
integer(4),allocatable::mgpblk_wt(:)
integer(4),allocatable::mproma_wt(:)
real(8),allocatable::wtt_hubheight(:)
real(8),allocatable::wtt_radius(:)
integer(4)::max_wt_per_gp
integer(4),allocatable::n_wt_per_gp(:,:)
integer(4),allocatable::wt_per_gp(:,:,:)
integer(4)::n_wt_glob
integer(4),allocatable::mwt_type_glob(:)
real(8),allocatable::wt_lat_glob(:)
real(8),allocatable::wt_lon_glob(:)
real(8),allocatable::wtt_hubheight_glob(:)
real(8),allocatable::wtt_radius_glob(:)
integer(4)::n_wt_types
integer(4)::max_wt_type
integer(4),allocatable::n_wtt_wspeeds(:)
real(8),allocatable::wtt_cutin(:)
real(8),allocatable::wtt_cutout(:)
real(8),allocatable::wtt_ct_cutin(:)
real(8),allocatable::wtt_ct_cutout(:)
integer(4),allocatable::mtype_lookup(:)
real(8),allocatable::tbl_wspeed(:,:)
real(8),allocatable::tbl_cp(:,:)
real(8),allocatable::tbl_ct(:,:)
end type
end
