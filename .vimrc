" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc
set nocompatible

"vsplit
set splitright

"keymap

"tab, indent settings
set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set textwidth   =79
set expandtab
set autoindent
set cindent

"show the mathcing part of pairs [] {} and ()
set showmatch

"スワップファイルを作成しない
set noswapfile

"UI関連
set title
set number
set cursorline
syntax enable
set background=dark
set termguicolors

"検索機能
set hlsearch
set ignorecase
set smartcase
set incsearch
set mouse=a
set ttymouse=xterm2
nnoremap <silent> <C-s> :w<CR>
inoremap <silent> <C-s> <ESC>:w<CR>

"コマンドライン補完
set wildmenu

"enable syntax
syntax on

" Set Dein base path (required)
let s:dein_base = '/home/nkei/.local/share/dein'

" Set Dein source path (required)
let s:dein_src = '/home/nkei/.local/share/dein/repos/github.com/Shougo/dein.vim'

" Set Dein runtime path (required)
execute 'set runtimepath+=' . s:dein_src

" Call Dein initialization (required)
call dein#begin(s:dein_base)

call dein#add(s:dein_src)

" Your plugins go here:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')
call dein#add('preservim/nerdtree')
call dein#add('vim-airline/vim-airline')
call dein#add('jdkanani/vim-material-theme')
"call dein#add('jacoborus/tender.vim')
call dein#add('rafi/awesome-vim-colorschemes')
call dein#add('christoomey/vim-tmux-navigator')
call dein#add('altercation/vim-colors-solarized')
"call dein#add('vim-window-move')

"use deoplete or language server.
"deoplete
call dein#add('Shougo/deoplete.nvim')
if !has('nvim')
call dein#add('roxma/nvim-yarp')
call dein#add('roxma/vim-hug-neovim-rpc')
endif
let g:deoplete#enable_at_startup = 1

"lsp server
call dein#add('prabirshrestha/vim-lsp.git')
call dein#add('lighttiger2505/deoplete-vim-lsp.git')
call dein#add('mattn/vim-lsp-settings.git')
let g:deoplete#sources#clang#clang_header = '/usr/include/clang'

" Finish Dein initialization (required)
call dein#end()

"背景色を置き換え
autocmd ColorScheme * highlight Normal ctermbg=234 guibg=#1c1c1c
autocmd ColorScheme * highlight NonText ctermbg=234 guibg=#1c1c1c
autocmd ColorScheme * highlight LineNr ctermbg=234 guibg=#1c1c1c
autocmd ColorScheme * highlight VertSplit ctermbg=234 guibg=#1c1c1c

"カラースキームを設定
colorscheme tender
set background=dark

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

" Enable syntax highlighting
syntax enable

"ターミナルの移動
tmap <C-h> <C-w>h
tmap <C-j> <C-w>j
tmap <C-k> <C-w>k
tmap <C-l> <C-w>l

"コメント補完をoff
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Uncomment if you want to install not-installed plugins on startup.
if dein#check_install()
 call dein#install()
endif


