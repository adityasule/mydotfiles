"Set not compatible with vi
set nocompatible
filetype off

" If I want to set pythong path
" let $PYTHONPATH='/usr/lib/python3.4/site-packages'

" Make airline show up
set laststatus=2

" Vundle settings
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
" Plugins go here
 
Plugin 'VundleVim/Vundle.vim'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'Townk/vim-autoclose' 
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'kokakolako/vim-hemisu-airline'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'SirVer/ultisnips'
"Plugin 'honza/vim-snippets'
"Plugin 'ervandew/supertab'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-fugitive'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-sensible'

" End plugin List

call vundle#end()
filetype plugin indent on

" Color Scheme settings
set t_Co=256
syntax enable
set background=light
colorscheme PaperColor

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number
set cindent

set backspace=indent,eol,start

" Tell airline powerline fonts are available
" let g:airline_powerline_fonts = 1

" Don't show the default mode
set noshowmode
set ttimeoutlen=40

"set lazyredraw
 
"  Make YCM compatible with UltiSnips (using supertab)
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSjipsExpandTrigger
"let g:UltiSnipsExpandTrigger = "<tab>"
"let g:UltiSnipsJumpForwardTrigger = "<tab>" 
"let g:UltiSnipsJumpBackwardTrigger = "<s-tab>" 
 
"au FocusLost * :wa
 
"set guioptions-=T
"set guioptions-=r
"set guioptions-=L
" Disabled so people other than me can edit stuff
" set guioptions-=m

" Set spelling for text files
autocmd BufNewFile,BufRead *.txt set spell
autocmd BufNewFile,BufRead *.md set spell

let mapleader=","

noremap <leader>v :vs<CR>
noremap <leader>c :sp<CR>
noremap <leader>t :tabnew<CR>

" Copy and paste to system clipboard
vnoremap <leader>y "+y
nnoremap <leader>p "+p

noremap <leader>n :NERDTree<CR>
noremap <leader>w <C-w>w
noremap <leader>q :qa<CR>
noremap <leader>h <C-w>h
noremap <leader>j <C-w>j
noremap <leader>l <C-w>l
noremap <leader>k <C-w>k
