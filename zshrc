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

# IntelliJ Idea Alias
alias idea='open -a "`ls -dt /Applications/IntelliJ\ IDEA*|head -1`" $*'

# WARLOC Alias
alias load_dotenv='env $(cat .env | xargs) $*'

# include alias for fearless
[[ -f ~/.aliases.fearless ]] && source ~/.aliases.fearless

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs rbenv virtualenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_VIRTUALENV_BACKGROUND=107
POWERLEVEL9K_VIRTUALENV_FOREGROUND='black'

source  ~/powerlevel9K/powerlevel9K.zsh-theme

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

# opam configuration
test -r /Users/fearless/.opam/opam-init/init.zsh && . /Users/fearless/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
