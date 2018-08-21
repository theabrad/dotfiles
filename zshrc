alias ..='cd ..'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs rbenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_MODE='nerdfont-complete'

source  ~/powerlevel9K/powerlevel9K.zsh-theme

eval "$(rbenv init -)"
export PATH="$(brew --prefix qt@5.5)/bin:$PATH"
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:GOROOT/bin:$GOPATH/bin

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
