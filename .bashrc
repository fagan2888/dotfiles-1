#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source virtualenvwrapper.sh

[[ -e ~/.bash/colors ]] && . ~/.bash/colors
[[ -e ~/.bash/env ]] && . ~/.bash/env
[[ -e ~/.bash/aliases ]] && . ~/.bash/aliases
[[ -e ~/.bash/functions ]] && . ~/.bash/functions
