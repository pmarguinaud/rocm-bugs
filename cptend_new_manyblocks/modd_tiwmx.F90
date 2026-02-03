!mod$ v1 sum:38b69ded9c912757
module modd_tiwmx
real(8),parameter::xndegr=1.e2_8
integer(4),parameter::nstart=13200_4
integer(4),parameter::nstop=37316_4
type::tiwmx_t
real(8)::estabw(13200_8:37316_8)
real(8)::destabw(13200_8:37316_8)
real(8)::estabi(13200_8:37316_8)
real(8)::destabi(13200_8:37316_8)
real(8)::a2tab(13200_8:37316_8)
real(8)::bb3tab(13200_8:37316_8)
real(8)::am3tab(13200_8:37316_8)
real(8)::af3tab(13200_8:37316_8)
real(8)::a2wtab(13200_8:37316_8)
real(8)::bb3wtab(13200_8:37316_8)
real(8)::redintab(13200_8:37316_8)
end type
type(tiwmx_t),save,target::tiwmx
end
