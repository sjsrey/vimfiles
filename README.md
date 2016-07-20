# Customized installation of Vim and related plugins

## Set up z-shell

The dotfiles for vim assume that powerline has been setup.
The powerline setup used in this setup follows these [instructions](https://www.chenhuijing.com/blog/bash-to-zsh/#<%C0). This will also convert the shell to zsh from bash.

The one item not explictly covered in the previous instructions is the installation of the fonts. To do this simply do the following:

1. `git clone https://github.com/powerline/fonts.git ~/fonts`
2. Open fontbook and add all the fonts using the `+` and navigating to `~/fonts`

## Installation

This relies on [Vundle](https://github.com/VundleVim/Vundle.vim) for managing Plugins so that the same Vim setup can be maintained across different machines.

	git clone https://github.com/sjsrey/vimfiles.git ~/.vim
	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
	ln -s ~/.vim/vimrc ~/.vimrc
	vim
	:PluginInstall
	:q
