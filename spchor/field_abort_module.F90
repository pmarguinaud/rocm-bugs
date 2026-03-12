!mod$ v1 sum:6d1a91c03e08cb34
module field_abort_module

abstract interface
subroutine field_abort_intf(cdmess)
character(*,1),intent(in)::cdmess
end
end interface
procedure(field_abort_intf),pointer::field_abort_func
intrinsic::null

contains
subroutine field_abort(cdmess)
character(*,1),intent(in)::cdmess
end
end
