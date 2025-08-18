# Created by newuser for 5.9
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

typeset -U path
path=($HOME/flutter/bin $path)
path=($HOME/Android/Sdk/emulator $path)
path=($HOME/Android/Sdk/tools $path)
path=($HOME/Android/Sdk/tools/bin $path)
path=($HOME/Android/Sdk/platform-tools $path)
path=($HOME/.local/bin $path)
export PATH

export ZDOTDIR=$HOME/.config/zsh
export EDITOR=nvim

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

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:/home/sigladon/.juliaup/bin:*)
        ;;

    *)
        export PATH=/home/sigladon/.juliaup/bin${PATH:+:${PATH}}
        ;;
esac
