
export ROCM_PREFIX=$(which amdflang)
ROCM_PREFIX=$(dirname $ROCM_PREFIX)
ROCM_PREFIX=$(dirname $ROCM_PREFIX)
ROCM_PREFIX=$(dirname $ROCM_PREFIX)

if [ -f "$ROCM_PREFIX/lib/llvm/lib/libflang_rt.hostdevice.a" ]
then
  export LFLANG_RT_HOSTDEVICE="-lflang_rt.hostdevice"
else
  export LFLANG_RT_HOSTDEVICE=""
fi


function runIfpartitionOK 
{
  part=$1
  shift
  sinfo=$(sinfo -p $part -h -o "%t")
  if [ "$sinfo" = "drain" ]
  then
    exit 100
  else
    srun -p $part $*
  fi
}
