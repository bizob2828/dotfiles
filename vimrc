syntax on
au BufRead,BufNewFile *.a set filetype=perl
au BufRead,BufNewFile *.t set filetype=perl

" strip whitespace
autocmd BufWritePre * :%s/\s\+$//e

" set my style
set backspace=2
set modeline
set modelines=5
set et
set ts=2
set sw=2

set nocompatible              " be iMproved, required
filetype off                  " required

" install vim-plug if it does not exist
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'gmarik/Vundle.vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'jelera/vim-javascript-syntax'
Plug 'groenewege/vim-less'
Plug 'othree/yajs.vim'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-commentary'
Plug 'mustache/vim-mustache-handlebars'
Plug 'ajh17/vimcompletesme'
Plug 'neoclide/coc.nvim'
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'editorconfig/editorconfig-vim'
call plug#end()

" coc extensions to auto install
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-css',
  \ 'coc-json',
  \ 'coc-html',
  \ 'coc-yaml',
  \ 'coc-pairs',
\ ]

" Put your non-Plug stuff after this line
map <C-l> :NERDTreeToggle<CR>
set completeopt-=preview

let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_custom_ignore = {
      \ 'dir': '\v[\/]\.(git|hg)|test\-results|app\/vendor|node_modules|code-coverage-report|app\/fonts|app\/img|262|experiments$'
      \}

