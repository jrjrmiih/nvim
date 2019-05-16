let mapleader=' '
"o:Open, open commonly used file.
"nnoremap <leader>ov :tabnew ~/.vim/vimrc<CR>
"nnoremap <leader>os :tabnew ~/.vim/config/shortcut.vimrc<CR>
"nnoremap <leader>oc :tabnew ~/.vim/config/
"nnoremap <leader>oz :tabnew ~/.zshrc<CR>
"nnoremap <leader>oo :source $MYVIMRC<CR>
" q:Quit, quit & close things.
"nnoremap <leader>qo :only<CR>
"nnoremap <leader>qq :qa<CR>
"nnoremap <leader>qw :wqa<CR>
"nnoremap <leader>q! :qa!<CR>
" s:Set, set vim config.
nnoremap <leader>ss :setlocal spell! spelllang=en_us<CR>
" w:Window, resize window.
"nnoremap <leader>wv- :vertical resize -10<CR>
"nnoremap <leader>wv+ :vertical resize +10<CR>
"nnoremap <leader>wh- :resize -10<CR>
"nnoremap <leader>wh+ :resize +10<CR>

autocmd FileType python nnoremap <buffer> <leader>r :w<CR>:!python3 % <CR>

" Plugin denite.
nnoremap <leader>uf :Denite -no-empty -mode=normal file<CR>
nnoremap <leader>ur :Denite -no-empty file/rec<CR>
nnoremap <leader>um :Denite -no-empty file_mru<CR>
nnoremap <leader>ub :Denite -no-empty -mode=normal buffer<CR>
nnoremap <leader>ul :Denite -no-empty -mode=normal line<CR>
nnoremap <leader>ug :Denite -mode=normal grep<CR>
" Plugin youcompleteme
nnoremap <leader>d :YcmCompleter GoToDefinitionElseDeclaration<CR>
" Plugin auto-format
nnoremap <leader>l :Autoformat<CR>
" Plugin taglist
nnoremap <leader>t :TlistToggle<CR>
" Plugin ultisnips
let g:UltiSnipsExpandTrigger="<c-h>"
" Plugin vim-livedown
nnoremap <leader>gm :LivedownToggle<CR>
" Plugin quick-run
"nnoremap <leader>r :QuickRun<CR>                                " By default

" Plugin vim-easy-align
" usage: VISUAL MODE/vipga=/gaip=
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)
" plugin nerdcommenter
map <leader>/ <Plug>NERDCommenterToggle
" plugin CurtineIncSw
map <F3> :call CurtineIncSw()<CR>
" plugin plantuml-syntax
map <F5> <ESC>:w<CR> :make<CR>
" plugin nerdtree
map <F2> :NERDTreeToggle<CR>
