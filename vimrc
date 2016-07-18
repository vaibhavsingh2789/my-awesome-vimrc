set t_Co=256
set encoding=utf-8
set nocompatible
set number
set list
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
Plugin 'tpope/vim-surround'
Plugin 'Valloric/YouCompleteMe'
Plugin 'pearofducks/ansible-vim'
Plugin 'vimwiki/vimwiki'
Plugin 'throughnothing/vimchat'
Plugin 'itchyny/calendar.vim'
Plugin 'Shougo/vimproc.git'
Plugin 'Shougo/vimshell.vim'
Plugin 'yuratomo/gmail.vim'
Plugin 'jiangmiao/auto-pairs'

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
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_by_filename = 1
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
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
let g:gmail_imap = 'imap.gmail.com:993'
let g:gmail_smtp = 'smtp.gmail.com:465'
let g:gmail_user_name = 'nabarun.chatterjee@olacabs.com'
let g:gmail_signature = 'Thanks,\nNabarun Chatterjee'
let g:gmail_mailbox_trash = "[Gmail]/Trash"

"Disable arrow keys in vim
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>
