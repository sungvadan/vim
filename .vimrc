"---------------Plugins---------------"
set nocompatible              
filetype off                  

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'mg979/vim-visual-multi'

call vundle#end()
filetype plugin indent on

"---------------General setting---------------"
syntax on
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set number
set ignorecase
set smartcase
let mapleader=","

            "keep visual mode after indent
vnoremap > >gv
vnoremap < <gv



"---------------Searching---------------"
set hlsearch  "high light search"
set incsearch





"----------------Visuals--------------"
colorscheme atom-dark-256
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R





"----------------Mappings--------------"
"Make it easy to edit the vimrc file"
nmap <Leader>ev :tabedit ~/.vimrc<cr>
nmap <Leader><space> :nohlsearch<cr>

"Add simple highlight removal"
nmap <Leader><space> :nohlsearch<cr>

"Nerdtree shortcut"
nnoremap <Leader>& :NERDTreeToggle<CR>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|idea|DS_Store)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|idea|DS_Store)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }





"---------------Split management---------------"
set splitbelow
set splitright



"----------------Auto-Commands--------------"
"Automatically source the vimrc on save."
augroup autosourcing
	autocmd!
	autocmd BufWritePost ~/.vimrc source %
augroup END
