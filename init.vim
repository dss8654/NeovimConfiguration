"  this is a comment
" PLUG INS
call plug#begin()

" fuzzy finder
Plug 'junegunn/fzf' , { 'do': { -> fzf#install() } }

" intellisense, auto complete, linting, code fixing
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" gruvbox color scheme
Plug 'morhetz/gruvbox'

" END PLUG INS
call plug#end()

" essential nvim settings
inoremap jk <Esc>
set relativenumber
set nu
set tabstop=4 softtabstop=4
set shiftwidth=4

" set colorscheme to gruvbox
colorscheme gruvbox

" change :FZF to CTRL P
" nnoremap <silent> <C-P> :FZF<CR>

" change :FZF to spacebar in normal mode
nnoremap <silent> <space> :FZF<CR>
"normal mode, no recursive execution, map

" set scrolloff=8 " so that when you scroll down the cursor stays 8 lines above the bottom of the window
set signcolumn=yes " apparently this col can show git info

syntax on " syntax highlighting
set hlsearch " highlight all search results
set ignorecase " do case insensitive searching
set noswapfile " disable swap file

" coc extensions
let g:coc_global_extensions = [
	\ 'coc-css',
	\ 'coc-cssmodules',
	\ 'coc-emmet',
	\ 'coc-git',
	\ 'coc-html',
	\ 'coc-htmlhint',
	\ 'coc-json',
	\ 'coc-prettier',
	\ 'coc-vimlsp',
	\ ]
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
