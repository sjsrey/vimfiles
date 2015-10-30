#Customized installation of Vim and related plugins

This relies on [Vundle](https://github.com/VundleVim/Vundle.vim) for managing Plugins so that the same Vim setup can be maintained across different machines.

##Installation

	git clone git://github.com/sjsjrey/vimfiles.git ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc


Note that there are a view Plugins that might require additional feeding and care. In particular, the `snipmate` related Plugins had to be installed by hand:
	
	cd ~/.vim/bundle
	git clone https://github.com/tomtom/tlib_vim.git
	git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
	git clone https://github.com/garbas/vim-snipmate.git
	git clone https://github.com/honza/vim-snippets.git 

