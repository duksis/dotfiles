" Vundle config.
filetype off
set rtp+=~/.vim/bundle/vundle/
let s:bootstrap = 0
try
  call vundle#rc()
catch /E117/
  let s:bootstrap = 1
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
  redraw!
  call vundle#rc()
endtry

" Let Vundle manage Vundle (required).
Bundle 'gmarik/vundle'

" Vundler Bundles:

" Defaults everyone can agree on
Bundle 'tpope/vim-sensible'

" Zenburn is a low-contrast color scheme for Vim
Bundle 'jnurmine/Zenburn'

" Fuzzy file search
Bundle 'kien/ctrlp.vim'

" Additional language higlighting
Bundle 'vim-coffee-script'
Bundle 'elixir-lang/vim-elixir'
Bundle 'oscarh/vimerl'
Bundle 'wting/rust.vim'
Bundle 'mustache/vim-mustache-handlebars'

if s:bootstrap
  silent BundleInstall
  quit
end
