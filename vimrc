" Explicitly informing that we're using 256-color terminals.
let &t_Co=256
set nocompatible                " choose no compatibility with legacy vi

" Include plugins via Vundle. For details see vundle.vim .
source ~/.vim/vundle.vim

set encoding=utf-8

colorscheme zenburn

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
match ErrorMsg '\t'             " highlight tabs
"match ErrorMsg '\s\+$'          " highlight trailing whitespaces

"" Removes trailing spaces
function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction
autocmd FileWritePre    * :call TrimWhiteSpace()
autocmd FileAppendPre   * :call TrimWhiteSpace()
autocmd FilterWritePre  * :call TrimWhiteSpace()
autocmd BufWritePre     * :call TrimWhiteSpace()

"" Searching
set hlsearch                    " highlight matches
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" We don't want to use the arrow keys for now. Let's think about a better
""  usage later
nnoremap  <Up> <NOP>
nnoremap  <Down> <NOP>
nnoremap  <Left> <NOP>
nnoremap  <Right> <NOP>

" The Silver Searcher
" http://robots.thoughtbot.com/faster-grepping-in-vim
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

endif

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" the . command for visual mode
xnoremap :normal .<CR>
