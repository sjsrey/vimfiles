#Customized installation of Vim and related plugins

This relies on [Vundle](https://github.com/VundleVim/Vundle.vim) for managing Plugins so that the same Vim setup can be maintained across different machines.

##Installation

	git clone https://github.com/sjsrey/vimfiles.git ~/.vim
	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
	ln -s ~/.vim/vimrc ~/.vimrc
	vim
	:PluginInstall
	:q

## Mac-specific Installation

To setup the proper fonts see [these instructions](https://coderwall.com/p/yiot4q/setup-vim-powerline-and-iterm2-on-mac-os-x)
