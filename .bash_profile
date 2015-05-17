#
# ~/.bash_profile
#

[[ -f ~/.config/bash/bashrc ]] && . ~/.config/bash/bashrc

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx ~/.config/xorg/xinitrc
