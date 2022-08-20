### plugin ###
##############
source /home/anno/.zsh/plugin/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/anno/.zsh/plugin/zsh-autosuggestions/zsh-autosuggestions.zsh


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
alias countdown='/home/anno/.dotconf/conky/countdown_conky/start_cown.sh'
alias https-server='sudo python /home/anno/coding/python/https_server/https.py'
alias autostart='vim /home/anno/coding/bash-script/start_setup.sh'

alias ..='cd ..'
alias ....='cd ../..'
alias ......='cd ../../..'
alias ........='cd ../../../..'
alias ..........='cd ../../../../..'

# project #
alias short-rofi='cd /home/anno/coding/bash-script/short_rofi'
alias web='cd /home/anno/coding/Web-site/git-andranux_de'
alias my='cd /home/anno/coding/git_my'
alias macli='cd /home/anno/coding/golang/matrix-bot/matcli'
alias dotconf='cd /home/anno/.dotconf'

alias git_manga='git add weeb/manga.html && git commit -m "add new mangas" && git push'

alias qd='cd /home/l-file/qemu'
alias down='cd /home/anno/Downloads'
alias l-file='cd /home/l-file'

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
