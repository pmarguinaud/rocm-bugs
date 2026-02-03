!mod$ v1 sum:6d1a91c03e08cb34
module field_abort_module
private::field_abort_intf
abstract interface
subroutine field_abort_intf(cdmess)
character(*,1),intent(in)::cdmess
end
end interface
procedure(field_abort_intf),pointer::field_abort_func
intrinsic::null
private::null
contains
subroutine field_abort(cdmess)
character(*,1),intent(in)::cdmess
end
end
