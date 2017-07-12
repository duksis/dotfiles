#!/usr/bin/bash!

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash
