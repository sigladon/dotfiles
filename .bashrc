#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
alias GO='Hyprland'
alias pn='pnpm'

# GIT ALIASES

alias g.st="git status"
alias g.ad="git add"
alias g.aa="git add --all"
alias g.br="git branch "
alias g.sw="git switch"
alias g.sW="git switch -c"
alias g.cm="git commit -m"
alias g.cM="git commit --amend -m"
alias g.sl="git log --pretty=format:'%h %ad | %s%d [%an]' --graph"
alias g.co="git checkout"

export PATH="$PATH:$HOME/flutter/bin"
export PATH="$PATH:$HOME/Android/Sdk/emulator"
export PATH="$PATH:$HOME/Android/Sdk/tools"
export PATH="$PATH:$HOME/Android/Sdk/tools/bin"
export PATH="$PATH:$HOME/Android/Sdk/platform-tools"


# pnpm
export PNPM_HOME="/home/sigladon/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
