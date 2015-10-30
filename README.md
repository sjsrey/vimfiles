#Customized installation of Vim and related plugins

This relies on [Vundle](https://github.com/VundleVim/Vundle.vim) for managing Plugins so that the same Vim setup can be maintained across different machines.

##Installation

	git clone https://github.com/sjsrey/vimfiles.git ~/.vim
	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
	ln -s ~/.vim/vimrc ~/.vimrc
	vim
	:PluginInstall


Note that there are a view Plugins that might require additional feeding and care. In particular, the `snipmate` related Plugins had to be installed by hand:
	
	cd ~/.vim/bundle
	git clone https://github.com/tomtom/tlib_vim.git
	git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
	git clone https://github.com/garbas/vim-snipmate.git
	git clone https://github.com/honza/vim-snippets.git 



## Powerline

To get powerline working on OS X (El Capitan) I first switched to zshell using [these directions](http://www.chenhuijing.com/blog/bash-to-zsh/).
Then built a new macvim using homebrew:

    brew install macvim --with-override-system-vim
    brew linkapps macvim
    mvim
    /usr/local/bin/mvim
    export PATH
    export $PATH
    brew doctor
    macvim
    brew unlink vim
    brew link macvim
