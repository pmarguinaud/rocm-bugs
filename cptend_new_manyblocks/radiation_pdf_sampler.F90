!mod$ v1 sum:5993bc012c039fb9
!need$ fe3180dd7f22d4c1 n parkind1
module radiation_pdf_sampler
use parkind1,only:jprb
type::pdf_sampler_type
integer(4)::ncdf
integer(4)::nfsd
real(8)::fsd1
real(8)::inv_fsd_interval
real(8),allocatable::val(:,:)
contains
procedure::setup=>setup_pdf_sampler
procedure::sample=>sample_from_pdf
procedure::masked_sample=>sample_from_pdf_masked
procedure::block_sample=>sample_from_pdf_block
procedure::masked_block_sample=>sample_from_pdf_masked_block
procedure::deallocate=>deallocate_pdf_sampler
end type
contains
subroutine setup_pdf_sampler(this,file_name,iverbose)
class(pdf_sampler_type),intent(inout)::this
character(*,1),intent(in)::file_name
integer(4),intent(in),optional::iverbose
end
subroutine deallocate_pdf_sampler(this)
class(pdf_sampler_type),intent(inout)::this
end
elemental subroutine sample_from_pdf(this,fsd,cdf,val)
class(pdf_sampler_type),intent(in)::this
real(8),intent(in)::fsd
real(8),intent(in)::cdf
real(8),intent(out)::val
end
subroutine sample_from_pdf_masked(this,nsamp,fsd,cdf,val,mask)
class(pdf_sampler_type),intent(in)::this
integer(4),intent(in)::nsamp
real(8),intent(in)::fsd(1_8:int(nsamp,kind=8))
real(8),intent(in)::cdf(1_8:int(nsamp,kind=8))
real(8),intent(out)::val(:)
logical(4),intent(in)::mask(1_8:int(nsamp,kind=8))
end
subroutine sample_from_pdf_block(this,nz,ng,fsd,cdf,val)
class(pdf_sampler_type),intent(in)::this
integer(4),intent(in)::nz
integer(4),intent(in)::ng
real(8),intent(in)::fsd(1_8:int(nz,kind=8))
real(8),intent(in)::cdf(1_8:int(ng,kind=8),1_8:int(nz,kind=8))
real(8),intent(out)::val(:,:)
end
subroutine sample_from_pdf_masked_block(this,nz,ng,fsd,cdf,val,mask)
class(pdf_sampler_type),intent(in)::this
integer(4),intent(in)::nz
integer(4),intent(in)::ng
real(8),intent(in)::fsd(1_8:int(nz,kind=8))
real(8),intent(in)::cdf(1_8:int(ng,kind=8),1_8:int(nz,kind=8))
real(8),intent(out)::val(:,:)
logical(4),intent(in),optional::mask(1_8:int(nz,kind=8))
end
end
