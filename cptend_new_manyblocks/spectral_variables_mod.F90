!mod$ v1 sum:a298b913decd0880
!need$ fe3180dd7f22d4c1 n parkind1
module spectral_variables_mod
use parkind1,only:jpim
integer(4),parameter::jp_max_n_spjb_vars=500_4
type::spectral_variables
integer(4)::ns3d
integer(4)::ns2d
integer(4)::ns1d
integer(4)::ngrbvar(1_8:500_8)
end type
end
