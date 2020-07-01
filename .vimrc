" Jersey Fonseca's vimrc
" Last updated: June 30, 2020


" =============== PLUGINS =============== "

" Make plugin directory if it's not there
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -flo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd vimenter * pluginstall --sync | source $myvimrc
endif


" Install plugins
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'               " Show file directory
Plug 'itchyny/lightline.vim'            " Light vim line
Plug 'vuciv/vim-bujo'                   " Task manager
call plug#end()


" =============== GENERAL =============== "

set number                 " see numberlines
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
set background=dark
colorscheme solarized 

" =============== MISCELLANEOUS =============== "

" auto-indent
nnoremap 1 gg=G

" go to end of line
nnoremap > <End>

" go to start of line
nnoremap < 0

command! Tags !ctags -R . " create tags
set path+=**              " search all subfolders

" highlight text over 80 characters as red
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" Automatically finish brackets and quotes
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O


" =============== WINDOW MAPPINGS =============== "

nnoremap <C-Right> <C-w>v<C-w><Right> " Open & go to vert window
nnoremap <C-Down> <C-w>S<C-w><Down>   " Open & go to horiz window
nnoremap <C-Up> <C-w>o                " Close all windows except current
nnoremap <Right> <C-w><Right>         " Go to right window
nnoremap <Left> <C-w><Left>           " Go to up window
nnoremap <Up> <C-w><Up>               " Go to left window
nnoremap <Down> <C-w><Down>           " Go to down window


" =============== BUJO COMMANDS =============== "

nmap <C-Enter> <Plug>BujoAddnormal
imap <C-Enter> <Plug>BujoAddinsert
nmap <C-BS> <Plug>BujoChecknormal
imap <C-BS> <Plug>BujoCheckinsert


" =============== SAVE/QUIT =============== "

nmap <C-S> :w<Enter>
imap <C-S> <esc>:w<Enter>a
nmap <C-Q> :q<Enter> 
imap <C-Q> <esc>:q<Enter> 


" =============== LIGHTLINE =============== "

set laststatus=2
set noshowmode
let g:lightline = {'colorscheme' : 'solarized'}
