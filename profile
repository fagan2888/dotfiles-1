#! /bin/sh
[ -f /etc/profile ] && . /etc/profile

export BROWSER=chromium
export EDITOR=vim
export QT_STYLE_OVERRIDE=gtk

export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share

[ "$(type -P ruby)" ] && export GEM_HOME=$(ruby -e 'print Gem.user_dir')

# Path
export PATH=$PATH:$HOME/.local/bin:$HOME/.cabal/bin
# Android Development
[ $ANDROID_HOME ] && export PATH=$PATH:$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin

# App files
export LESSHISTFILE=$XDG_DATA_HOME/less_history
export HISTFILE=$XDG_DATA_HOME/bash_history
