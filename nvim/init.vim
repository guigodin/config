" Plugins {{:
" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
 call plug#begin('~/.local/share/nvim/plugged')
 Plug 'gmarik/Vundle.vim'
 Plug 'jreybert/vimagit'
 Plug 'tmhedberg/SimpylFold'
 Plug 'vim-scripts/indentpython.vim'
 Plug 'andy-lang/tmux-omnivim'
 Plug 'Valloric/YouCompleteMe'
 Plug 'scrooloose/syntastic'
 Plug 'scrooloose/snipmate-snippets'
 Plug 'nvie/vim-flake8'
 Plug 'scrooloose/nerdtree'
 Plug 'jnurmine/Zenburn'
 Plug 'altercation/vim-colors-solarized'
 Plug 'jistr/vim-nerdtree-tabs'
 Plug 'kien/ctrlp.vim'
 Plug 'tpope/vim-fugitive'
 Plug 'vim-scripts/AnsiEsc.vim'
 Plug 'msanders/snipmate.vim'
 Plug 'robbles/logstash.vim'
 Plug 'docker/docker'
 Plug 'chase/vim-ansible-yaml'
 Plug 'elzr/vim-json'
 Plug 'metakirby5/codi.vim'
 Plug 'mklabs/split-term.vim'
 Plug 'edkolev/promptline.vim'
 Plug 'edkolev/tmuxline.vim' 
 " Plug 'itchyny/lightline.vim'
 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
 " Plug 'powerline/powerline'
 Plug 'tpope/vim-surround'
 Plug 'tamelion/neovim-molokai'
 Plug 'derekwyatt/vim-scala'
 Plug 'jreybert/vimagit'
 Plug 'ryanoasis/vim-devicons'
 " Initialize plugin system
call plug#end()
filetype plugin indent on    " required
let python_highlight_all=1


"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-Down> <C-W><C-J>
nnoremap <C-Up> <C-W><C-K>
nnoremap <C-Left> <C-W><C-H>
nnoremap <C-Right> <C-W><C-L>
" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za
au BufNewFile,BufRead *.py set tabstop=2
au BufNewFile,BufRead *.py set softtabstop=2
au BufNewFile,BufRead *.py set shiftwidth=2
au BufNewFile,BufRead *.py set textwidth=79
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.py set autoindent
au BufNewFile,BufRead *.py set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/


" python with virtualenv support
" py << EOF
" import os
" import sys
"  if 'VIRTUAL_ENV' in os.environ:
"   project_base_dir = os.environ['VIRTUAL_ENV']
"   activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"   execfile(activate_this, dict(__file__=activate_this))
" EOF

let python_highlight_all=1
syntax on


" call togglebg#map("<F5>")

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

set nu
set rnu
highlight LineNr ctermfg=yellow ctermbg=black
set nuw=1
set clipboard+=unnamedplus
set mouse=a
set modeline

let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 0
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 2
" let g:airline#extensions#tabline#fnamemod = ':t'
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#right_sep = ' '
" let g:airline#extensions#tabline#right_alt_sep = '|'

" Open file menu
nnoremap <Leader>o :CtrlP<CR>
" Open buffer menu
nnoremap <Leader>b :CtrlPBuffer<CR>
" Open most recently used files
nnoremap <Leader>f :CtrlPMRUFiles<CR>

nnoremap <Leader>z :NERDTreeToggle<CR>

" set background=dark
colorscheme zenburn
" colorscheme molokai
" colorscheme solarized

au VimLeave mksession ~/.local/share/nvim/session
" py <<EOF
" from powerline.vim import setup as powerline_setup
" powerline_setup()
" del powerline_setup
" EOF

