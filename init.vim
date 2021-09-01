" this is a comment
inoremap jk <Esc>
set relativenumber
set nu
set tabstop=4 softtabstop=4
set shiftwidth=4
" change :FZF to CTRL P
nnoremap <silent> <C-P> :FZF<CR>

" set scrolloff=8 " so that when you scroll down the cursor stays 8 lines above the bottom of the window
set signcolumn=yes " apparently this col can show git info

syntax on " syntax highlighting
set hlsearch " highlight all search results
set ignorecase " do case insensitive searching
set noswapfile " disable swap file

" the following 5 lines allow for automatic vim-plug installation
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin()
Plug 'junegunn/fzf' , { 'do': { -> fzf#install() } }

call plug#end()
