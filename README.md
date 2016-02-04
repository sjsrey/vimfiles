#Customized installation of Vim and related plugins

This relies on [Vundle](https://github.com/VundleVim/Vundle.vim) for managing Plugins so that the same Vim setup can be maintained across different machines.

##Installation

	git clone https://github.com/sjsrey/vimfiles.git ~/.vim
	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
	ln -s ~/.vim/vimrc ~/.vimrc
	vim
	:PluginInstall
	:q

## Linux-specific Installation

Translating this lead to:

```
pip install --user git+git://github.com/Lokaltog/powerline
cd ~
wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf
mkdir .local/share/fonts
mv PowerlineSymbols.otf ~/.local/share/fonts/
sudo fc-cache -f -v
```
Restart a terminal, then

```
wget https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir -p ~/.config/fontconfig/fonts.conf
mv 10-powerline-symbols.conf ~/.config/fontconfig/fonts.conf/
cd ~; wget https://github.com/powerline/fonts/archive/master.zip
unzip master zip
unzip master.zip
mkdir ~/.fonts
cd fonts-master/
cp UbuntuMono/*.ttf ~/.fonts/.
fc-cache -vf ~/.fonts/
```

Adopted from :

http://www.linuxdeveloper.space/install-vim-powerline/

and

http://powerline.readthedocs.org/en/master/installation/linux.html#fonts-installation


