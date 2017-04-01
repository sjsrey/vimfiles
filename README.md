# Customized installation of Vim and related plugins

This relies on [Vundle](https://github.com/VundleVim/Vundle.vim) for managing Plugins so that the same Vim setup can be maintained across different machines.

## Installation

	sudo apt-get install powerline
	git clone https://github.com/powerline/fonts.git
	cd fonts/
	sudo ./install.sh
	git clone https://github.com/sjsrey/vimfiles.git ~/.vim
	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
	ln -s ~/.vim/vimrc ~/.vimrc
	vim
	:PluginInstall
	:q
