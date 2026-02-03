!mod$ v1 sum:a6b3481ff7807678
!need$ fe3180dd7f22d4c1 n parkind1
module yoecmip
use parkind1,only:jpim
use parkind1,only:jprb
integer(4),parameter::nlon1_cmip5=72_4
integer(4),parameter::nlat1_cmip5=37_4
integer(4),parameter::nlv1_cmip5=24_4
integer(4),parameter::nlon1_cmip6=144_4
integer(4),parameter::nlat1_cmip6=96_4
integer(4),parameter::nlv1_cmip6=66_4
integer(4),parameter::nmonth1=14_4
type::tecmip
integer(4)::nrcp
integer(4)::no3cmip
integer(4)::nghgcmip
integer(4)::ncmipfixyr
integer(4)::ncurryr=-1_4
character(260_4,1)::ghgdatadir
character(260_4,1)::csolardata
character(260_4,1)::co3datadir
character(80_4,1)::co3datafil
real(8),allocatable::zozcl(:,:,:,:)
real(8),allocatable::rsinc1(:)
real(8),allocatable::rproc1(:)
real(8),allocatable::rlatcli(:)
real(8),allocatable::rloncli(:)
real(8),allocatable::rozt1(:,:,:)
end type
end
