" Automatically installs vim-plug if it's not present
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'preservim/nerdtree'
Plug 'nathanaelkane/vim-indent-guides'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

syntax on
colorscheme onehalfdark
:set bg=dark
set termguicolors

set tabstop=4
set softtabstop=4   " spaces when editing
set shiftwidth=4
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

" Search all sub-folders in :find command
set path+=**

" TAGS"
" Automatically go to definitions
command! Tags !ctags -R .

filetype plugin indent on
