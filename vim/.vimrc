" Settings
set listchars=eol:$,tab:\|-,trail:~,extends:>,precedes:<
set list		" Show tabs
set visualbell		" Mute bell sound
set t_vb=		" Mute visual flash
set number		" Show line numbers
set laststatus=2	" Show document name
set nobackup		" No backup
set nowritebackup	" No writing backup
set noswapfile		" No swap files
set nowrap		" No wrapping
set ai			" Enable auto indent
set si			" Enable smart indent
"set mouse=a		" Enable mouse

" Disable Arrow Keys
nnoremap <Left> :echo		"bruh... [left arrow]"	<CR>
vnoremap <Left> :<C-u>echo	"bruh... [left arrow]"	<CR>
inoremap <Left> <C-o>:echo	"bruh... [left arrow]"	<CR>
nnoremap <Right> :echo		"bruh... [right arrow]"	<CR>
vnoremap <Right> :<C-u>echo	"bruh... [right arrow]"	<CR>
inoremap <Right> <C-o>:echo	"bruh... [right arrow]"	<CR>
nnoremap <Up> :echo		"bruh... [up arrow]"	<CR>
vnoremap <Up> :<C-u>echo	"bruh... [up arrow]"	<CR>
inoremap <Up> <C-o>:echo	"bruh... [up arrow]"	<CR>
nnoremap <Down> :echo		"bruh... [down arrow]"	<CR>
vnoremap <Down> :<C-u>echo	"bruh... [down arrow]"	<CR>
inoremap <Down> <C-o>:echo	"bruh... [down arrow]"	<CR>

nnoremap <C-j> <C-e>
nnoremap <C-k> <C-y>
