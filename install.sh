#!/bin/sh bash

sudo apt-get install build-essential cmake python-dev python3-dev

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

git submodule update --init --recursive

cd src/vim/bundle/YouCompleteMe

./install.py --clang-completer

cd ../../../..

cp ./src/vimrc ~/.vimrc
cp -R ./src/vim ./src/.vim
cp -R ./src/vim ~/.vim
rm -rf ./src/.vim

cp ~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py ~

