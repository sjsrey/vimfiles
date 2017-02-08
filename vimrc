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
"Plugin 'Buffergator'

" Additional plugins 
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'reedes/vim-pencil'
Plugin 'tpope/vim-fugitive'
"Plugin 'LaTeX-Suite-aka-Vim-LaTeX'
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
Plugin 'rakr/vim-two-firewatch'

" goyo
Plugin 'junegunn/goyo.vim'

" taskwarrior
"
"Plugin 'vim-airline/vim-airline'
"Plugin 'blindFS/vim-taskwarrior'
"Plugin 'Shougo/unite'

"
""vim-notes (Uncomment after setting up dropbox on a new machine)
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
let g:notes_directories = ['~/Dropbox/v/vim-notes']
let g:notes_suffix = '.md'
let g:notes_conceal_url = 0

" Now we can turn our filetype functionality back on
filetype plugin indent on


"NonVundle Stuff
"
" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Navigate properly when lines are wrapped
nnoremap j gj
nnoremap k gk

syntax on
set rnu
function! ToggleNumbersOn()
	set nu!
	set rnu
endfunction
function! ToggleRelativeOn()
	set rnu!
	set nu
endfunction
autocmd FocusLost * call ToggleRelativeOn()
autocmd FocusGained * call ToggleRelativeOn()
autocmd InsertEnter * call ToggleRelativeOn()
autocmd InsertLeave * call ToggleRelativeOn()
"Use enter to create new lines w/o entering insert mode
nnoremap <CR> o<Esc>
"Below is to fix issues with the ABOVE mappings in quickfix window
autocmd CmdwinEnter * nnoremap <CR> <CR>
autocmd BufReadPost quickfix nnoremap <CR> <CR>


imap jj 

"powerline

"source /home/serge/anaconda2/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim

"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 13
set laststatus=2
colorscheme default
set background=dark
if has('gui_running')
	colorscheme solarized
endif
"colorscheme solarized
set vb
set tw=78


"vim-pencil
let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd,tex,plaintex call pencil#init()
  autocmd FileType text         call pencil#init({'wrap': 'hard'})
augroup END
iab <expr> d3m system("date -d '+3 months' +'%Y-%m-%d'")
iab <expr> d4m system("date -d '+4 months' +'%Y-%m-%d'")
iab <expr> d5m system("date -d '+5 months' +'%Y-%m-%d'")
iab <expr> d6m system("date -d '+6 months' +'%Y-%m-%d'")
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"vim notes
imap ;nn :wviw\en
imap ;r :RecentNotes
nmap ;nn :wviw\en
nmap ;r :RecentNotes
imap <C-]> <C-o>:SearchNotes<CR>
nmap <C-]> :SearchNotes<CR>
imap <2-LeftMouse> <C-o>:SearchNotes<CR>
nmap <2-LeftMouse> :SearchNotes<CR>
imap ;c :close
nmap ;c :close
imap ;h :hide
nmap ;h :hide
imap ;l :ls
nmap ;l :ls
imap ;n :new
nmap ;n :new
imap ;N :vnew
nmap ;N :vnew
imap ;o :only
nmap ;o :only
nmap ;s :sp
imap ;s :sp
nmap ;t :NERDTreeToggle<CR>
imap ;t :NERDTreeToggle<CR>
imap ;v :vsp
nmap ;v :vsp


"vimscpt the hard way
map - dd

"NERDTree

nmap <silent> <F3> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
" softwrap lines
au BufRead,BufNewFile *.md,*.txt,*.tex set wrap linebreak nolist textwidth=0 wrapmargin=0

" syntax
map <F7> :if exists("g:syntax_on") <Bar>
    \   syntax off <Bar>
    \ else <Bar>
    \   syntax enable <Bar>
    \ endif <CR>

"source vimrc
source $HOME/.vim/gitit.vimrc
