autoload -Uz compinit
compinit

# Aliases
alias ..='cd ..'
alias ..2='cd ../..'
if type exa > /dev/null 2>&1; then
  alias ls='exa'
else
  alias ls='ls -G'
fi
alias sl='ls'
alias lc='colorls'
alias vrc='vim ~/.vimrc'
alias zrc='vim ~/.zshrc'
alias cls='clear'
alias szrc='source ~/.zshrc'

if type nvim > /dev/null 2>&1; then
  alias vim='nvim'
fi

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

# Powerlevel 10k configurations
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs rbenv virtualenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_VIRTUALENV_BACKGROUND=107
POWERLEVEL9K_VIRTUALENV_FOREGROUND='black'

source  ~/powerlevel10k/powerlevel10k.zsh-theme

# golang configurations
export GOPATH=$HOME/go
case "$OSTYPE" in 
  darwin*)
    export GOROOT="$(brew --prefix golang)/libexec"
  ;;
  linux*)
    export GOROOT="/usr/lib/golang"
  ;;
esac
export GOROOT="/usr/lib/golang"
export PATH=$PATH:GOROOT/bin:$GOPATH/bin

export PATH="/usr/local/sbin:$PATH"

# asdf configurations
if type brew > /dev/null 2>&1; then
  . /opt/homebrew/opt/asdf/libexec/asdf.sh
  fpath=(/usr/local/share/zsh-completions $fpath)
else
  . $HOME/.asdf/asdf.sh
  fpath=(${ASDF_DIR}/completions $fpath)
fi

# no sudo for global npm packages
if [[ "$OSTYPE" == "linux-gnu"* ]];then
  NPM_PACKAGES=$HOME/.npm-packages
  export PATH=$PATH:$NPM_PACKAGES/bin
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# bun completions
[ -s "/home/steezus/.bun/_bun" ] && source "/home/steezus/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/steezus/.zshrc'

