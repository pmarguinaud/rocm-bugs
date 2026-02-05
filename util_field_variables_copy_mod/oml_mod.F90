!mod$ v1 sum:d6b0ed10c6360817
!need$ 1b952100b097be2c n ec_lun
!need$ 2d97711792dc972b n ec_parkind
module oml_mod
use ec_parkind,only:jpim
use ec_parkind,only:jpib
use ec_lun,only:nulerr
private::jpim
private::jpib
private::nulerr
logical(4)::oml_debug
integer(4),parameter::oml_lock_kind=8_4
integer(4),private::m_event
integer(8),private::m_lock(1_8:2_8)
integer(4),private::n_oml_max_threads
private::abor1
interface
subroutine abor1(cdtext)
character(*,1),intent(in)::cdtext
end
end interface
private::abor1fl
interface
subroutine abor1fl(cdfile,klinenum,cdtext)
character(*,1),intent(in)::cdfile
integer(4),intent(in)::klinenum
character(*,1),intent(in)::cdtext
end
end interface
private::abor1_exception_handler
interface
subroutine abor1_exception_handler()
end
end interface
private::set_abor1_exception_handler
interface
subroutine set_abor1_exception_handler() bind(c,name="set_abor1_exception_handler")
end
end interface
private::oml_set_num_threads_int
private::oml_set_num_threads_str
private::oml_set_debug_bindc
private::oml_get_debug_bindc
private::oml_init_lockid_with_name_bindc
private::oml_init_lockid_bindc
private::oml_init_lock_bindc
private::oml_test_lockid_bindc
private::oml_test_lock_bindc
private::oml_set_lockid_bindc
private::oml_set_lock_bindc
private::oml_unset_lock_bindc
private::oml_unset_lockid_bindc
private::oml_in_parallel_bindc
private::oml_get_max_threads_bindc
private::oml_get_num_threads_bindc
private::oml_my_thread_bindc
interface oml_set_num_threads
procedure::oml_set_num_threads_int
procedure::oml_set_num_threads_str
end interface
interface oml_get_max_threads
procedure::oml_max_threads
end interface
contains
subroutine oml_init()
end
function oml_omp()
logical(4)::oml_omp
end
function oml_in_parallel()
logical(4)::oml_in_parallel
end
function oml_test_lock(mylock)
integer(8),intent(inout),optional::mylock
logical(4)::oml_test_lock
end
subroutine oml_unset_lock(mylock)
integer(8),intent(inout),optional::mylock
end
subroutine oml_set_lock(mylock)
integer(8),intent(inout),optional::mylock
end
subroutine oml_init_lock(mylock)
integer(8),intent(inout),optional::mylock
end
subroutine oml_destroy_lock(mylock)
integer(8),intent(inout),optional::mylock
end
function oml_test_event(k,myevent)
integer(4),intent(in)::k
integer(4),intent(in)::myevent
logical(4)::oml_test_event
end
subroutine oml_wait_event(k,myevent)
integer(4),intent(in)::k
integer(4),intent(in),optional::myevent
end
subroutine oml_set_event(k,myevent)
integer(4),intent(in)::k
integer(4),intent(out),optional::myevent
end
subroutine oml_incr_event(k,myevent)
integer(4)::k
integer(4),intent(inout),optional::myevent
end
subroutine oml_incr_counter(k,kmax)
integer(4),intent(inout)::k
integer(4),intent(in)::kmax
end
function oml_my_thread()
integer(4)::oml_my_thread
end
function oml_max_threads()
integer(4)::oml_max_threads
end
function oml_get_num_threads()
integer(4)::oml_get_num_threads
end
function oml_set_num_threads_int(komp_set_threads)
integer(4),intent(in)::komp_set_threads
integer(4)::oml_set_num_threads_int
end
function oml_set_num_threads_str(cd_env)
character(*,1),intent(in)::cd_env
integer(4)::oml_set_num_threads_str
end
subroutine oml_set_debug_bindc(konoff) bind(c,name="oml_set_debug")
integer(4),intent(in),value::konoff
end
function oml_get_debug_bindc() bind(c,name="oml_get_debug") result(kret)
integer(4)::kret
end
subroutine oml_init_lockid_with_name_bindc(kmylock,cdlockname) bind(c,name="oml_init_lockid_with_name")
integer(8),intent(inout)::kmylock
character(1_4,1),intent(in)::cdlockname(1_8:*)
end
subroutine oml_init_lockid_bindc(kmylock) bind(c,name="oml_init_lockid")
integer(8),intent(inout)::kmylock
end
subroutine oml_init_lock_bindc() bind(c,name="oml_init_lock")
end
function oml_test_lockid_bindc(kmylock) bind(c,name="oml_test_lockid") result(kisset)
integer(8),intent(inout)::kmylock
integer(4)::kisset
end
function oml_test_lock_bindc() bind(c,name="oml_test_lock") result(kisset)
integer(4)::kisset
end
subroutine oml_set_lockid_bindc(kmylock) bind(c,name="oml_set_lockid")
integer(8),intent(inout)::kmylock
end
subroutine oml_set_lock_bindc() bind(c,name="oml_set_lock")
end
subroutine oml_unset_lock_bindc() bind(c,name="oml_unset_lock")
end
subroutine oml_unset_lockid_bindc(kmylock) bind(c,name="oml_unset_lockid")
integer(8),intent(inout)::kmylock
end
function oml_in_parallel_bindc() bind(c,name="oml_in_parallel") result(kispar_region)
integer(4)::kispar_region
end
function oml_get_max_threads_bindc() bind(c,name="oml_get_max_threads") result(ktids)
integer(4)::ktids
end
function oml_get_num_threads_bindc() bind(c,name="oml_get_num_threads") result(ktids)
integer(4)::ktids
end
function oml_my_thread_bindc() bind(c,name="oml_my_thread") result(kmytid)
integer(4)::kmytid
end
end
