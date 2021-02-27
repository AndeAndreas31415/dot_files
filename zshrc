### varialbes ###
#################
export ZSH="/home/anno/.zsh/plugin/oh-my-zsh"


### plugin ###
##############
source /home/anno/.zsh/plugin/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/anno/.zsh/plugin/zsh-autosuggestions/zsh-autosuggestions.zsh
plugins=(
	git
	git-prompt
 	)
source $ZSH/oh-my-zsh.sh


### alias ###
#############
alias pacman='sudo pacman'
alias journalctl='sudo journalctl'
alias pacu='sudo pacman -Syu --noconfirm'
alias flatup='flatpak update -yy'
alias systemctl='sudo systemctl'
alias chown='sudo chown'
alias grep='grep --color=auto'
alias ls='ls -hl --color=auto'
alias rm='rm -v'
alias cp='cp -v'
alias mv='mv -v'
alias mkdir="mkdir -pv"
alias dfh='df -h | grep -E "(File|mapper|boot)" | head'
alias :q='exit'
alias mde='/home/anno/Programm/Typora-linux-x64/Typora '

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

alias short-rofi='cd /home/anno/coding/bash-script/short_rofi'
alias web='cd /home/anno/coding/Web-site/git-andranux_de'
alias my='cd /home/anno/coding/git_my'
alias qd='cd /home/l-file/qemu'
alias down='cd /home/anno/Downloads'

### Fuction ###
###############

# make a tar
function mt() {
	tar cvzf "${1%%/}.tar.gz" "${1%%/}/";
}

# make a zip
function mz() {
	zip -r "${1%%/}.zip" "$1";
}



### themes ###
##############
autoload -Uz colors && colors

# I have a ghost in a shell
PROMPT="%F{238}[%f%{$terminfo[bold]%}%F{226}%n@%m%f%{$reset_color%}%F{238}]%f%F{243}ϾϿ%f%F{250} [%f%F{33}%~%f%F{250}] 👻 %{$terminfo[bold]%}%F{2}➜%f%{$reset_color%} "

### History ###
###############
autoload -U history-search-end
setopt INC_APPEND_HISTORY SHARE_HISTORY
setopt APPEND_HISTORY

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

HISTFILE=$HOME/.zhistory
HISTSIZE=1000000000
SAVEHIST=1000000000


### auto completion ###
#######################
autoload -U compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'
zstyle ':completion:*' menu select=1 _complete _ignored _approximate
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*' group-name ''


### wrong commands ###
######################
setopt correct

SPROMPT="Correct $fg[red]%R$reset_color to $fg[green]%r?$reset_color (Yes, No, Abort, Edit) "
