# source this file
alias j='mkdir -p ~/journal;>> ~/journal/jnl.txt echo $(date +"%Y-%m-%d %H:%M:%S")'

# reading it backwards

alias rj='sort -r ~/journal/jnl.txt'


# search for matching strings. Use quoted strings for embedded spaces
alias sj='rj | grep'
