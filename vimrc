syntax on
au BufRead,BufNewFile *.a set filetype=perl
au BufRead,BufNewFile *.t set filetype=perl
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4

" strip whitespace
"autocmd BufWritePre * :%s/\s\+$//e

" set my style
set backspace=2
set modeline
set modelines=5
set et
set ts=2
set sw=2
set number

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
Plug 'scrooloose/syntastic'
Plug 'jelera/vim-javascript-syntax'
Plug 'groenewege/vim-less'
Plug 'othree/yajs.vim'
Plug 'mustache/vim-mustache-handlebars'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" use <tab> to confirm completion
inoremap <expr> <tab> coc#pum#visible() ? coc#pum#confirm() : "\<Tab>"

" coc extensions to auto install
let g:coc_global_extensions = [
  \ 'coc-tsserver',
  \ 'coc-go',
  \ 'coc-css',
  \ 'coc-json',
  \ 'coc-html',
  \ 'coc-yaml',
  \ 'coc-pairs',
  \ 'coc-spell-checker',
\ ]

" Run FZF based on the cwd & git detection
" 1. Runs :Files, If cwd is not a git repository
" 2. Runs :GitFiles <cwd> If root is a git repository
fun! FzfOmniFiles()
  " Throws v:shell_error if is not a git directory
  let git_status = system('git status')
  if v:shell_error != 0
    :Files
  else
    " Reference examples which made this happen:
    " https://github.com/junegunn/fzf.vim/blob/master/doc/fzf-vim.txt#L209
    " https://github.com/junegunn/fzf.vim/blob/master/doc/fzf-vim.txt#L290
    " --exclude-standard - Respect gitignore
    " --others - Show untracked git files
    " dir: getcwd() - Shows file names relative to cwd
    let git_files_cmd = ":GitFiles --exclude-standard --cached --others"
    call fzf#vim#gitfiles('--exclude-standard --cached --others', {'dir': getcwd()})
  endif
endfun
nnoremap <silent> <C-g> :call FzfOmniFiles()<CR>
" ctrl+p searches all files in git repo
nnoremap <C-p> :GFiles<CR>
" ctrl+i searches all files from cwd down
nnoremap <C-i> :Files<CR>
" ctrl+o searches files with silversearcher
nnoremap <C-o> :Ag<CR>
" Enable ctrl+c, ctrl+x, ctrl+x
" to copy, cut, paste whilst in Visual Mode
vmap <C-c> "+yi<ESC>
vmap <C-x> "+c<ESC>
vmap <C-v> c<ESC>"+p<ESC>
imap <C-v> <C-r><C-o>+
" Configure the fuzzy search window
let g:fzf_layout = { 'window': { 'width': 1, 'height': 0.5, 'yoffset': 1, 'border': 'top' } }
let g:fzf_preview_window = []
" Map \+a to load spell checker suggestions
vmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

