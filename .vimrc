" Automatically installs vim-plug if it's not present
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugs will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'preservim/nerdtree'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/lightline.vim'

" Snippets"
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'

Plug 'honza/vim-snippets'
" List ends here. Plugs become visible to Vim after this call.
call plug#end()

syntax on
colorscheme onehalfdark
:set bg=dark
set termguicolors

set tabstop=2
set softtabstop=2   " spaces when editing
set shiftwidth=2
set expandtab
retab

set number          " see numberlines

set showcmd         " see last command

set cursorline      " see cursorline

filetype indent on  " spec indent files, filetype tracking

set showmatch       " set parens to match each other

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" Automatically finish brackets and quotes
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" snippetAutomatically complete for loops in different languages

" Search all sub-folders in :find command
set path+=**

" TAGS"
" Automatically go to definitions
command! Tags !ctags -R .

" Control+i auto indents everything
nnoremap <C-i> gg=G

" map to vertical split
nnoremap <C-Right> <C-w>v
nnoremap <C-Down> <C-w>S
nnoremap <C-Up> <C-w>o
nnoremap <Right> <C-w><Right>
nnoremap <Left> <C-w><Left>
nnoremap <Up> <C-w><Up>
nnoremap <Down> <C-w><Down>

" Lightline
set laststatus=2
set noshowmode

filetype plugin indent on
