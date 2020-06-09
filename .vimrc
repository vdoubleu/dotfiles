set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)

"Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'flazz/vim-colorschemes'
Plugin 'preservim/nerdtree'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'Yggdroot/indentLine'
Plugin 'junegunn/goyo.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ap/vim-css-color'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

:set expandtab
:set shiftwidth=3
:set tabstop=3
:set number relativenumber

colorscheme gruvbox
:set bg=dark

hi Normal guibg=NONE ctermbg=NONE

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


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
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }

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

