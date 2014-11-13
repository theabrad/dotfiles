#!/bin/bash
###############################
# This script creates symlinks from home directory to any desired dotfiles
###############################

### Variables ###
dir=~/dotfiles                  # dotfiles directory
olddir=~/dotfiles_old           # dotfiles backup directory
files="bashrc vimrc vim xinitrc Xresources"        # List of files/folders to symlink

###############################

# Create dotfiles_old in homedir #
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "... done"

# Change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "... done"

# move any existing dotfiles in homedir to dotfiles_old directory
# then create symlinks

for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to file in home directory." 
    ln -s $dir/$file ~/.$file
done
