#
# ~/.bashrc
#

set -o vi
shopt -s cdspell
shopt -s histappend

PS1='$ '

[[ "$TERM" = "xterm" ]] && export TERM=xterm-256color

[[ -e ~/.bash/aliases ]] && . ~/.bash/aliases
[[ -e ~/.bash/functions ]] && . ~/.bash/functions
[[ -e ~/.bash/local ]] && . ~/.bash/local
