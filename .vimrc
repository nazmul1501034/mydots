"""""""""""""""""""
"  LABIB's vimrc  "
"""""""""""""""""""

let mapleader =" "
let maplocalleader =","

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'lervag/vimtex'
Plug 'klen/python-mode'
Plug 'SirVer/ultisnips'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'honza/vim-snippets'
Plug 'junegunn/goyo.vim'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'maralla/completor.vim'
Plug 'vimwiki/vimwiki'
Plug 'mhinz/vim-startify'
"Plug 'plasticboy/vim-markdown'
Plug 'ryanoasis/vim-devicons'
"Plug 'rust-lang/rust.vim'
Plug 'altercation/vim-colors-solarized'
"Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
"Plug 'davidhalter/jedi-vim' " for python completion
Plug 'vim-scripts/tex_alt' " for latex completion
call plug#end()

" Some basics:
set nocompatible
set mouse=a
filetype plugin on
set nosol
syntax on
set encoding=utf-8
set number relativenumber
set shiftwidth=4
set tabstop=4
set shell=/bin/bash
set list
set listchars=tab:▸\ ,
set cursorline
set clipboard=unnamed
set background=dark
set showcmd
colorscheme solarized
"colorscheme gruvbox

" Enable autocompletion:
set wildmode=longest,list,full

" Goyo plugin makes text more readable when writing prose:
map <leader>f :Goyo \| set linebreak<CR>

" Spell-check set to <leader>o, 'o' for 'orthography':
map <leader>o :setlocal spell! spelllang=en_gb<CR>
hi clear SpellBad
hi SpellBad cterm=underline
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
hi NonText guifg=bg
" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow splitright

" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Open a terminal
map <leader>t :terminal<CR>

" Readmes autowrap text:
autocmd BufRead,BufNewFile *.md set tw=79

" Automatically deletes all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

" Split characters
set fillchars=vert:\│

" Airline config
let g:airline_theme = 'solarized'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" autocompletion engine
let g:completor_clang_binary = '/usr/bin/clang'
let g:completor_python_binary = '/usr/bin/python3'
let g:deoplete#enable_at_startup = 1

" Filemanager , Tagbar, and other stuff
nmap <F8> :TagbarToggle<CR>
nmap <F9> :NERDTreeToggle<CR>
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetsDirectories=['/home/nazmul/.vim/plugged/vim-snippets/UltiSnips']

" tex configs
let g:pymode_python = 'python3'
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

" Fuzzy file search with ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

