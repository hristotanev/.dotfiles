os=$(uname | awk '{ print tolower($0) }')
if [[ $os == 'linux' ]]; then
  if [ "$(tty)" = /dev/tty1 ]; then
    exec startx
  fi
fi

export EDITOR="nvim"
export TERM="xterm-256color"
export ZSH=~/.oh-my-zsh
export FZF_BASE=/usr/bin/fzf
export PATH=$PATH:/usr/local/bin/:/snap/bin/

ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'

plugins=(
	git 
	fzf 
	zsh-syntax-highlighting 
	zsh-autosuggestions 
  magic-enter
  tmux
)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[[ $(printenv | grep -o -w "TERMINAL_EMULATOR") == '' ]] && pfetch

source $ZSH/oh-my-zsh.sh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

alias pd='~/.config/scripts/dmenu_pass.sh'

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# pnpm
export PNPM_HOME="/home/hristo/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export PATH="$PATH:$HOME/.sdkman/candidates/gradle/current/bin/gradle"

[ -f "/home/hristo/.ghcup/env" ] && source "/home/hristo/.ghcup/env" # ghcup-env