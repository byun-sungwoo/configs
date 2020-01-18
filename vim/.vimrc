"   ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"   ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"   ██║   ██║██║██╔████╔██║██████╔╝██║
"   ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║
" ██╗╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
" ╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝

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
set cursorline		" Underline current line
set showcmd		" Show commands being typed
"set mouse=a		" Enable mouse

" Disable Arrow Keys
nnoremap <Left> :echo		"this is vim my man [left arrow]"	<CR>
vnoremap <Left> :<C-u>echo	"this is vim my man [left arrow]"	<CR>
inoremap <Left> <C-o>:echo	"this is vim my man [left arrow]"	<CR>
nnoremap <Right> :echo		"this is vim my man [right arrow]"	<CR>
vnoremap <Right> :<C-u>echo	"this is vim my man [right arrow]"	<CR>
inoremap <Right> <C-o>:echo	"this is vim my man [right arrow]"	<CR>
nnoremap <Up> :echo		"this is vim my man [up arrow]"		<CR>
vnoremap <Up> :<C-u>echo	"this is vim my man [up arrow]"		<CR>
inoremap <Up> <C-o>:echo	"this is vim my man [up arrow]"		<CR>
nnoremap <Down> :echo		"this is vim my man [down arrow]"	<CR>
vnoremap <Down> :<C-u>echo	"this is vim my man [down arrow]"	<CR>
inoremap <Down> <C-o>:echo	"this is vim my man [down arrow]"	<CR>

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

" Repeat
nnoremap ; .

" Set split to open on the right and bottom
set splitright
set splitbelow

"" Moving single line
"nnoremap <Down> :call LineDown()<CR> 
"nnoremap <Up> :call LineUp()<CR>
"
"function LineUp()
"	if line('.')>1
"		normal ddkP
"	else
"		echo "cannot move line above 1"
"	endif
"endfunction
"
"function LineDown()
"	if line('.')<line('$')
"		normal ddjP
"	else
"		echo "cannot move line below "+line('$')
"	endif
"endfunction
