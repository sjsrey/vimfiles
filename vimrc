"mac version
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'

" Additional plugins 

Plugin 'LaTeX-Suite-aka-Vim-LaTeX'
Plugin 'instant-markdown.vim'
Plugin 'MarkdownFootnotes'
Plugin 'Markdown'
Plugin 'Markdown-syntax'

"snipmate

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" Optional:
Plugin 'honza/vim-snippets'

" python
Plugin 'Python-mode-klen'

" Bundles
"

" Now we can turn our filetype functionality back on
filetype plugin indent on



"NonVundle Stuff

syntax on
set number
imap jj 

"powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

if has("gui_running")
	let s:uname = system("uname")
	if s:uname == "Darwin\n"
		set guifont=Inconsolata\ for\ Powerline:h15
	endif
endif
set laststatus=2
