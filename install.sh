#!/bin/sh

BASH_PATH=".dotfiles/src/bash"


grep $BASH_PATH ../.bash_profile > /dev/null

if [ $? -gt 0 ]
then
	echo "Linking bash..."
	echo "\nsource $BASH_PATH" >> ../.bash_profile
fi



echo "All done"