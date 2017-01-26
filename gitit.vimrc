" Commands for editing wiki pages in Gitit

command! -nargs=1 Wiki execute ":split $HOME/Documents/wiki/library/" . fnameescape("<args>.page") | execute ":Gwrite"

nnoremap <leader>{ :vimgrep /TODO:/ /home/serge/Documents/wiki/library/*.page<CR>:copen<CR>

command! -nargs=1 Wgrep vimgrep "<args>" /home/serge/Documents/wiki/library/*.page
nnoremap <leader>[ :Wgrep
