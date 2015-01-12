" Code formatting
set tabstop=4    "Number of spaces to replace TAB
set shiftwidth=4 "Indenting using << and >>
set expandtab    "Expand tabs to spaces
set textwidth=78 "Maximum width of text that is being inserted
set autoindent   "Always set autoindenting on
set backspace=indent,eol,start "Allow backspacing over the list provided


" Editor look and feel
set number       "Have line number along with the text
set ruler        "Shows cursor position on the modeline
set showmode     "Displays the mode on the modeline when not in command mode
set laststatus=2 "Always display status line
set statusline=%<%F\ %h%m%r%=%-14.(%l,%c%V%)\ %P "Status line

if version >= 500
	" Highlighting strings inside C comments
	let c_comment_strings=1

	syntax on     "Switch on syntax highlighting.
	set hlsearch  "Switch on search pattern highlighting.
	set incsearch "Show where the pattern, as it was typed so far,
	set mousehide "Hide the mouse pointer while typing

	" Set nice colors
	" Background for normal text is light grey
	" Cursor is green
	" Text below the last line is darker grey
	" Status line is bright white on blue
	highlight Normal guibg=grey90
	highlight Cursor guibg=green guifg=NONE
	highlight NonText guibg=grey80
	highlight Constant guibg=grey90
	highlight Special gui=NONE guibg=grey90
	highlight StatusLine gui=bold guifg=white guibg=blue

endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Key Mappings

""Move to previous tab on Shift+Right
map <S-Left> <Esc>:tabprev<CR>
imap <S-Left> <Esc>:tabprev<CR>

"Move to next tab on Shift+Right
map <S-Right> <Esc>:tabnext<CR>
imap <S-Right> <Esc>:tabnext<CR>

"Open a new tab with Ctrl+N
map <C-N> <Esc>:tabnew<CR>
imap <C-N> <Esc>:tabnew<CR>

"Close the tab with Ctrl+F4
map <C-F4> <Esc>:tabclose<CR>
imap <C-F4> <Esc>:tabclose<CR>

""Open the file name under cursor in new tab with Ctrl+N
map <C-N> <CTRL-W gf>

"
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
set bs=2
set ruler
if has("gui_running")
	set bg=light
else
	set bg=dark
endif
syntax on
set hlsearch
set history=100
set ignorecase
set wildmode=longest,list
map ' `
filetype on
filetype indent on  "detect a particular file type and apply indentation accordingly
filetype plugin on

"change directory to the current directory of the working file
autocmd BufEnter * cd %:p:h

autocmd BufRead .aliases set filetype=csh
set et

set ts=2
set sw=2

"copied from vimrc_example
if has("autocmd")

	" Put these in an autocmd group, so that we can
	" delete them easily.
	augroup vimrcEx
		au!

		autocmd BufReadPost *
					\ if line("'\"") > 0 && line("'\"") <= line("$") |
					\   exe "normal g`\"" |
					\ endif

	augroup END
endif
colorscheme desert
au BufRead,BufNewFile *.rabl setf ruby

set nonu

syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
