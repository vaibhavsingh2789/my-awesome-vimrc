set t_Co=256
set encoding=utf-8
set nocompatible
set number
set list
set hidden
let python_highlight_all = 1 " enable all Python syntax highlighting features
set colorcolumn=80 "color column 80
set cursorline " show a visual line under the cursor's current line
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'klen/python-mode'
Plugin 'kien/ctrlp.vim'
Plugin 'powerline/fonts'
" Plugin 'jmcantrell/vim-virtualenv'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'pearofducks/ansible-vim'
Plugin 'vimwiki/vimwiki'
" Plugin 'throughnothing/vimchat'
Plugin 'itchyny/calendar.vim'
Plugin 'Shougo/vimproc.git'
Plugin 'Shougo/vimshell.vim'
Plugin 'yuratomo/gmail.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'fatih/vim-go'
Plugin 'rking/ag.vim'

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
let g:ctrlp_map = ',/'
let g:ctrlp_switch_buffer = 'Et'
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_use_caching = 1
set modifiable
set noshowmode
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'solarized'
map <C-n> :bnext<CR>
map <C-p> :bprevious<CR>
nnoremap H gT
nnoremap L gt
map ,t <Esc>:tabnew<CR>
map ,/ <Esc>:CtrlPMixed<CR>
nnoremap <C-W>M <C-W>\| <C-W>_
nnoremap <C-W>m <C-W>=
source ~/.vim/snippets
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
let g:gmail_imap = 'imap.gmail.com:993'
let g:gmail_smtp = 'smtp.gmail.com:465'
let g:gmail_user_name = 'vaibhavsingh@helpshift.com'
let g:gmail_signature = 'Thanks,\nVaibhav Singh Gour'
let g:gmail_mailbox_trash = "[Gmail]/Trash"

"Disable arrow keys in vim
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
set autoindent          " autoindent on
" set smartindent       " smart auto indenting - this messes up with python comments losing indentation
set smarttab            " smart tab handling for indenting
set magic               " change the way backslashes are used in search patterns
set bs=indent,eol,start " Allow backspacing over everything in insert mode

set tabstop=2           " number of spaces a tab counts for
set shiftwidth=2        " spaces for autoindents
set shiftround          " use multiple of shiftwidth when indenting with '<' and '>'
set softtabstop=2       " number of spaces in tab when editing
set expandtab           " turn a tabs into spaces
set hlsearch
set incsearch
set clipboard=unnamed
