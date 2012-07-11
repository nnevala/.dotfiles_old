#!/bin/sh

git pull

# bash
grep ".dotfiles/src/.bash_profile" ../.bash_profile > /dev/null

if [ $? -gt 0 ]
then
	echo "Linking bash..."
	echo "\n# The following line(s) were added by .dotfiles/update.sh\nsource .dotfiles/src/.bash_profile" >> ../.bash_profile
fi

# git
grep ".dotfiles/src/.gitconfig" ../.gitconfig > /dev/null

if [ $? -gt 0 ]
then
	echo "Linking git..."
	echo "\n# The following line(s) were added by .dotfiles/update.sh\n[include]\n\tpath = .dotfiles/src/.gitconfig" >> ../.gitconfig
fi

echo "All done"

