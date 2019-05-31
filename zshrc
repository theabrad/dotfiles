autoload -Uz compinit
compinit

# Aliases
alias ..='cd ..'
alias ..2='cd ../..'
alias ls='ls -G'
alias lc='colorls'
alias vrc='vim ~/.vimrc'
alias zrc='vim ~/.zshrc'

# Git Aliases
alias gs='git status'
alias ga='git add'
alias gau='git add -u'
alias gb='git branch'
alias gc='git commit'
alias gcm='git checkout master'
alias gcb='git checkout -b'
alias gd='git diff'
alias gpom='git pull origin master'

# include alias for fearless
[[ -f ~/.aliases.fearless ]] && source ~/.aliases.fearless

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs rbenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_MODE='nerdfont-complete'

source  ~/powerlevel9K/powerlevel9K.zsh-theme

# eval "$(rbenv init -)"
# export PATH="$(brew --prefix qt@5.5)/bin:$PATH"
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:GOROOT/bin:$GOPATH/bin

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
# The following lines were added by compinstall

fpath=(/usr/local/share/zsh-completions $fpath)

# opam configuration
test -r /Users/fearless/.opam/opam-init/init.zsh && . /Users/fearless/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
