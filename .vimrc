"set leader key for more shortcuts
let mapleader = ","
let g:mapleader = ","
"set backup, while file ist written (is being deleted after written)
set writebackup
" Sets how many lines of history VIM has to remember
set history=700
" Set 7 lines to the cursor - when moving vertically using j/k
" set so=7
"Always show current position
set ruler
" Height of the command bar
set cmdheight=2
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
" For regular expressions turn magic on
set magic
" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2
" Enable syntax highlighting
syntax enable
colorscheme elflord
set background=dark
"Enable the use of the mouse in visual mode
set mouse=v

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2
" Format the status lin%e
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l/%L

""""""""""""""""""""""""""""""
" => Mapping
""""""""""""""""""""""""""""""
"Fast quit save
nmap <leader>s :wq<cr>
"Fast exit without saving
nmap <leader>c :q!<cr>
nmap <c-c> :q!<cr>
"Makes deleting lines in insert mode possible
imap <c-d> <esc>ddi
"Backspace works in normal mode
nmap <bs> i<bs><esc>l
"easy comment in bash scripts
nmap <leader># ^^i#<esc>
"get back to last file when using gf
nmap fg :e#<cr>
" => Special File rules
""""""""""""""""""""""""""""""
autocmd BufNewFile,BufRead *.py set tabstop=4                               " 4 whitespaces for tabs visual presentation
autocmd BufNewFile,BufRead *.py set shiftwidth=4                            " shift lines by 4 spaces
autocmd BufNewFile,BufRead *.py set smarttab                                " set tabs for a shifttabs logic
autocmd BufNewFile,BufRead *.py set expandtab                               " expand tabs into spaces
autocmd BufNewFile,BufRead *.py set autoindent                              " indent when moving to the next line while writing code
