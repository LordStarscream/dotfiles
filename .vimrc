set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Nerdtree
Plugin 'scrooloose/nerdtree'
" git Plugin for Nerdtree
Plugin 'Xuyuanp/nerdtree-git-plugin'

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

"Set the linenumbers on
set number
"switch number and relativenumber by pressing Ctrl-n
function! NumberToggle()
        if(&number == 1)
                set nonumber
                set relativenumber
        else
                set norelativenumber
                set number
        endif
endfunc
nnoremap <C-x> :call NumberToggle()<cr>
"Set line number relative and switch to absolute if focus is lost
autocmd InsertEnter * :set norelativenumber number
autocmd InsertLeave * :set nonumber relativenumber
"Use spaces instead of tabs when doing tab
set expandtab
"Set the tab space to 4
"set ts=4 sw=4
"Highlight Search results
set hlsearch
"switch syntax on if not already
if !exists("syntax_on")
	syntax on
endif
set history=1000
set ruler
set showcmd
set numberwidth=5

"When editing a file, always jump to the last known cursor position.
"Don't do it for commit messages, when the position is inalid, or when
"inside an event handler (happens when dropping a file on gvim.
autocmd BufReadPost *
  \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") | 
  \  exe "normal g`\"" |
  \ endif
