#!/bin/bash

if [ $(uname) != Linux ]; then
  echo "Operating system is not Linux" > linuxsetup.log
  exit
fi

mkdir ~/.TRASH

if [ -f ~/.vimrc ]; then
	mv ~/.vimrc ~/.bup_vimrc
	echo "Renaming .vimrc to .bup_vimrc" >> linuxsetup.log
fi

# couldn't find /etc/vimrc 
cp ~/.dotfiles/etc/vimrc ~/.vimrc

echo "source ∼/.dotfiles/bashrc_custom" >> ~/.bashrc
