autoload -Uz compinit
compinit

# Aliases
alias ..='cd ..'
alias ..2='cd ../..'
alias ls='ls -G'
alias sl='ls'
alias lc='colorls'
alias vrc='vim ~/.vimrc'
alias zrc='vim ~/.zshrc'
alias cls='clear'
alias szrc='source ~/.zshrc'

# Git Aliases
alias gs='git status'
alias ga='git add'
alias gau='git add -u'
alias gb='git branch'
alias gc='git commit'
alias gcm='git checkout master'
alias gcb='git checkout -b'
alias gd='git diff'
alias gl='git log'
alias glo='git log --oneline'
alias glg='git lg'
alias gpom='git pull origin master'
alias gco='git checkout'

# Tmux Aliases
alias tat='tmux attach -t'
alias tns='tmux new -s'
alias tls='tmux ls'

# include alias for fearless
[[ -f ~/.aliases.fearless ]] && source ~/.aliases.fearless

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs rbenv virtualenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_VIRTUALENV_BACKGROUND=107
POWERLEVEL9K_VIRTUALENV_FOREGROUND='black'

source  ~/powerlevel10k/powerlevel10k.zsh-theme

# eval "$(rbenv init -)"
# export PATH="$(brew --prefix qt@5.5)/bin:$PATH"
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:GOROOT/bin:$GOPATH/bin

export PATH="/usr/local/sbin:$PATH"

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
# The following lines were added by compinstall

fpath=(/usr/local/share/zsh-completions $fpath)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
