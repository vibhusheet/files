# .bash_profile
# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin
export PATH
cdls() { cd "$@"
    ls -lah; }
alias cdd="cd .."
alias vim="vim -p "
alias ip="curl ipinfo.io"
alias act="source env/bin/activate"
