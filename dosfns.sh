# ren.sh - attempt to replicate ren command from DOS
filepart() {
  echo ${1%.*}
}
extpart() {
  echo ${1#*.}
}
alias final='for last; do true;done'
ren () 
{ 
  final
  xt=$(extpart $last)
  first=$1
  fpt=$(filepart $first)
xpt=$(extpart $first)
    for i in *.$xpt
    do
    mv ${i%.*}.{$xpt,$xt}
    done
}
#
# copy *.old *.new
copy () 
{ 
  final
  xt=$(extpart $last)
  first=$1
  fpt=$(filepart $first)
xpt=$(extpart $first)
    for i in *.$xpt
    do
    cp ${i%.*}.{$xpt,$xt}
    done
}

