#
# ~/.bashrc
#

[[ -n "$(type -P virtualenvwrapper_lazy.sh)" ]] && source virtualenvwrapper_lazy.sh
[[ -e ~/.bash/env ]] && . ~/.bash/env

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -e ~/.bash/colors ]] && . ~/.bash/colors
[[ -e ~/.bash/aliases ]] && . ~/.bash/aliases
[[ -e ~/.bash/functions ]] && . ~/.bash/functions
[[ -e ~/.bash/local ]] && . ~/.bash/local
