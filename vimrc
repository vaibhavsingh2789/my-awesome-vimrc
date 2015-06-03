se nu ai sm ruler
set textwidth=79  " lines longer than 79 columns will be broken
set shiftwidth=4  " operation >> indents 4 columns; << unindents 4 columns
set tabstop=4     " a hard TAB displays as 4 columns
set expandtab     " insert spaces when hitting TABs
set softtabstop=4 " insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftround    " round indent to multiple of 'shiftwidth'
set cursorline " show a visual line under the cursor's current line 

set showmatch " show the matching part of the pair for [] {} and ()

let python_highlight_all = 1 " enable all Python syntax highlighting features

highlight ColorColumn ctermbg=darkgrey
set colorcolumn=80 "color column 80

"Open NerdTree by default
"autocmd VimEnter * NERDTree
map <esc>t :NERDTreeToggle<CR>


set runtimepath^=~/.vim/bundle/ctrlp.vim
set modifiable


"toggles whether or not the current window is automatically zoomed
function! ToggleMaxWins()
  if exists('g:windowMax')
    au! maxCurrWin
    wincmd =
    unlet g:windowMax
  else
    augroup maxCurrWin
        au BufEnter * wincmd _ | wincmd |
        "
        " only max it vertically
        au! WinEnter * wincmd _
    augroup END
    do maxCurrWin WinEnter
    let g:windowMax=1
  endif
endfunction

nnoremap <Leader>z :call ToggleMaxWins()<CR>
