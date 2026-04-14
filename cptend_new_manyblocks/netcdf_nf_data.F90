!mod$ v1 sum:c0b7901dfd247b37
!need$ 6df3a4026c28925a n netcdf_nc_data
module netcdf_nf_data
use netcdf_nc_data,only:c_associated
use netcdf_nc_data,only:c_funloc
use netcdf_nc_data,only:c_funptr
use netcdf_nc_data,only:c_f_pointer
use netcdf_nc_data,only:c_loc
use netcdf_nc_data,only:c_null_funptr
use netcdf_nc_data,only:c_null_ptr
use netcdf_nc_data,only:c_ptr
use netcdf_nc_data,only:c_sizeof
use netcdf_nc_data,only:operator(==)
use netcdf_nc_data,only:operator(/=)
use netcdf_nc_data,only:c_int8_t
use netcdf_nc_data,only:c_int16_t
use netcdf_nc_data,only:c_int32_t
use netcdf_nc_data,only:c_int64_t
use netcdf_nc_data,only:c_int128_t
use netcdf_nc_data,only:c_int
use netcdf_nc_data,only:c_short
use netcdf_nc_data,only:c_long
use netcdf_nc_data,only:c_long_long
use netcdf_nc_data,only:c_signed_char
use netcdf_nc_data,only:c_size_t
use netcdf_nc_data,only:c_intmax_t
use netcdf_nc_data,only:c_intptr_t
use netcdf_nc_data,only:c_ptrdiff_t
use netcdf_nc_data,only:c_int_least8_t
use netcdf_nc_data,only:c_int_fast8_t
use netcdf_nc_data,only:c_int_least16_t
use netcdf_nc_data,only:c_int_fast16_t
use netcdf_nc_data,only:c_int_least32_t
use netcdf_nc_data,only:c_int_fast32_t
use netcdf_nc_data,only:c_int_least64_t
use netcdf_nc_data,only:c_int_fast64_t
use netcdf_nc_data,only:c_int_least128_t
use netcdf_nc_data,only:c_int_fast128_t
use netcdf_nc_data,only:c_float
use netcdf_nc_data,only:c_double
use netcdf_nc_data,only:c_long_double
use netcdf_nc_data,only:c_float_complex
use netcdf_nc_data,only:c_double_complex
use netcdf_nc_data,only:c_long_double_complex
use netcdf_nc_data,only:c_bool
use netcdf_nc_data,only:c_char
use netcdf_nc_data,only:c_null_char
use netcdf_nc_data,only:c_alert
use netcdf_nc_data,only:c_backspace
use netcdf_nc_data,only:c_form_feed
use netcdf_nc_data,only:c_new_line
use netcdf_nc_data,only:c_carriage_return
use netcdf_nc_data,only:c_horizontal_tab
use netcdf_nc_data,only:c_vertical_tab
use netcdf_nc_data,only:c_float128
use netcdf_nc_data,only:c_float128_complex
use netcdf_nc_data,only:c_uint8_t
use netcdf_nc_data,only:c_uint16_t
use netcdf_nc_data,only:c_uint32_t
use netcdf_nc_data,only:c_uint64_t
use netcdf_nc_data,only:c_uint128_t
use netcdf_nc_data,only:c_unsigned_char
use netcdf_nc_data,only:c_unsigned_short
use netcdf_nc_data,only:c_unsigned
use netcdf_nc_data,only:c_unsigned_long
use netcdf_nc_data,only:c_unsigned_long_long
use netcdf_nc_data,only:c_uintmax_t
use netcdf_nc_data,only:c_uint_fast8_t
use netcdf_nc_data,only:c_uint_fast16_t
use netcdf_nc_data,only:c_uint_fast32_t
use netcdf_nc_data,only:c_uint_fast64_t
use netcdf_nc_data,only:c_uint_fast128_t
use netcdf_nc_data,only:c_uint_least8_t
use netcdf_nc_data,only:c_uint_least16_t
use netcdf_nc_data,only:c_uint_least32_t
use netcdf_nc_data,only:c_uint_least64_t
use netcdf_nc_data,only:c_uint_least128_t
use netcdf_nc_data,only:c_f_procpointer
use netcdf_nc_data,only:selected_real_kind
use netcdf_nc_data,only:selected_int_kind
use netcdf_nc_data,only:rk4
use netcdf_nc_data,only:rk8
use netcdf_nc_data,only:ik1
use netcdf_nc_data,only:ik2
use netcdf_nc_data,only:ik4
use netcdf_nc_data,only:ik8
use netcdf_nc_data,only:cint1
use netcdf_nc_data,only:nfint1
use netcdf_nc_data,only:cint2
use netcdf_nc_data,only:nfint2
use netcdf_nc_data,only:cint
use netcdf_nc_data,only:nfint
use netcdf_nc_data,only:cint8
use netcdf_nc_data,only:nfint8
use netcdf_nc_data,only:nfreal
use netcdf_nc_data,only:c_enum
use netcdf_nc_data,only:kind
use netcdf_nc_data,only:nc_nat
use netcdf_nc_data,only:nc_byte
use netcdf_nc_data,only:nc_char
use netcdf_nc_data,only:nc_short
use netcdf_nc_data,only:nc_int
use netcdf_nc_data,only:nc_float
use netcdf_nc_data,only:nc_double
use netcdf_nc_data,only:nc_fill_char
use netcdf_nc_data,only:nc_fill_byte
use netcdf_nc_data,only:nc_fill_short
use netcdf_nc_data,only:nc_fill_int
use netcdf_nc_data,only:nc_fill_float
use netcdf_nc_data,only:nc_fill_double
use netcdf_nc_data,only:nc_nowrite
use netcdf_nc_data,only:nc_write
use netcdf_nc_data,only:nc_clobber
use netcdf_nc_data,only:nc_noclobber
use netcdf_nc_data,only:nc_fill
use netcdf_nc_data,only:nc_nofill
use netcdf_nc_data,only:nc_lock
use netcdf_nc_data,only:nc_share
use netcdf_nc_data,only:nc_strict_nc3
use netcdf_nc_data,only:nc_64bit_offset
use netcdf_nc_data,only:nc_64bit_data
use netcdf_nc_data,only:nc_cdf5
use netcdf_nc_data,only:nc_sizehint_default
use netcdf_nc_data,only:nc_align_chunk
use netcdf_nc_data,only:nc_format_classic
use netcdf_nc_data,only:nc_format_64bit
use netcdf_nc_data,only:nc_format_64bit_offset
use netcdf_nc_data,only:nc_format_64bit_data
use netcdf_nc_data,only:nc_format_cdf5
use netcdf_nc_data,only:nc_diskless
use netcdf_nc_data,only:nc_mmap
use netcdf_nc_data,only:nc_inmemory
use netcdf_nc_data,only:nc_unlimited
use netcdf_nc_data,only:nc_global
use netcdf_nc_data,only:nc_max_dims
use netcdf_nc_data,only:nc_max_attrs
use netcdf_nc_data,only:nc_max_vars
use netcdf_nc_data,only:nc_max_name
use netcdf_nc_data,only:nc_max_var_dims
use netcdf_nc_data,only:nc_noerr
use netcdf_nc_data,only:nc2_err
use netcdf_nc_data,only:nc_syserr
use netcdf_nc_data,only:nc_exdr
use netcdf_nc_data,only:nc_ebadid
use netcdf_nc_data,only:nc_ebfile
use netcdf_nc_data,only:nc_eexist
use netcdf_nc_data,only:nc_einval
use netcdf_nc_data,only:nc_eperm
use netcdf_nc_data,only:nc_enotindefine
use netcdf_nc_data,only:nc_eindefine
use netcdf_nc_data,only:nc_einvalcoords
use netcdf_nc_data,only:nc_emaxdims
use netcdf_nc_data,only:nc_enameinuse
use netcdf_nc_data,only:nc_enotatt
use netcdf_nc_data,only:nc_emaxatts
use netcdf_nc_data,only:nc_ebadtype
use netcdf_nc_data,only:nc_ebaddim
use netcdf_nc_data,only:nc_eunlimpos
use netcdf_nc_data,only:nc_emaxvars
use netcdf_nc_data,only:nc_enotvar
use netcdf_nc_data,only:nc_eglobal
use netcdf_nc_data,only:nc_enotnc
use netcdf_nc_data,only:nc_ests
use netcdf_nc_data,only:nc_emaxname
use netcdf_nc_data,only:nc_eunlimit
use netcdf_nc_data,only:nc_enorecvars
use netcdf_nc_data,only:nc_echar
use netcdf_nc_data,only:nc_eedge
use netcdf_nc_data,only:nc_estride
use netcdf_nc_data,only:nc_ebadname
use netcdf_nc_data,only:nc_erange
use netcdf_nc_data,only:nc_enomem
use netcdf_nc_data,only:nc_evarsize
use netcdf_nc_data,only:nc_edimsize
use netcdf_nc_data,only:nc_etrunc
use netcdf_nc_data,only:nc_eaxistype
use netcdf_nc_data,only:nc_edap
use netcdf_nc_data,only:nc_ecurl
use netcdf_nc_data,only:nc_eio
use netcdf_nc_data,only:nc_enodata
use netcdf_nc_data,only:nc_edapsvc
use netcdf_nc_data,only:nc_edas
use netcdf_nc_data,only:nc_edds
use netcdf_nc_data,only:nc_edatadds
use netcdf_nc_data,only:nc_edapurl
use netcdf_nc_data,only:nc_edapconstraint
use netcdf_nc_data,only:nc_etranslation
use netcdf_nc_data,only:nc_fatal
use netcdf_nc_data,only:nc_verbose
use netcdf_nc_data,only:nc_format_netcdf4
use netcdf_nc_data,only:nc_format_netcdf4_classic
use netcdf_nc_data,only:nc_netcdf4
use netcdf_nc_data,only:nc_classic_model
use netcdf_nc_data,only:nc_long
use netcdf_nc_data,only:nc_ubyte
use netcdf_nc_data,only:nc_ushort
use netcdf_nc_data,only:nc_uint
use netcdf_nc_data,only:nc_int64
use netcdf_nc_data,only:nc_uint64
use netcdf_nc_data,only:nc_string
use netcdf_nc_data,only:nc_vlen
use netcdf_nc_data,only:nc_opaque
use netcdf_nc_data,only:nc_enum
use netcdf_nc_data,only:nc_compound
use netcdf_nc_data,only:nc_fill_ubyte
use netcdf_nc_data,only:nc_fill_ushort
use netcdf_nc_data,only:nc_fill_uint
use netcdf_nc_data,only:nc_fill_int64
use netcdf_nc_data,only:nc_chunk_seq
use netcdf_nc_data,only:nc_chunk_sub
use netcdf_nc_data,only:nc_chunk_sizes
use netcdf_nc_data,only:nc_endian_native
use netcdf_nc_data,only:nc_endian_little
use netcdf_nc_data,only:nc_endian_big
use netcdf_nc_data,only:nc_chunked
use netcdf_nc_data,only:nc_notcontiguous
use netcdf_nc_data,only:nc_contiguous
use netcdf_nc_data,only:nc_nochecksum
use netcdf_nc_data,only:nc_fletcher32
use netcdf_nc_data,only:nc_noshuffle
use netcdf_nc_data,only:nc_shuffle
use netcdf_nc_data,only:nc_independent
use netcdf_nc_data,only:nc_collective
use netcdf_nc_data,only:nc_mpiio
use netcdf_nc_data,only:nc_mpiposix
use netcdf_nc_data,only:nc_pnetcdf
use netcdf_nc_data,only:nc_szip_ec_option_mask
use netcdf_nc_data,only:nc_szip_nn_option_mask
use netcdf_nc_data,only:nc_ehdferr
use netcdf_nc_data,only:nc_ecantread
use netcdf_nc_data,only:nc_ecantwrite
use netcdf_nc_data,only:nc_ecantcreate
use netcdf_nc_data,only:nc_efilemeta
use netcdf_nc_data,only:nc_edimmeta
use netcdf_nc_data,only:nc_eattmeta
use netcdf_nc_data,only:nc_evarmeta
use netcdf_nc_data,only:nc_enocompound
use netcdf_nc_data,only:nc_eattexists
use netcdf_nc_data,only:nc_enotnc4
use netcdf_nc_data,only:nc_estrictnc3
use netcdf_nc_data,only:nc_enotnc3
use netcdf_nc_data,only:nc_enopar
use netcdf_nc_data,only:nc_eparinit
use netcdf_nc_data,only:nc_ebadgrpid
use netcdf_nc_data,only:nc_ebadtypid
use netcdf_nc_data,only:nc_etypdefined
use netcdf_nc_data,only:nc_ebadfield
use netcdf_nc_data,only:nc_ebadclass
use netcdf_nc_data,only:nc_emaptype
use netcdf_nc_data,only:nc_elatefill
use netcdf_nc_data,only:nc_elatedef
use netcdf_nc_data,only:nc_edimscale
use netcdf_nc_data,only:nc_enogrp
use netcdf_nc_data,only:nc_estorage
use netcdf_nc_data,only:nc_ebadchunk
use netcdf_nc_data,only:nc_enotbuilt
use netcdf_nc_data,only:nc_ediskless
use netcdf_nc_data,only:nc_ecantextend
use netcdf_nc_data,only:nc_empi
use netcdf_nc_data,only:nc_efilter
use netcdf_nc_data,only:nc_ercfile
use netcdf_nc_data,only:nc_enullpad
use netcdf_nc_data,only:nc_einmemory
use netcdf_nc_data,only:nc_enofilter
use netcdf_nc_data,only:nc_enczarr
use netcdf_nc_data,only:nc_es3
use netcdf_nc_data,only:nc_eempty
use netcdf_nc_data,only:nc_eobject
use netcdf_nc_data,only:nc_enoobject
use netcdf_nc_data,only:nc_eplugin
use netcdf_nc_data,only:nc_noquantize
use netcdf_nc_data,only:nc_quantize_bitgroom
integer(4),parameter::nf_nat=0_4
integer(4),parameter::nf_byte=1_4
integer(4),parameter::nf_int1=1_4
integer(4),parameter::nf_char=2_4
integer(4),parameter::nf_short=3_4
integer(4),parameter::nf_int2=3_4
integer(4),parameter::nf_int=4_4
integer(4),parameter::nf_float=5_4
integer(4),parameter::nf_real=5_4
integer(4),parameter::nf_double=6_4
integer(4),parameter::nf_fill_char=0_4
intrinsic::iachar
integer(1),parameter::nf_fill_byte=-127_1
integer(2),parameter::nf_fill_short=-32767_2
integer(4),parameter::nf_fill_int=-2147483647_4
real(4),parameter::nf_fill_float=9.96920996838686904677855295210258432e36_4
real(4),parameter::nf_fill_real=9.96920996838686904677855295210258432e36_4
real(4),parameter::nf_fill_real4=9.96920996838686904677855295210258432e36_4
real(8),parameter::nf_fill_double=9.96920996838686904677855295210258432e36_8
real(8),parameter::nf_fill_real8=9.96920996838686904677855295210258432e36_8
integer(4),parameter::nf_nowrite=0_4
integer(4),parameter::nf_write=1_4
integer(4),parameter::nf_clobber=0_4
integer(4),parameter::nf_noclobber=4_4
integer(4),parameter::nf_fill=0_4
integer(4),parameter::nf_nofill=256_4
integer(4),parameter::nf_lock=1024_4
integer(4),parameter::nf_share=2048_4
integer(4),parameter::nf_strict_nc3=8_4
integer(4),parameter::nf_64bit_offset=512_4
integer(4),parameter::nf_sizehint_default=0_4
integer(4),parameter::nf_align_chunk=-1_4
integer(4),parameter::nf_format_classic=1_4
integer(4),parameter::nf_format_64bit=2_4
integer(4),parameter::nf_diskless=8_4
integer(4),parameter::nf_mmap=16_4
integer(4),parameter::nf_inmemory=32768_4
integer(4),parameter::nf_unlimited=0_4
integer(4),parameter::nf_global=0_4
integer(4),parameter::nf_max_dims=1024_4
integer(4),parameter::nf_max_attrs=8192_4
integer(4),parameter::nf_max_vars=8192_4
integer(4),parameter::nf_max_name=256_4
integer(4),parameter::nf_max_var_dims=1024_4
integer(4),parameter::nf_noerr=0_4
integer(4),parameter::nf2_err=-1_4
integer(4),parameter::nf_syserr=-31_4
integer(4),parameter::nf_exdr=-32_4
integer(4),parameter::nf_ebadid=-33_4
integer(4),parameter::nf_ebfile=-34_4
integer(4),parameter::nf_eexist=-35_4
integer(4),parameter::nf_einval=-36_4
integer(4),parameter::nf_eperm=-37_4
integer(4),parameter::nf_enotindefine=-38_4
integer(4),parameter::nf_eindefine=-39_4
integer(4),parameter::nf_einvalcoords=-40_4
integer(4),parameter::nf_emaxdims=-41_4
integer(4),parameter::nf_enameinuse=-42_4
integer(4),parameter::nf_enotatt=-43_4
integer(4),parameter::nf_emaxatts=-44_4
integer(4),parameter::nf_ebadtype=-45_4
integer(4),parameter::nf_ebaddim=-46_4
integer(4),parameter::nf_eunlimpos=-47_4
integer(4),parameter::nf_emaxvars=-48_4
integer(4),parameter::nf_enotvar=-49_4
integer(4),parameter::nf_eglobal=-50_4
integer(4),parameter::nf_enotnc=-51_4
integer(4),parameter::nf_ests=-52_4
integer(4),parameter::nf_emaxname=-53_4
integer(4),parameter::nf_eunlimit=-54_4
integer(4),parameter::nf_enorecvars=-55_4
integer(4),parameter::nf_echar=-56_4
integer(4),parameter::nf_eedge=-57_4
integer(4),parameter::nf_estride=-58_4
integer(4),parameter::nf_ebadname=-59_4
integer(4),parameter::nf_erange=-60_4
integer(4),parameter::nf_enomem=-61_4
integer(4),parameter::nf_evarsize=-62_4
integer(4),parameter::nf_edimsize=-63_4
integer(4),parameter::nf_etrunc=-64_4
integer(4),parameter::nf_eaxistype=-65_4
integer(4),parameter::nf_edap=-66_4
integer(4),parameter::nf_ecurl=-67_4
integer(4),parameter::nf_eio=-68_4
integer(4),parameter::nf_enodata=-69_4
integer(4),parameter::nf_edapsvc=-70_4
integer(4),parameter::nf_edas=-71_4
integer(4),parameter::nf_edds=-72_4
integer(4),parameter::nf_edatadds=-73_4
integer(4),parameter::nf_edapurl=-74_4
integer(4),parameter::nf_edapconstraint=-75_4
integer(4),parameter::nf_etranslation=-76_4
integer(4),parameter::nf_fatal=1_4
integer(4),parameter::nf_verbose=2_4
integer(4),parameter::nf_noquantize=0_4
integer(4),parameter::nf_quantize_bitgroom=1_4
integer(4),parameter::nf_long=4_4
integer(4),parameter::nf_ubyte=7_4
integer(4),parameter::nf_ushort=8_4
integer(4),parameter::nf_uint=9_4
integer(4),parameter::nf_int64=10_4
integer(4),parameter::nf_uint64=11_4
integer(4),parameter::nf_string=12_4
integer(4),parameter::nf_vlen=13_4
integer(4),parameter::nf_opaque=14_4
integer(4),parameter::nf_enum=15_4
integer(4),parameter::nf_compound=16_4
integer(4),parameter::nf_fill_ubyte=255_4
integer(4),parameter::nf_fill_uint1=255_4
integer(4),parameter::nf_fill_ushort=65535_4
integer(4),parameter::nf_fill_uint2=65535_4
integer(8),parameter::nf_fill_uint=4294967295_8
integer(8),parameter::nf_fill_int64=-9223372036854775806_8
integer(4),parameter::nf_format_netcdf4=3_4
integer(4),parameter::nf_format_netcdf4_classic=4_4
integer(4),parameter::nf_format_64bit_data=5_4
integer(4),parameter::nf_netcdf4=4096_4
integer(4),parameter::nf_hdf5=4096_4
integer(4),parameter::nf_classic_model=256_4
integer(4),parameter::nf_chunk_seq=0_4
integer(4),parameter::nf_chunk_sub=1_4
integer(4),parameter::nf_chunk_sizes=2_4
integer(4),parameter::nf_endian_native=0_4
integer(4),parameter::nf_endian_little=1_4
integer(4),parameter::nf_endian_big=2_4
integer(4),parameter::nf_chunked=0_4
integer(4),parameter::nf_notcontiguous=0_4
integer(4),parameter::nf_contiguous=1_4
integer(4),parameter::nf_nochecksum=0_4
integer(4),parameter::nf_fletcher32=1_4
integer(4),parameter::nf_noshuffle=0_4
integer(4),parameter::nf_shuffle=1_4
integer(4),parameter::nf_independent=0_4
integer(4),parameter::nf_collective=1_4
integer(4),parameter::nf_mpiio=8192_4
integer(4),parameter::nf_mpiposix=16384_4
integer(4),parameter::nf_pnetcdf=8192_4
integer(4),parameter::nf_szip_ec_option_mask=4_4
integer(4),parameter::nf_szip_nn_option_mask=32_4
integer(4),parameter::nf_ehdferr=-101_4
integer(4),parameter::nf_ecantread=-102_4
integer(4),parameter::nf_ecantwrite=-103_4
integer(4),parameter::nf_ecantcreate=-104_4
integer(4),parameter::nf_efilemeta=-105_4
integer(4),parameter::nf_edimmeta=-106_4
integer(4),parameter::nf_eattmeta=-107_4
integer(4),parameter::nf_evarmeta=-108_4
integer(4),parameter::nf_enocompound=-109_4
integer(4),parameter::nf_eattexists=-110_4
integer(4),parameter::nf_enotnc4=-111_4
integer(4),parameter::nf_estrictnc3=-112_4
integer(4),parameter::nf_enotnc3=-113_4
integer(4),parameter::nf_enopar=-114_4
integer(4),parameter::nf_eparinit=-115_4
integer(4),parameter::nf_ebadgrpid=-116_4
integer(4),parameter::nf_ebadtypid=-117_4
integer(4),parameter::nf_etypdefined=-118_4
integer(4),parameter::nf_ebadfield=-119_4
integer(4),parameter::nf_ebadclass=-120_4
integer(4),parameter::nf_emaptype=-121_4
integer(4),parameter::nf_elatefill=-122_4
integer(4),parameter::nf_elatedef=-123_4
integer(4),parameter::nf_edimscale=-124_4
integer(4),parameter::nf_enogrp=-125_4
integer(4),parameter::nf_estorage=-126_4
integer(4),parameter::nf_ebadchunk=-127_4
integer(4),parameter::nf_enotbuilt=-128_4
integer(4),parameter::nf_ediskless=-129_4
integer(4),parameter::nf_ecantextend=-130_4
integer(4),parameter::nf_empi=-131_4
integer(4),parameter::nf_efilter=-132_4
integer(4),parameter::nf_ercfile=-133_4
integer(4),parameter::nf_enullpad=-134_4
integer(4),parameter::nf_einmemory=-135_4
integer(4),parameter::nf_enofilter=-136_4
integer(4),parameter::nf_enczarr=-137_4
integer(4),parameter::nf_es3=-138_4
integer(4),parameter::nf_eempty=-139_4
integer(4),parameter::nf_eobject=-140_4
integer(4),parameter::nf_enoobject=-141_4
integer(4),parameter::nf_eplugin=-142_4
integer(4),parameter::ncbyte=1_4
integer(4),parameter::ncchar=2_4
integer(4),parameter::ncshort=3_4
integer(4),parameter::nclong=4_4
integer(4),parameter::ncfloat=5_4
integer(4),parameter::ncdouble=6_4
integer(4),parameter::ncrdwr=1_4
integer(4),parameter::nccreate=2_4
integer(4),parameter::ncexcl=4_4
integer(4),parameter::ncindef=8_4
integer(4),parameter::ncnsync=16_4
integer(4),parameter::nchsync=32_4
integer(4),parameter::ncndirty=64_4
integer(4),parameter::nchdirty=128_4
integer(4),parameter::ncfill=0_4
integer(4),parameter::ncnofill=256_4
integer(4),parameter::nclink=32768_4
integer(4),parameter::ncnowrit=0_4
integer(4),parameter::ncwrite=1_4
integer(4),parameter::ncclob=0_4
integer(4),parameter::ncnoclob=4_4
integer(4),parameter::ncunlim=0_4
integer(4),parameter::ncglobal=0_4
integer(4),parameter::maxncop=64_4
integer(4),parameter::maxncdim=1024_4
integer(4),parameter::maxncatt=8192_4
integer(4),parameter::maxncvar=8192_4
integer(4),parameter::maxncnam=256_4
integer(4),parameter::maxvdims=1024_4
integer(4),parameter::ncnoerr=0_4
integer(4),parameter::ncebadid=-33_4
integer(4),parameter::ncenfile=-31_4
integer(4),parameter::nceexist=-35_4
integer(4),parameter::nceinval=-36_4
integer(4),parameter::nceperm=-37_4
integer(4),parameter::ncenotin=-38_4
integer(4),parameter::nceindef=-39_4
integer(4),parameter::ncecoord=-40_4
integer(4),parameter::ncemaxds=-41_4
integer(4),parameter::ncename=-42_4
integer(4),parameter::ncemaxat=-44_4
integer(4),parameter::ncebadty=-45_4
integer(4),parameter::ncebadd=-46_4
integer(4),parameter::nceunlim=-47_4
integer(4),parameter::ncemaxvs=-48_4
integer(4),parameter::ncenotvr=-49_4
integer(4),parameter::nceglob=-50_4
integer(4),parameter::ncnotnc=-51_4
integer(4),parameter::ncestc=-52_4
integer(4),parameter::ncentool=-53_4
integer(4),parameter::ncfoobar=32_4
integer(4),parameter::ncsyserr=-31_4
integer(4),parameter::ncfatal=1_4
integer(4),parameter::ncverbos=2_4
integer(4),parameter::filchar=0_4
integer(1),parameter::filbyte=-127_1
integer(2),parameter::filshort=-32767_2
integer(4),parameter::fillong=-2147483647_4
real(4),parameter::filfloat=9.96920996838686904677855295210258432e36_4
real(8),parameter::fildoub=9.96920996838686904677855295210258432e36_8
end
