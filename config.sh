#! /bin/bash

DOTFILES=(.bash_profile .gitconfig .gitignore .zshrc)

for dotfile in $(echo ${DOTFILES[*]});
do
    cp ./$(echo $dotfile) ~/$(echo $dotfile)
done
