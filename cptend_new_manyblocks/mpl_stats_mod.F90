!mod$ v1 sum:12ac395bea9063cb
module mpl_stats_mod
contains
subroutine mpl_statsinit()
end
subroutine mpl_statson(sendnum,sendbytes,recvnum,recvbytes)
integer(4),intent(out)::sendnum
real(8),intent(out)::sendbytes
integer(4),intent(out)::recvnum
real(8),intent(out)::recvbytes
end
subroutine mpl_statsread(sendnum,sendbytes,recvnum,recvbytes)
integer(4),intent(out)::sendnum
real(8),intent(out)::sendbytes
integer(4),intent(out)::recvnum
real(8),intent(out)::recvbytes
end
subroutine mpl_sendstats(icount,itype)
integer(4),intent(in)::icount
integer(4),intent(in)::itype
end
subroutine mpl_recvstats(icount,itype)
integer(4),intent(in)::icount
integer(4),intent(in)::itype
end
end
