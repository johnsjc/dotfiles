#!/bin/bash
echo "Creating symlinks.."

create_symlink() {
    ln -s -f $PWD/$1 $HOME/$1 
    echo "[+] Created symlink for $1"
}

for dotfile in .[^.]*
do
    if [[ $dotfile = '.git' ]]; then continue; fi
    create_symlink $dotfile
done
