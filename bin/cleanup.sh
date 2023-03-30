#!/bin/bash

rm ~/.vimrc

sed 's/source ∼\/.dotfiles\/etc\/bashrc_custom//g' ~/.bashrc

rm -r ~/.TRASH
