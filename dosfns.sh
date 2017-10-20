# ren.sh - attempt to replicate ren command from DOS
filepart() {
  echo ${1%.*}
}
extpart() {
  echo ${1#*.}
}
alias final='for last; do true;done'
# ren *.bat *.old : Acts like DOS command, downgrades gracefully to mv if needed
ren () 
{ 
  final
  [[ $last =~ \* ]] || { mv $@ ; return $? ;}
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
# copy *.bat *.old : Acts like DOS command, downgrades gracefully to cp if needed

copy () 
{ 
  final
  [[ $last =~ \* ]] || { cp $@ ; return $? ;}
  xt=$(extpart $last)
  first=$1
  fpt=$(filepart $first)
xpt=$(extpart $first)
    for i in *.$xpt
    do
    cp ${i%.*}.{$xpt,$xt}
    done
}

