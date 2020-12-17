"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle For Managing Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()		" required, all plugins must appear after this line.
Plugin 'VundleVim/Vundle.vim'							" Vundle

Plugin 'sainnhe/gruvbox-material'
Plugin 'arcticicestudio/nord-vim'
Plugin 'ryanoasis/vim-devicons'

Plugin 'itchyny/lightline.vim'                      " Lightline statusbar
"Plugin 'mengelbrecht/lightline-bufferline'          " Lightline statusbar
Plugin 'godlygeek/tabular'
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
"Plugin 'frazrepo/vim-rainbow'

" Plugin 'vim-python/python-syntax'
"Plugin 'jreybert/vimagit'
" Plugin 'severin-lemaignan/vim-minimap'
"Plugin 'ap/vim-css-color'                           " Color previews for CSS
" Plugin 'tpope/vim-surround'                         " Change surrounding marks

call vundle#end()		" required, all plugins must appear before this line.

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Avoid garbled characters in Chinese language windows OS
let $LANG='en' 
set langmenu=en

" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store

"Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic

" Mouse scrolling
set mouse=nicr

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Powerline, Colors, and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Lightline
	let g:lightline = {}
	let g:lightline.enable = {'statusline': 1,'tabline': 1}
	let g:lightline.colorscheme = 'gruvbox_material'
	let g:lightline.active = { 'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ] }
	let g:lightline.tabline= {'left': [ ['buffers'] ],'right': [ ['close'] ]}
	let g:lightline.component_raw = {'buffers': 1}
"	let g:lightline.component_expand= {'buffers': 'lightline#bufferline#buffers'}
	let g:lightline.component_type = {'buffers': 'tabsel'}
	let g:lightline.component_function = { 'filetype': 'MyFiletype','fileformat': 'MyFileformat',}
	"let g:lightline#bufferline#show_number = 2
	"let g:lightline#bufferline#unnamed = "untitled"
	"let g:lightline#bufferline#enable_devicons = 1
	"let g:lightline#bufferline#unicode_symbols = 1
	"let g:lightline#bufferline#clickable = 1

 "Buffer Mappings
	"nmap <Leader>1 <Plug>lightline#bufferline#go(1)
	"nmap <Leader>2 <Plug>lightline#bufferline#go(2)
	"nmap <Leader>3 <Plug>lightline#bufferline#go(3)
	"nmap <Leader>4 <Plug>lightline#bufferline#go(4)
	"nmap <Leader>5 <Plug>lightline#bufferline#go(5)
	"nmap <Leader>6 <Plug>lightline#bufferline#go(6)
	"nmap <Leader>7 <Plug>lightline#bufferline#go(7)
	"nmap <Leader>8 <Plug>lightline#bufferline#go(8)
	"nmap <Leader>9 <Plug>lightline#bufferline#go(9)
	"nmap <Leader>0 <Plug>lightline#bufferline#go(10)

" Gruvbox Settings
	let g:gruvbox_material_background = 'soft'
	let g:gruvbox_material_transparent_background = 0
	let g:gruvbox_material_enable_bold = 1
	let g:gruvbox_material_enable_italic = 1

" Nord Settings
	let g:nord_uniform_status_lines = 1
	let g:nord_uniform_diff_background = 1
	let g:nord_bold = 1
	let g:nord_italic = 1
	let g:nord_italic_comments = 1
	let g:nord_underline = 1

" Always show statusline
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c


" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

set number relativenumber
let g:rehash256 = 1

" Uncomment to prevent non-normal modes showing in powerline and below powerline.
set noshowmode

syntax enable   

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" GitGutter
	nmap ) <Plug>(GitGutterNextHunk)
	nmap ( <Plug>(GitGutterPrevHunk)
	let g:gitgutter_enabled = 1
	let g:gitgutter_map_keys = 0
	let g:gitgutter_highlight_linenrs = 1

" Nerd tree
	map <leader>n :NERDTreeToggle<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
	let NERDTreeMinimalUI = 1
	let NERDTreeDirArrows = 1

" TagBar
	nmap <leader>t :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text and indents 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tw=80

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" linebreak on 500 characters
set lbr
set tw=500

set ai "auto indent
set si "smart indent
set wrap "wrap lines



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Remap Keys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Remap ESC to ii
:imap ii <Esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Turn persistent undo on 
"    means that you can undo even when you close a buffer/VIM
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
try
    set undodir=~/.vim/temp_dirs/undodir
    set undofile
catch
endtry


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction
