"   ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"   ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"   ██║   ██║██║██╔████╔██║██████╔╝██║
"   ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║
" ██╗╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
" ╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Airline
let g:airline_theme='fruit_punch'
let g:airline_powerline_fonts=1

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_left_sep=''
let g:airline_right_sep=''

" Coc Snippet Tab Completion
inoremap <silent><expr> <TAB>
	\ pumvisible() ? coc#_select_confirm() :
	\ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
	\ <SID>check_back_space() ? "\<TAB>" :
	\ coc#refresh()

function! s:check_back_space() abort
	let col = col('.') -1
	return !col || getline('.')[col - 1] =~# '\s'
endfunction

" Make sure to have yarn installed
" :CocInstall coc-java
" :CocInstall coc-python
" :CocInstall coc-tsserver
" :CocInstall coc-snippets
" :CocList extensions

" General
set listchars=eol:$,tab:\|-,extends:>,precedes:<
set list		" Show tabs
set visualbell		" Mute bell sound
set t_vb=		" Mute visual flash
set number		" Show line numbers
set relativenumber	" Show relative line numbers
set laststatus=2	" Show document name
set nobackup		" No backup
set nowritebackup	" No writing backup
set noswapfile		" No swap files
set nowrap		" No wrapping
set ai			" Enable auto indent
set si			" Enable smart indent
set hlsearch		" Enable highlighting
set showcmd		" Show commands being typed
"set cursorline		" Underline current line
"set mouse=a		" Enable mouse

" Scrolling
nnoremap <C-h> zh
nnoremap <C-j> <C-e>
nnoremap <C-k> <C-y>
nnoremap <C-l> zl

" Copy Paste
vnoremap <C-c> "+y
nnoremap <C-p> "+p
vnoremap <C-p> "+p

" Clear highlighting with forwardslash
nnoremap <C-_> :noh<CR>

" Set colorscheme as default
colorscheme default

" Remap semicolon to colon
nnoremap ; :

" Set split to open on the right and bottom
set splitright
set splitbelow
