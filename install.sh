#!/bin/sh bash

if [ -d "./src" ];
then
	if [ -f ~/.vimrc ];
	then
		echo -e "This will delete your .vimrc file\n"
		echo -e "Is this ok? (y/n)\n"

		read resp

		if [ resp = "n" ];
		then
			echo "Exiting now...."
			exit 99
		fi
		rm ~/.vimrc
	fi
	if [ -d ~/.vim ];
	then
		echo -e "This will delete your .vim directory\n"
		echo -e "Is this ok? (y/n)\n"

		read resp

		if [ resp = "n" ];
		then
			echo "Exiting now...."
			exit 99
		fi
		rm -rf ~/.vim/
	fi
fi

cp ./src/vimrc ~/.vimrc
cp -R ./src/vim ./src/.vim
cp -R ./src/vim ~/.vim
rm -rf ./src/.vim
