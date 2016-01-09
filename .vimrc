"Set not compatible with vi
set nocompatible
filetype off

"For Powerline to show up

let $PYTHONPATH='/usr/lib/python3.4/site-packages'
set laststatus=2

" Vundle settings
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
" Plugins go here
 
Plugin 'VundleVim/Vundle.vim'
 
Plugin 'altercation/vim-colors-solarized.git'

" Plugin 'tomasr/molokai'

"Plugin for completeing brackets automatically
Plugin 'Townk/vim-autoclose' 

Plugin 'scrooloose/nerdtree'

Plugin 'bling/vim-airline'

let g:airline_powerline_fonts = 1

Plugin 'Valloric/YouCompleteMe'

Plugin 'SirVer/ultisnips'

Plugin 'honza/vim-snippets'

Plugin 'ervandew/supertab'

" Buffer Explorer
Plugin 'fholgado/minibufexpl.vim'

"  Make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSjipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>" 
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>" 

" End plugin List

call vundle#end()
filetype plugin indent on
 
syntax enable
set background=light
colorscheme solarized
"colorscheme molokai
"colorscheme Peacock

set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set number
set cindent
 
au FocusLost * :wa
 
if has("gui_running")
    set guioptions-=T
    set guioptions-=r
    set guioptions-=L
    set guioptions+=a
 
    set lines=40 columns=150
endif
 
" Key mappings etc
let mapleader=","

" Copy and paste to system clipboard
vnoremap <leader>y "+y
vnoremap <leader>p "+p

" Open Nerdtreee
noremap <leader>n :NERDTree
