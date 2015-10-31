#Customized installation of Vim and related plugins

This relies on [Vundle](https://github.com/VundleVim/Vundle.vim) for managing Plugins so that the same Vim setup can be maintained across different machines.

##Installation

	git clone https://github.com/sjsjrey/vimfiles.git ~/.vim
	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
	ln -s ~/.vim/vimrc ~/.vimrc
	vim
	:PluginInstall

## Powerline on Linux

1. Follow these [directions](http://www.linuxdeveloper.space/install-vim-powerline/)
2. Restart a terminal

At this point terminal vim should have the nice powerline status bar, but gvim isn't there yet. To fix this we need to go the patched font route.

See http://powerline.readthedocs.org/en/master/installation/linux.html#fonts-installation

Translating this lead to:

1. `cd ~; wget https://github.com/powerline/fonts/archive/master.zip`	
2. `unzip master.zip`
3. `mkdir ~/.fonts`
4. `cd fonts-master`
5. `cp UbuntuMono/*.ttf ~/.fonts/.`
6. `fc-cache -vf ~/.fonts/ `
