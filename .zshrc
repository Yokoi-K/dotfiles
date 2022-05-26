# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/zshrc.pre.zsh"

# powerlevel9k
POWERLEVEL9K_MODE=nerdfont-complete
[ -f "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"  ] && source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX=" \U25B8 "
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k" 

# plugin setting
plugins=(git zsh-syntax-highlighting zsh-autosuggestions zsh-completions)

# zsh-syntax-highlightng setting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# env etc
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


# ghq & peco
# See https://zenn.dev/obregonia1/articles/e82868e8f66793#peco%E3%81%AE%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB%E3%81%A8ghq%E3%81%A8%E3%81%AE%E9%80%A3%E6%90%BA
function peco-src () {
  local selected_dir=$(ghq list -p | peco --query "$LBUFFER")
  if [ -n "$selected_dir" ]; then
    BUFFER="cd ${selected_dir}"
    zle accept-line
  fi
  zle clear-screen
}
zle -N peco-src
bindkey '^g' peco-src

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/zshrc.post.zsh"

