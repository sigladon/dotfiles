autoload -U promptinit
promptinit

autoload -U compinit
compinit

check_and_source () {
  if [[ -r "$1" ]]; then
    source "$1"
  fi
}

precmd() {
  check_and_source $ZDOTDIR/.aliasrc
}
check_and_source $ZDOTDIR/catppuccin_mocha
check_and_source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Use XDG dirs for completion and history files
[ -d "$XDG_STATE_HOME"/zsh ] || mkdir -p "$XDG_STATE_HOME"/zsh
[ -d "$XDG_CACHE_HOME"/zsh ] || mkdir -p "$XDG_CACHE_HOME"/zsh
# zstyle ':completion:*' cache-path "$XDG_CACHE_HOME"/zsh/zcompcache
# compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-$ZSH_VERSION

HISTSIZE=10000
SAVEHIST=10000
HISTFILE="$XDG_STATE_HOME"/zsh/history

eval "$(oh-my-posh init zsh --config .cache/oh-my-posh/themes/catppuccin_mocha.omp.json)"


setopt INC_APPEND_HISTORY
setopt PROMPT_SUBST
setopt autocd
setopt HIST_VERIFY
setopt HIST_IGNORE_DUPS
setopt EXTENDED_HISTORY

# NEWLINE=$'\n'
# PS1="${NEWLINE}%K{#313244}%F{#E5E9F0} %T %K{#45475a}%F{#ECEFF4} %n %K{#585b70} %~ %f%k ❯ "
# PROMPT="%F{yellow}%n%k@%m:%~/ ❯ "
