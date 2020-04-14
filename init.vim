" plugin manager: junegunn/vim-plug
call plug#begin()
Plug 'drewtempelmeyer/palenight.vim'                " vim color theme.
Plug 'https://github.com/vim-scripts/fcitx.vim.git' " Keep fcitx status.
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/neomru.vim'                            " cache most recently used files.
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/deoplete-clangx'                       " auto complete for clang family, used by deoplete.
Plug 'vim-scripts/taglist.vim'                      " Taglist.
Plug 'jiangmiao/auto-pairs'                         " highlight paired brackets.
Plug 'junegunn/vim-easy-align'                      " alignment for single character.
Plug 'vim-airline/vim-airline'                      " status bar.
Plug 'vim-airline/vim-airline-themes'               " status bar themes.
Plug 'scrooloose/nerdcommenter'                     " code comment.
Plug 'ericcurtin/CurtineIncSw.vim'                  " switch between header and source.
Plug 'sbdchd/neoformat'                             " auto format.
Plug 'octol/vim-cpp-enhanced-highlight'             " cpp syntax highlighting.
Plug 'aklt/plantuml-syntax'                         " PlantUml.
Plug 'shime/vim-livedown'                           " markdown local server.
Plug 'easymotion/vim-easymotion'
Plug 'beeender/Comrade'
Plug 'luochen1990/rainbow'
call plug#end()

" use <C-A><C-C><C-V> as default function keys.
"source ~/.config/nvim/config/mswin.vim
" config settings for plugins.
source ~/.config/nvim/config/palenight.nvimrc
source ~/.config/nvim/config/denite.nvimrc
source ~/.config/nvim/config/deoplete.nvimrc
source ~/.config/nvim/config/deoplete-clangx.nvimrc
source ~/.config/nvim/config/taglist.nvimrc
source ~/.config/nvim/config/auto-pairs.nvimrc
source ~/.config/nvim/config/neoformat.nvimrc
source ~/.config/nvim/config/plantuml-syntax.nvimrc
source ~/.config/nvim/config/rainbow.nvimrc
source ~/.config/nvim/config/shortcut.nvimrc

autocmd FileType help setlocal number " let the help doc shown with line number.

" ui settings.
syntax on
set background=dark
colorschem palenight
set number
set relativenumber
set cursorline
set hlsearch
set list listchars=extends:❯,precedes:❮,tab:▸\ ,trail:~
" control settings.
set clipboard+=unnamedplus
set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
set scrolloff=3
" file settings.
set nowrap
set noswapfile
set ignorecase smartcase
set smartindent

highlight CursorLine guibg=#303000 ctermbg=234
