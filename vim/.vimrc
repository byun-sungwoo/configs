" Mute bell sound
set visualbell

" Mute visual flash
set t_vb=

" Show current line
" set cursorline

" Show line numbers
set number

" Show tabs
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list

" Disable Arrow Keys
nnoremap <Left> :echo "that's an arrow key"<CR>
vnoremap <Left> :<C-u>echo "that's an arrow key"<CR>
inoremap <Left> <C-o>:echo "that's an arrow key"<CR>
nnoremap <Right> :echo "that's an arrow key"<CR>
vnoremap <Right> :<C-u>echo "that's an arrow key"<CR>
inoremap <Right> <C-o>:echo "that's an arrow key"<CR>
nnoremap <Up> :echo "that's an arrow key"<CR>
vnoremap <Up> :<C-u>echo "that's an arrow key"<CR>
inoremap <Up> <C-o>:echo "that's an arrow key"<CR>
nnoremap <Down> :echo "that's an arrow key"<CR>
vnoremap <Down> :<C-u>echo "that's an arrow key"<CR>
inoremap <Down> <C-o>:echo "that's an arrow key"<CR>

" Show document name
set laststatus=2
