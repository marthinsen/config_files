" Eiriks vimrc file

set nocompatible
filetype off

" Setting up Vundle - the vim plugin bundler
    let iCanHazVundle=1
    let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
    if !filereadable(vundle_readme)
        echo "Installing Vundle.."
        echo ""
        silent !mkdir -p ~/.vim/bundle
        silent !git clone https://github.com/VundleVim/Vundle.vim ~/.vim/bundle/vundle
        let iCanHazVundle=0
    endif
    set rtp+=~/.vim/bundle/vundle/
    call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'

    " Awesome syntax checker. See :h syntastic for help
    Plugin 'scrooloose/syntastic'
    
    " File tree
    Plugin 'scrooloose/nerdtree'

    " Code commenter
    Plugin 'scrooloose/nerdcommenter'

    " Autoclose brackets
    Plugin 'Townk/vim-autoclose'

    " New colorsheme
    Plugin 'sainnhe/sonokai'

    " Git wrapper inside vim
    Plugin 'tpope/vim-fugitive'

    " Powerline
    Plugin 'bling/vim-airline'

    if iCanHazVundle == 0
        echo "Installing Plugins, please ignore key map error messages"
        echo ""
        :PluginInstall
    endif
    call vundle#end()
" Setting up Vundle - the vim plugin bundler end

filetype on

syntax enable

" Important!!
if has('termguicolors')
  set termguicolors
endif

" The configuration options should be placed before `colorscheme sonokai`.
let g:sonokai_style = 'maia'
let g:sonokai_better_performance = 1

colorscheme sonokai

map <silent> <C-n> :NERDTreeToggle<CR>

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif


set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
set diffexpr=MyDiff()

"my settings
set showcmd " Show (partial) command in status line.
set showmatch " Show matching brackets.
set ignorecase " Do case insensitive matching"
set incsearch " Incremental search"
set autowrite " Automatically save before commands like :next and :makeset cindent
set autoindent
set shiftwidth=2
set tabstop=2
set softtabstop=2
set laststatus=2
set expandtab
set ignorecase
set ruler
set nohlsearch
set smarttab
set vb
syntax on
set fdm=marker
set nofen
set number relativenumber

map <silent> <F2> :if &background == "light"<CR>set background=dark<CR>else<CR>set background=light<CR>endif<CR>
noremap <F3> :res<CR>
noremap <F4> <C-W>=
map <F5> :set invhlsearch<CR>
 
map <F7> g<C-]>
map <F8> <C-T>
map <F10> :set invnu<CR>
map <C-J> <C-W>j
map <C-K> <C-W>k

augroup brl
au BufNewFile,BufRead *.brl, set filetype=brl 
augroup end


" File ~/.vimrc
" Global settings for all files (but may be overridden in ftplugin).
set tabstop=2
set expandtab
set shiftwidth=2

" Text wrapping according to 
" http://vim.wikia.com/wiki/Word_wrap_without_line_breaks
:set wrap
:set linebreak
:set nolist  " list disables linebreak
:set textwidth=0
:set wrapmargin=0
:set formatoptions+=l

" And then remapping of move-keys to move up/down as the lines is seen and not
" as they are for rel without the wrapping
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" Making search case insensitive as long as just lower case letters is used
:set smartcase

" Turn on spell checking for git commit
autocmd FileType gitcommit setlocal spell

set undodir=~/.vim/undodir

" Close NERDTree when opening file
let NERDTreeQuitOnOpen = 1

" Line numbers for code files
autocmd FileType c,cpp set nowrap ts=2 sw=2 expandtab smarttab
autocmd FileType python set nowrap ts=4 sw=4 expandtab smarttab
autocmd FileType php set nowrap ts=4 sw=4 smarttab

let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"
