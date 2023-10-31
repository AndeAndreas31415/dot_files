### plugin ###
##############
source $HOME/.zsh/plugin/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.zsh/plugin/zsh-autosuggestions/zsh-autosuggestions.zsh


### mod vari ###
################
if [ -d "$HOME/coding/bash-script" ] ; then
	PATH="$PATH:$HOME/coding/bash-script"
fi


### alias ###
#############
alias pacman='sudo pacman'
alias pacu='sudo pacman -Syu --noconfirm'
alias yayup='yay -Syu --noconfirm'
alias flatup='flatpak update -yy'
alias systemctl='sudo systemctl'
alias chown='sudo chown'
alias grep='grep --color=auto'
alias ls='lsd -hl'
alias lsa='lsd -hla'
alias rm='rm -v'
alias cp='cp -v'
alias mv='mv -v'
alias mkdir='mkdir -pv'
alias dfh='df -h | grep -E "(File|mapper|boot)" | head'
alias :q='exit'
alias countdown='$HOME/.dotconf/conky/countdown_conky/start_cown.sh'
alias https-server='sudo python $HOME/coding/python/https_server/https.py'

alias down='cd $HOME/Downloads'

alias ..='cd ..'
alias ....='cd ../..'
alias ......='cd ../../..'
alias ........='cd ../../../..'
alias ..........='cd ../../../../..'

# project #
alias web='cd $HOME/coding/Web-site/Andra_Web'
alias dotconf='cd $HOME/.dotconf'

alias git_manga='git add weeb/manga.html && git commit -m "add new mangas" && git push'


### History ###
###############
autoload -U history-search-end
setopt INC_APPEND_HISTORY SHARE_HISTORY
setopt APPEND_HISTORY

bindkey "^[[5~" history-incremental-search-backward
bindkey "^[[6~" history-incremental-search-forward

HISTFILE=$HOME/.zhistory
HISTSIZE=1000000000 
SAVEHIST=1000000000


### auto completion ###
#######################
autoload -U compinit && compinit
zstyle ':completion:*' menu select=1 _complete _ignored _approximate
zstyle ':completion:*' verbose yes
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:descriptions' format "$fg[green]%B-%d-%b"

### wrong commands ###
######################
setopt correct
SPROMPT="Correct $fg[red]%R$reset_color to $fg[green]%r?$reset_color (Yes, No, Abort, Edit) "

### themes ###
##############
autoload -Uz colors && colors
eval "$(starship init zsh)"
