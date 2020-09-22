augroup MyAutoCmd
autocmd!
augroup END

let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.vim') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif

execute 'set runtimepath^=' . s:dein_repo_dir
if dein#load_state('~/.vim/dein')
  call dein#begin('~/.vim/dein')
  call dein#load_toml('~/dotfiles/vim/rc/dein.toml', {'lazy': 0})
  call dein#load_toml('~/dotfiles/vim/rc/dein_lazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif
filetype plugin indent on
syntax enable
if dein#check_install()
  call dein#install()
endif

set cursorline
set number
set ruler
set expandtab
set smarttab
set autoindent
set smartindent
set shiftwidth=4
set shiftround
set backupdir-=.
set noswapfile
set hidden
set nowritebackup
set nobackup
set ignorecase
set smartcase
set incsearch
set wrapscan
set splitbelow
set splitright
set noshowmode
inoremap <silent> jj <ESC>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <S-Left>  <C-w><<CR>
nnoremap <S-Right> <C-w>><CR>
nnoremap <S-Up>    <C-w>-<CR>
nnoremap <S-Down>  <C-w>+<CR>
