" Jersey Fonseca's vimrc
" Last updated: August 10th, 2020

" Install plugins
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'            " light vim line
Plug 'vuciv/vim-bujo'                   " task manager
Plug 'morhetz/gruvbox'                  " color scheme
Plug 'vimwiki/vimwiki'                  " personal wiki
Plug 'ianding1/leetcode.vim'            " leetcode in vim
call plug#end()


" =============== GENERAL =============== "

set number relativenumber  " see numbers, relative
set showcmd                " see last command
filetype plugin indent on  " spec indent files, filetype tracking
set showmatch              " set parens to match each other
set incsearch              " search as characters are entered

" tab config
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
retab


" =============== COLORSCHEME =============== "

syntax enable
colorscheme cyberpunkneon 
hi Normal guibg=NONE ctermbg=NONE


" =============== MISCELLANEOUS =============== "

command! Tags !ctags -R . " create tags
set path+=**              " search all subfolders

" =============== WINDOW MAPPINGS =============== "

nnoremap <C-Right> <C-w>v<C-w><Right> " Open & go to vert window
nnoremap <C-Down> <C-w>S<C-w><Down>   " Open & go to horiz window
nnoremap <C-Up> <C-w>o                " Close all windows except current
nnoremap <Right> <C-w><Right>         " Go to right window
nnoremap <Left> <C-w><Left>           " Go to up window
nnoremap <Up> <C-w><Up>               " Go to left window
nnoremap <Down> <C-w><Down>           " Go to down window


" =============== BUJO COMMANDS =============== "

nmap <F1> <Plug>BujoAddnormal
imap <F1> <Plug>BujoAddinsert
nmap <F2> <Plug>BujoChecknormal
imap <F2> <Plug>BujoCheckinsert


" =============== SAVE/QUIT =============== "

nmap <C-S> :w<Enter>
imap <C-S> <esc>:w<Enter>
nmap <C-Q> :q<Enter>
imap <C-Q> <esc>:q<Enter>


" =============== LIGHTLINE =============== "

set laststatus=2
set noshowmode
let g:lightline = {'colorscheme' : 'solarized'}


" =============== VIMWIKI =============== "

let g:vimwiki_list = [{
  \ 'auto_export': 1,
  \ 'automatic_nested_syntaxes':1,
  \ 'path_html': '$HOME/vimwiki/site',
  \ 'path': '$HOME/vimwiki/content',
  \}]


" =============== LEETCODE =============== "

let g:leetcode_solution_filetype='python3'
let g:leetcode_browser='firefox'
let g:leetcode_problemset='top-interview-questions'

nnoremap <leader>ll :LeetCodeList<cr>
nnoremap <leader>lt :LeetCodeTest<cr>
nnoremap <leader>ls :LeetCodeSubmit<cr>
nnoremap <leader>li :LeetCodeSignIn<cr>
