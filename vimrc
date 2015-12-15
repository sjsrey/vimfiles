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

" Solarized
Plugin 'altercation/vim-colors-solarized'


<<<<<<< HEAD
=======
"vim-notes
Plugin 'vim-misc'
"Plugin 'file:///home/serge/.vim/bundle/vim-notes'
Plugin 'xolox/vim-notes'
"Plugin 'vim-shell'

>>>>>>> 588ec52009dd6a2af116cec2d7455ca4cb4081c6

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
set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 13
set laststatus=2
set background=dark
"colorscheme solarized
set vb

<<<<<<< HEAD
"vim-notes
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
let g:notes_directories = ['~/Dropbox/v/vim-notes']
let g:notes_suffix = '.md'
=======

"vim-notes
let g:notes_directories = ['~/Dropbox/v/vim-notes']
let g:notes_suffix = ".md"
>>>>>>> 588ec52009dd6a2af116cec2d7455ca4cb4081c6
