!mod$ v1 sum:acf4d2c744944caa
!need$ fe3180dd7f22d4c1 n parkind1
module yomorog
use parkind1,only:jpim
use parkind1,only:jprb
type::torog
real(8),allocatable::orog(:)
real(8),allocatable::orogl(:)
real(8),allocatable::orogm(:)
real(8),allocatable::orogll(:)
real(8),allocatable::orogmm(:)
real(8),allocatable::oroglm(:)
contains
procedure::alloc=>allocorog
procedure::dealloc=>deallocorog
end type
type::torog_blocked
real(8),allocatable::orog(:,:)
real(8),allocatable::orogl(:,:)
real(8),allocatable::orogm(:,:)
real(8),allocatable::orogll(:,:)
real(8),allocatable::orogmm(:,:)
real(8),allocatable::oroglm(:,:)
contains
procedure::alloc=>allocorogb
procedure::dealloc=>deallocorogb
end type
private::allocorog
private::deallocorog
private::allocorogb
private::deallocorogb
contains
subroutine allocorog(self,kproma,lnhdyn)
class(torog),intent(inout)::self
integer(4),intent(in)::kproma
logical(4),intent(in)::lnhdyn
end
subroutine deallocorog(self,lnhdyn)
class(torog),intent(inout)::self
logical(4),intent(in)::lnhdyn
end
subroutine allocorogb(self,kproma,kgpblks,lnhdyn)
class(torog_blocked),intent(inout)::self
integer(4),intent(in)::kproma
integer(4),intent(in)::kgpblks
logical(4),intent(in)::lnhdyn
end
subroutine deallocorogb(self,lnhdyn)
class(torog_blocked),intent(inout)::self
logical(4),intent(in)::lnhdyn
end
end
