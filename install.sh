#!/bin/bash

if [[ ! -e $HOME/.dotfiles ]]; then
  git clone https://github.com/hristotanev/.dotfiles.git $HOME/.dotfiles
fi

os=$(uname | awk '{ print tolower($0) }')
if [[ $os == "linux" || $os == "darwin" ]]; then
  cp rcm/rcrc.$os rcrc && cp rcrc ~/.rcrc
  cd && rcup
else
  echo "OS not supported."
  exit
fi
