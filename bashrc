if [[ ${EUID} == 0 ]] ; then
        PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
else
        PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
fi

export Editor="vim"

alias subl='subl3'
alias ls='ls --color="auto"'
alias grep='grep --color="auto"'
alias mkpkg='makepkg -efi'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
