syntax on
au BufRead,BufNewFile *.a set filetype=perl
au BufRead,BufNewFile *.t set filetype=perl
autocmd BufWritePre * :%s/\s\+$//e
set backspace=2
set modeline
set modelines=5
set et
set ts=2
set sw=2

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
 Plugin 'gmarik/Vundle.vim'
 Plugin 'scrooloose/nerdtree'
 Plugin 'scrooloose/syntastic'
 Plugin 'tpope/vim-surround'
 Plugin 'Valloric/YouCompleteMe'
 Plugin 'jelera/vim-javascript-syntax'
 Plugin 'marijnh/tern_for_vim'
 Plugin 'groenewege/vim-less'
 Plugin 'othree/yajs.vim'
 Plugin 'ctrlpvim/ctrlp.vim'

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
map <C-l> :NERDTreeToggle<CR>
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_custom_ignore = {
      \ 'dir': '\v[\/]\.(git|hg)|test\-results|app\/vendor|node_modules|coverage|app\/fonts|app\/img$'
      \}
