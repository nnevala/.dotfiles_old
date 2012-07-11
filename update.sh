#!/bin/sh

git pull

# bash
grep ".dotfiles/src/bash" ../.bash_profile > /dev/null

if [ $? -gt 0 ]
then
	echo "Linking bash..."
	echo "\nsource .dotfiles/src/bash" >> ../.bash_profile
fi

# git
grep ".dotfiles/src/git" ../.gitconfig > /dev/null

if [ $? -gt 0 ]
then
	echo "Linking git..."
	echo "\n[include]\n\tpath = .dotfiles/src/git" >> ../.gitconfig
fi

echo "All done"

