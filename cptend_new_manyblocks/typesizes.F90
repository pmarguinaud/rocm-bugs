!mod$ v1 sum:b66a367119fb799f
module typesizes
integer(4),parameter::onebyteint=1_4
intrinsic::selected_int_kind
integer(4),parameter::twobyteint=2_4
integer(4),parameter::fourbyteint=4_4
integer(4),parameter::eightbyteint=8_4
integer(4),parameter::fourbytereal=4_4
intrinsic::selected_real_kind
integer(4),parameter::eightbytereal=8_4
contains
function bytesizesok()
logical(4)::bytesizesok
end
end
