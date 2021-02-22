" spell checking
"set spell
"set spelllang=en

" Set compatibility to Vim only.
"set nocompatible

" set hybrid line numbers on
:set nu rnu

" Call the .vimrc.fasten file
if filereadable(expand("~/.vimrc.fasten"))
source ~/.vimrc.fasten
endif

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" Turn on syntax highlighting.
syntax on
set t_Co=256

" For plug-ins to load correctly.
filetype plugin indent on

" Turn off modelines
set modelines=0

" Automatically wrap text that extends beyond the screen length.
set wrap

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5
" Fixes common backspace problems
set backspace=indent,eol,start

" Speed up scrolling in Vim
set ttyfast

" tabs
set tabstop=4
set shiftwidth=0
set noexpandtab

" Display options
set showmode
set showcmd

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" Display different types of white spaces.
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Encoding
set encoding=utf-8

" do not Highlight matching search patterns
set nohlsearch
" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase

" quick escape
set timeoutlen=1000
set ttimeoutlen=5

" Store info from no more than 100 files at a time, 9999 lines of text, 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100

" set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" Call the .vimrc.plug file
if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif

" Call the .vimrc.coc file
if filereadable(expand("~/.vimrc.coc"))
	source ~/.vimrc.coc
endif


" scroll inside the floating window
if has('nvim-0.4.3') || has('patch-8.2.0750')
          nnoremap <nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
          nnoremap <nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
          inoremap <nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
          inoremap <nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
endif

" set the color of floating window
hi Pmenu ctermbg=black ctermfg=gray

colorscheme gruvbox
set background=dark
let g:airline_theme='gruvbox'
let g:airline_detect_spell=1
let g:airline_powerline_fonts = 1
let g:airline_symbols_ascii = 1
let g:airline_highlighting_cache = 1
" If the dictionary airline_symbols does not exist, make one
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
" these are added to the airline_symbols dictionary
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
" an empty list disables all extensions
let g:airline_extensions = ['fzf']

" higlight line in insert mode
:autocmd InsertEnter,InsertLeave * set cul!

" For VTE compatible terminals (urxvt, st, xterm,
" gnome-terminal 3.x, Konsole KDE5 and others) and
" wsltty
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

"TEMPLATES!!!!

" C template
:autocmd BufNewFile *.c 0r ~/.vim/templates/c_template.c
" CPP template
:autocmd BufNewFile *.cpp 0r ~/.vim/templates/cpp_template.cpp
