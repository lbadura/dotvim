" mój .vimrc - lukasz@niebo.net

" pathogen
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set shortmess+=I " disable the welcome screen
set complete+=k " enable dictionary completion
set completeopt+=longest
set clipboard+=unnamed " yank and copy to X clipboard
set backspace=2 " full backspacing capabilities
set history=100 " 100 lines of command line history
set ruler " ruler display in status line
set showmode " show mode at bottom of screen

set cmdheight=2 " set the command height
set showmatch " show matching brackets (),{},[]
set mat=5 " show matching brackets for 0.5 seconds

" wrap like other editors
set nowrap
set textwidth=79
set formatoptions=qrn1
"set colorcolumn=85
set lbr " line break
set display=lastline " don't display @ with long paragraphs

" backup settings
set backup " keep a backup file
set backupdir=/tmp " backup dir
set directory=/tmp " swap file directory

set nocompatible
set expandtab
set history=150
"set relativenumber
set number
set t_Co=256
set spelllang=pl " domyślnie sprawdza pisownię po polsku
set wildmenu
set nospell " domyślnie sprawdzanie pisowni jest wyłączone
set ruler<
set hlsearch
set laststatus=2
set linespace=4
" highlight matching braces
set showmatch

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

"NERT tree
let NERDTreeMapActivateNode='o'
nmap <Leader>ft :NERDTreeFind<CR>

" Taglist plugin
let Tlist_Inc_Winwidth=0
let Tlist_Process_File_Always=1
let Tlist_Show_One_File=1
let Tlist_WinWidth=60
noremap <silent> <leader>o :TlistToggle<CR>

syntax enable
setl scrolljump=15
setl scrolloff=3
syntax on " podświetlanie składni
set nocompatible " vim nie vi
runtime! plugins/matchit.vim

"colorscheme herald
colorscheme molokai
"colorscheme vibrantink
"colorscheme ir_black
if has("gui_running")
    "set guifont=Liberation\ Mono\ 12
    set guifont=Inconsolata\ Medium\ 16
    set columns=174
    set lines=48
endif
hi statusline ctermfg=grey

set autoindent " wcięcia automatiko
set smartindent " smartindent! :)
set nobackup " brak backupu

" key mapping
" tab navigation
"
:map <F2> :tabprevious <cr>
:map <F3> :tabnext <cr>
:map <F4> :set nu! <CR>
:map <F5> :set hlsearch! <CR>
:map <F7> :NERDTreeToggle <CR>
:map <F8> :TlistToggle <CR>
:map <F9> :set spell!<CR>
set pastetoggle=<F6>
set laststatus=2
set statusline=%m%r\ %f\ %=::\ %{Tlist_Get_Tagname_By_Line()}\ \ %l/%L\ (%p%%)
" Shitching between buffers without need to save changes
set hidden

" Enhanced commandline completion
set wildmenu

set guioptions-=T
set guioptions-=m
set autowrite

" set mapleader
let mapleader = ","
let g:mapleader = ","
" Switch to prevoius buffer
nmap <leader>b :b#<cr>

" no sound on errors
set noerrorbells
set novisualbell
set t_vb=
 
" set some magic
set magic
 
" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" set nice completion menu
set wildmenu
set wildmode=longest,full
set completeopt=longest,menu

let mapleader = ","
nmap <leader>v :tabedit $MYVIMRC<CR>
 
" Change color of omnicomplete menu
 hi Pmenu        guibg=#3a6595 guifg=#9aadd5
 hi PmenuSel     guibg=#4a85ba guifg=#b0d0f0 

 " use F1 for something useful
 map <F1> <esc>
 imap <F1> <esc>

 " learn writing with no arrows
 nnoremap <up> <nop>
 nnoremap <down> <nop>
 nnoremap <left> <nop>
 nnoremap <right> <nop>
 nnoremap j gj
 nnoremap k gk


 " Taglist
 let Tlist_Show_One_File = 1
 let Tlist_Use_Right_Window = 1
 let Tlist_GainFocus_On_ToggleOpen = 1
 let Tlist_Exit_OnlyWindow = 1
 let Tlist_Close_On_Select = 1
 let Tlist_Auto_Update = 1
 let Tlist_Close_On_Select = 1
 let Tlist_Exit_OnlyWindow = 1
 let Tlist_Use_Right_Window = 1
 let Tlist_GainFocus_On_ToggleOpen = 1
 let NERDChristmasTree = 1
 let NERDTreeChDirMode = 0
 let NERDTreeHighlightCursorline = 1
 let NERDTreeMouseMode = 2

 filetype plugin indent on
 set modelines=0
 set tabstop=2
 set shiftwidth=2
 set softtabstop=2
 set expandtab

 set ignorecase
 set smartcase
 set gdefault
 nnoremap <leader><space> :noh<cr>
