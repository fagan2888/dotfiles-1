#! /bin/bash
# Defaults
export BROWSER=qutebrowser
export EDITOR=vim
export QT_STYLE_OVERRIDE=gtk
export DATABASE_URL=postgres:///$(whoami)

# Path
export PATH=$PATH:$HOME/.local/bin:$HOME/.cabal/bin
if [[ -n "$(type -P ruby)" ]]; then
    version="$(ruby --version | sed 's/ruby \([0-9\.]\{3\}\).*/\1.0/')"
    export PATH=$PATH:$HOME/.gem/ruby/$version/bin
fi

# Configuration
CONFIG=$HOME/.config 
export PYTHONSTARTUP=$CONFIG/ipython
export NETHACKDIR=$CONFIG/nethack
export ELINKS_CONFDIR=$CONFIG/elinks
export JUPYTER_CONFIG_DIR=$CONFIG/jupyter
export NETHACKOPTIONS=$HOME/config/nethackrc

# Data

DATA=$HOME/.local/share


# Cache
CACHE=$HOME/.cache
export LESSHISTFILE=$CACHE/lesshist

[[ -f ~/.bashrc ]] && . ~/.bashrc
