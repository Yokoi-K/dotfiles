# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# Powerlevel10k
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source ~/.zplug/init.zsh

# zplug plugins
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
zplug "romkatv/powerlevel10k", use:powerlevel10k.zsh-theme, from:github, as:theme

# This plugin is heavy, so I use "bindkey -v"
# zplug "jeffreytse/zsh-vi-mode"

# zplug "b4b4r07/enhancd", use:"init.sh"
zplug "mafredri/zsh-async"
zplug "chrissicool/zsh-256color"
zplug "stedolan/jq"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load

# env
eval "$(rbenv init -)"
eval "$(anyenv init -)"

# PATH
export PATH="$PATH:$HOME/fvm/default/bin"
export PATH="$PATH:$HOME/.pub-cache/bin"
export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools"
export GOPATH=$HOME
export PATH=$PATH:$GOPATH/bin

# default editor from vim to nvim
export EDITOR="/usr/local/bin/nvim"

# use vim mode
bindkey -v

# ghq & peco
# See https://zenn.dev/obregonia1/articles/e82868e8f66793#peco%E3%81%AE%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB%E3%81%A8ghq%E3%81%A8%E3%81%AE%E9%80%A3%E6%90%BA
function run-ghq() {
  local selected_dir=$(ghq list -p | peco --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N run-ghq
bindkey -r '^g'
bindkey '^g' run-ghq

# nvim
function run-nvim() {
  nvim .
}
zle -N run-nvim
bindkey -r '^n'
bindkey '^n' run-nvim

# lazygit
function run-lazygit() {
  lazygit
}
zle -N run-lazygit
bindkey -r '^l'
bindkey '^l' run-lazygit

# history
function run-history() {
  BUFFER=`history -n 1 | tac  | awk '!a[$0]++' | peco`
  CURSOR=$#BUFFER
  zle reset-prompt
}
zle -N run-history 
bindkey '^h' run-history 

# alias
alias ls="gls --color=auto"
alias la="ls -la"

# history settings
HISTFILE=${HOME}/.zsh_history
HISTSIZE=100000
SAVEHIST=1000000
setopt inc_append_history
setopt share_history

# AUTO etx
setopt AUTO_CD
setopt AUTO_PARAM_KEYS

export PATH="/usr/local/opt/libpq/bin:$PATH"

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
