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
  first=$1
edd=${first#*.}
    ext=${last#*.}
    for i in $@;
    do
    mv ${i%.*}.{$edd,$ext};
    done
}
