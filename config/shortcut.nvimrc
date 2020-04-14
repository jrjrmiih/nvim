let mapleader=' '

" w:Window, resize window.
nnoremap <leader>wv- :vertical resize -10<CR>
nnoremap <leader>wv+ :vertical resize +10<CR>
nnoremap <leader>wh- :resize -10<CR>
nnoremap <leader>wh+ :resize +10<CR>

" check spell.
nnoremap <leader>ss :setlocal spell! spelllang=en_us<CR>

" plugin defx.
nnoremap <leader>f <Esc>:Defx -split=vertical -winwidth=35 -direction=topleft<CR>
autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
    nnoremap <silent><buffer><expr> <CR> defx#do_action('drop')
    nnoremap <silent><buffer><expr> l defx#do_action('drop')
    nnoremap <silent><buffer><expr> c defx#do_action('copy')
    nnoremap <silent><buffer><expr> x defx#do_action('move')
    nnoremap <silent><buffer><expr> p defx#do_action('paste')
    nnoremap <silent><buffer><expr> d defx#do_action('remove')
    nnoremap <silent><buffer><expr> . defx#do_action('toggle_ignored_files')
    nnoremap <silent><buffer><expr> r defx#do_action('rename')
    nnoremap <silent><buffer><expr> h defx#do_action('cd', ['..'])
    nnoremap <silent><buffer><expr> o defx#do_action('open_or_close_tree')
    nnoremap <silent><buffer><expr> N defx#do_action('new_file')
    nnoremap <silent><buffer><expr> K defx#do_action('new_directory')
    nnoremap <silent><buffer><expr> s defx#do_action('toggle_select') . 'j'
    nnoremap <silent><buffer><expr> * defx#do_action('toggle_select_all')
    nnoremap <silent><buffer><expr> <C-l> defx#do_action('redraw')
    nnoremap <silent><buffer><expr> q defx#do_action('quit')
endfunction
" plugin denite.
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction
nnoremap <leader>uf :Denite -no-empty file<CR>
nnoremap <leader>ur :Denite -no-empty file/rec<CR>
nnoremap <leader>um :Denite -no-empty file_mru<CR>
nnoremap <leader>ub :Denite -no-empty buffer<CR>
nnoremap <leader>ul :Denite -no-empty line<CR>
nnoremap <leader>ug :Denite grep<CR>
" plugin deoplete.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" plugin taglist
nnoremap <leader>t :TlistToggle<CR>
" plugin vim-easy-align
" usage: VISUAL MODE/vipga=/gaip=
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)
" plugin nerdcommenter
map <leader>/ <Plug>NERDCommenterToggle
" plugin CurtineIncSw
map <F3> :call CurtineIncSw()<CR>
" plugin neoformat
nnoremap <leader>l :Neoformat<CR>
vnoremap <leader>l :Neoformat<CR>
" plugin plantuml-syntax
nnoremap <leader>gp :w<CR> :make<CR>
" plugin vim-livedown
nnoremap <leader>gm :LivedownToggle<CR>
" plugin vim-easymotion
map <leader><leader>/ <Plug>(easymotion-sn)
