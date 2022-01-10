if [ "$(tty)" = /dev/tty1 ]; then
	exec startx
fi

export TERM="xterm-256color"
export ZSH=~/.oh-my-zsh
export FZF_BASE=/usr/bin/fzf

ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'

plugins=(
	git 
	fzf 
	zsh-syntax-highlighting 
	zsh-autosuggestions 
)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
pfetch

source $ZSH/oh-my-zsh.sh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
