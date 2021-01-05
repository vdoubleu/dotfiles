set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'flazz/vim-colorschemes'
Plugin 'preservim/nerdtree'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'Yggdroot/indentLine'
Plugin 'junegunn/goyo.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ap/vim-css-color'

call vundle#end()            " required
filetype plugin indent on    " required

:set expandtab
:set shiftwidth=2
:set tabstop=2
:set number relativenumber

:colorscheme gruvbox
:set bg=dark
:syntax enable

set mouse=a
set clipboard=unnamedplus

hi Normal guibg=NONE ctermbg=NONE

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

imap <C-h> <C-o>b
imap <C-j> <C-o>j
imap <C-k> <C-o>k
imap <C-l> <C-o>e

nmap <C-h> <C-o>b
nmap <C-j> <C-o>j
nmap <C-k> <C-o>k
nmap <C-l> <C-o>e

nmap <C-h> b
nmap <C-l> e

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:UltiSnipsExpandTrigger="<C-E>"
let g:UltiSnipsListSnippets="<C-F>"

let g:pear_tree_smart_openers = 1
let g:pear_tree_smart_closers = 1
let g:pear_tree_smart_backspace = 1
let g:pear_tree_timeout = 60
let g:pear_tree_map_special_keys = 1

set laststatus=2

" ctrl b: bracket rest of line
execute "set <M-B>=\eb"
nnoremap <M-B> <esc>i<space><left>(<del><esc>A)
inoremap <M-B> <space><left>(<del><esc>A)

" ctrl u: undo
inoremap <C-U> <esc>ui

" ctrl w: save
inoremap <C-W> <esc>:w<CR>i

" ctrl a: esc
inoremap <C-A> <esc>

:packadd termdebug
