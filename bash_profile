#! /bin/bash
[[ -e ~/.profile ]] && . ~/.profile
[[ -e $XDG_CONFIG_HOME/xdgvars/xdgvars.sh ]] && . $XDG_CONFIG_HOME/xdgvars/xdgvars.sh 
[[ $- = *i* ]] && [[ -e ~/.bashrc ]] && . ~/.bashrc
