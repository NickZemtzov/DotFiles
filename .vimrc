" Enable seoul256 dark mode color scheme
call plug#begin()
Plug 'junegunn/seoul256.vim'
call plug#end()
let g:seoul256_background = 233
colo seoul256

" Adds line numbers as default on when starting vim
set nonumber

" Adds highlighting to N seach
set hlsearch
set ignorecase
set smartcase
set showmatch

" Auto-indent
set autoindent expandtab tabstop=4 shiftwidth=4 smarttab

" Enables persistant undo - you can undo after quitting a file
let vimDir = '$HOME/.vim'
if stridx(&runtimepath, expand(vimDir)) == -1
	let &runtimepath.=','.vimDir
endif
" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
	let myUndoDir = expand(vimDir . '/undodir')
	call system('mkdir ' . vimDir)
	call system('mkdir ' .myUndoDir)
	let &undodir = myUndoDir
	set undofile
endif

" Remember where I left off in a file
if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" Remaps control-n to turn on and off line numbers
nnoremap <C-n> :set nu! <ENTER>

" Remaps any combination of upper and lowercase Q and W and WQ to work
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Wq wq

