set encoding=utf-8
set nocompatible
set number
let python_highlight_all = 1 " enable all Python syntax highlighting features
set colorcolumn=80 "color column 80
set cursorline " show a visual line under the cursor's current line
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'klen/python-mode'
Plugin 'kien/ctrlp.vim'
Plugin 'powerline/fonts'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'
call vundle#end()            " required
filetype plugin indent on
set background=dark
colorscheme solarized
map <esc>t :NERDTreeToggle<CR>
set laststatus=2
set showtabline=2
let g:syntastic_check_on_open = 1
let g:syntastic_python_checkers=['pylint']
set tags=~/src/mytags
set nofoldenable    " disable folding
au CompleteDone * pclose "close python help after selection
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
set modifiable
set noshowmode
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1
let g:airline_theme = 'bubblegum'
map ,t <Esc>:tabnew<CR>
map ,n <Esc>:tabnext<CR>
map ,p <Esc>:tabprevious<CR>
map ,/ <Esc>:CtrlPMixed<CR>
nnoremap <C-W>M <C-W>\| <C-W>_
nnoremap <C-W>m <C-W>=
