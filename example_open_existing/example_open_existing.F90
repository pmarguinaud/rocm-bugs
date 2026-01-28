program main

  ! This example program requires the name of an odb2 file to be supplied as an input argument.
  ! It then opens a dbase object based on this file and extracts the data into a dbase_view object.

#ifdef UNDEF
  use dbase_view_mod
  use dbase_factory_mod
 
  implicit none
 
  character(len=strlen)             :: filename
  type(dbase_factory)               :: db_factory
  class(dbase), pointer             :: mydb => null()
  type(dbase_view)                  :: myview
  integer(kind=jpin)                :: rc
#endif

#ifdef UNDEF
 
  ! Use a factory to create an odb2 dbase object
  ! Note that mydb is class(dbase) - the application doesn't know or care what type of dbase (e.g. odb1_dbase, odb2_dbase) is being used
  ! The underlying database can be changed with minimal modifications to the application.
  call db_factory%init("odb2")
  mydb => db_factory%create_dbase(nproc=1,procid=1)
 
  ! Open the database e.g. sample.odb
  call get_command_argument(1,filename)  
  rc = mydb%open(filename,"r")
 
  ! Extract all data from the database into a dbase_view object
  rc = mydb%export(myview)
 
  print*, 'nRows    : ',myview%nrows
  print*, 'nColumns : ',myview%ncols
 
  ! Close the database
  rc = mydb%close(save=.false.)
 
  ! Tidy up
  call myview%destroy()
  call mydb%destroy()
  call db_factory%final()

#endif
 
end program main
