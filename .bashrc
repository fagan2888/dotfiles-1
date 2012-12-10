#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -n "$(type -P virtualenvwrapper_lazy.sh)" ]] && source virtualenvwrapper_lazy.sh

[[ -e ~/.bash/colors ]] && . ~/.bash/colors
[[ -e ~/.bash/env ]] && . ~/.bash/env
[[ -e ~/.bash/aliases ]] && . ~/.bash/aliases
[[ -e ~/.bash/functions ]] && . ~/.bash/functions
