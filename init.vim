call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'hashivim/vim-terraform'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ryanoasis/vim-devicons'
Plug 'rhysd/git-messenger.vim'
Plug 'rbong/vim-crystalline'
Plug 'preservim/nerdtree'
Plug 'andrewstuart/vim-kubernetes'
Plug 'ekalinin/Dockerfile.vim'
Plug 'preservim/tagbar'
call plug#end()

filetype plugin on
syntax on

set omnifunc=syntaxcomplete#Complete

"let g:lightline={'colorscheme': 'jellybeans',}

function! StatusLine(current, width)
  return (a:width > 40 ? crystalline#mode() . '%{&paste ?"PASTE ":""}' . crystalline#right_mode_sep('') . ' ' . WebDevIconsGetFileTypeSymbol() . ' %F %{FugitiveHead()}' : '') . '%=%h%w%m%r'
endfunction
let g:crystalline_enable_sep = 1
let g:crystalline_statusline_fn = 'StatusLine'
let g:crystalline_theme = 'jellybeans'
set laststatus=2

let g:tagbar_type_go = {
    \ 'ctagstype': 'go',
    \ 'kinds' : [
        \'p:package',
        \'f:function',
        \'v:variables',
        \'t:type',
        \'c:const'
    \]
\}

let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['gosec', 'nakedret', 'stylecheck', 'goconst', 'gocyclo', 'vet']
let g:go_metalinter_enabled = ['gosec', 'nakedret', 'stylecheck', 'goconst', 'gocyclo', 'vet']
let g:go_metalinter_command = 'golangci-lint'

set number
set cursorline
set guifont=SpaceMono\ Nerd\ Font:h11 

set encoding=UTF-8

let mapleader = ","
let g:mapleader = ","

set showmatch
set noshowmode
set ruler
set number
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent

set noerrorbells

set splitbelow
set splitright

set ignorecase
set smartcase
set gdefault
set magic

noremap <leader>w :w<cr>
noremap <leader>r :w<cr>:source ~/.config/nvim/init.vim<cr>
inoremap kj <esc>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

nmap <silent> <c-t> :TagbarToggle<CR>

""" Training
"noremap <Up> <nop>
"noremap <Down> <nop>
"noremap <Left> <nop>
"noremap <Right> <nop>

"inoremap <Up> <nop>
"inoremap <Down> <nop>
"inoremap <Left> <nop>
"inoremap <Right> <nop>

