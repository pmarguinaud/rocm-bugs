!mod$ v1 sum:ea2fa40af8c59281
module ec_env_mod
private::ec_putenv_overwrite_bind_c
interface
subroutine ec_putenv_overwrite_bind_c(env,env_len) bind(c)
character(1_8,1),intent(in)::env(1_8:*)
integer(4),intent(in),value::env_len
end
end interface
private::ec_putenv_nooverwrite_bind_c
interface
subroutine ec_putenv_nooverwrite_bind_c(env,env_len) bind(c)
character(1_8,1),intent(in)::env(1_8:*)
integer(4),intent(in),value::env_len
end
end interface
private::ec_getenv_bind_c
interface
subroutine ec_getenv_bind_c(key,value,key_len,value_len) bind(c)
character(1_8,1),intent(in)::key(1_8:*)
character(1_8,1),intent(inout)::value(1_8:*)
integer(4),intent(in),value::key_len
integer(4),intent(in),value::value_len
end
end interface
private::ec_numenv_bind_c
interface
subroutine ec_numenv_bind_c(value) bind(c)
integer(4),intent(out)::value
end
end interface
private::ec_environ_bind_c
interface
subroutine ec_environ_bind_c(i,value,value_len) bind(c)
integer(4),intent(in)::i
character(1_8,1),intent(inout)::value(1_8:*)
integer(4),intent(in),value::value_len
end
end interface
contains
subroutine ec_putenv(env,overwrite)
character(*,1),intent(in)::env
logical(4),intent(in),optional::overwrite
end
subroutine ec_setenv(key,value,overwrite)
character(*,1),intent(in)::key
character(*,1),intent(in)::value
logical(4),intent(in)::overwrite
end
subroutine ec_getenv(key,value)
character(*,1),intent(in)::key
character(*,1),intent(inout)::value
end
function ec_numenv() result(value)
integer(4)::value
end
subroutine ec_environ(i,value)
integer(4),intent(in)::i
character(*,1),intent(inout)::value
end
end
