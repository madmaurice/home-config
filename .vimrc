"
" To use it, copy it to
"     for Unix:  ~/.vimrc
"     for Win32:  $HOME\_vimrc

"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
syntax on

" It hides buffers instead of closing them. This means that you can have
" unwritten changes to a file and open a new file using :e, without being forced
" to write or undo your changes first. 
set hidden

" change the mapleader from \ to ,
let mapleader=","

" Show line number
set number

" show the column and line number in the status line
set ruler

"	Basically this makes the use of the mouse and shift keys combinations
"	to enter select mode (similar to what is usual Windows).
behave mswin

filetype plugin indent on

colorscheme jomolokai

" Misc -------------------------------------------------------------------------

" Disable modelines
set modelines=0

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=

"Enable the mouse in all modes.
set mouse=a

" Turn off folding 
"set nofoldenable

" Maki GUI File Open and explorer use current directory
set browsedir=buffer

" Hide the mouse pointer while typing
set mousehide

" Set fonts
if has('win32')
  set guifont=Courier_New:h10
else
  set guifont=DejaVu\ Sans\ Mono\ 10
endif

" keep 50 lines of command line history
set history=50

" Make command line one line high
set ch=1

" display incomplete commands
set showcmd	

" Always show a status line even when there is only one buffer edited
set laststatus=2

" Indicates a fast terminal connection.  More characters will be sent to	the
" screen for redrawing
set ttyfast

" Ignore thoses file type
set wildignore=*.swp,*.bak,*.pyc,*.class

" Disable backup and swapfile
set nobackup
set noswapfile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tabs 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Indent 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent " Automatically set the indent of a new line (local to buffer)
set smartindent " smartindent (local to buffer)


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wrap
set linebreak  " Wrap at word

" Break lines of 80+ characters
set textwidth=80

" Default file format
set fileformats=unix,dos

" http://vimdoc.sourceforge.net/htmldoc/change.html#fo-table
set formatoptions=tcqnl

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:?\ ,eol:¬

" allow backspacing over everything in insert mode
set backspace=indent,eol,start 

" Add < and > to matchpairs for html editing.
set matchpairs=(:),{:},[:],<:> 

" Autocompletion specifies how keyword completion works	when CTRL-P or CTRL-N 
set complete=.,w,b,t


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Windows 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set equalalways " Multiple windows, when created, are equal in size
set splitright " When doing a vsplit will spit new window to the right


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Command completion
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu
set wildmode=list:longest


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Searching 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch  " highlight search
set incsearch  " Incremental search, search as you type
set ignorecase " Ignore case when searching 
set smartcase  " ignore case if search pattern is all lowercase, case-sensitive otherwise


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General mappings 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ; does as : (enter command mode)
nnoremap ; :
nnoremap <C-;> ;

" This is totally awesome - remap jj to escape in insert mode.  You'll never type jj anyway, so it's great!
inoremap jj <Esc>

" Copy and paste to/from clipboard.
vnoremap <leader>y  "+y
map      <leader>p	"+gP
cmap <C-V>		<C-R>+

" Pasting blockwise and linewise selections is not possible in Insert and
" Visual mode without the +virtualedit feature.  They are pasted as if they
" were characterwise instead.
" Uses the paste.vim autoload script.
"exe 'inoremap <script> <leader>p' paste#paste_cmd['i']
"exe 'vnoremap <script> <leader>p' paste#paste_cmd['v']

" This turns off Vim’s crazy default regex characters and makes searches use normal regexes.
nnoremap / /\v
vnoremap / /\v

" Shortcut to rapidly toggle `set list`
noremap <leader>l :set list!<CR>

" Remove the highlighted search
nnoremap <silent> <leader>/ :nohlsearch<CR>

"'Find Fault' : Search for next error/warn in Paraxip logs (normal mode only)
nnoremap <leader>ff /FATAL \\|ERROR \\|WARN <cr>

" edit the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>

" source the vimrc file in the current session
nmap <silent> <leader>sv :so $MYVIMRC<CR>


" Editing ----------------------------------------------------------------------

" Use Q for formatting the current paragraph (or selection)
vnoremap Q gq
nnoremap Q gqap

" Use CTRL-S for saving, also in Insert mode
noremap <C-s>		:update<CR>
vnoremap <C-s>		<C-C>:update<CR>
inoremap <C-s>		<C-O>:update<CR>

" Show text column
nmap<leader>co :set colorcolumn=81<CR>
nmap<leader>cf :set colorcolumn=0<CR>

" Map F5 to refresh/restore
map <F5> :e!<CR>

" Put " comments around current word (from vi FAQ)
map <leader>s" i"ea"

" Put ' comments around current word (from vi FAQ)
map <leader>s' i'ea'

" Replace word under cursor with last yanked text
nnoremap <leader>S diw"0P


" Navigation -------------------------------------------------------------------

" Browser buffers with ctrl-tab and ctrl-shift-tab
noremap <c-tab> :bn<cr>
noremap <c-s-tab> :bp<cr>

" Remap j and k to act as expected when used on long, wrapped, lines
nnoremap j gj
nnoremap k gk

"Easy navigation in insert mode.
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

"Remains in visual mode when indenting with < or >
vnoremap <  <gv
vnoremap >  >gv

"Disable arrow key ;)
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>
inoremap   <Up>     <NOP>
inoremap   <Down>   <NOP>
inoremap   <Left>   <NOP>
inoremap   <Right>  <NOP>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tags 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search in current file dir first and then the global tags files
" :echo tagfiles() can be used to see the current tags files in use.
"set tags=./tags,$ROOT/tags


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" SuperTab ---------------------------------------------------------------------

" Let SuperTab determine the type of completion to use.
let g:SuperTabSetDefaultCompletionType = "context"

" If context completion fail, use this completion type.
let g:SuperTabContextDefaultCompletionType = "<c-x><c-i>"


" NERDtree ---------------------------------------------------------------------
nnoremap <leader>n :NERDTreeToggle<cr>


" Taglist ----------------------------------------------------------------------
nnoremap <leader>t :TlistToggle<cr>

let Tlist_Show_One_File = 1 " Displaying tags for only one file~
let Tlist_Exist_OnlyWindow = 1 " if you are the last, kill yourself
let Tlist_Use_Right_Window = 1 " split to the right side of the screen


" Buffer Explorer --------------------------------------------------------------
nnoremap <leader>b :BufExplorerHorizontalSplit<cr>


" Grep -------------------------------------------------------------------------
" grep for the word under the cursor recursively under the file dir.
noremap gr :Rgrep <cword> %:p:h *<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => C/C++ 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" I like highlighting strings inside C comments
let c_comment_strings=1

" C style comments -------------------------------------------------------------
"map <leader>cm :call C_CommentTemplates('method')<cr>
"map <leader>cc :call C_CommentTemplates('frame')<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Python
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" pydiction module setup
let g:pydiction_location = "$HOME/.vim/ftplugin/pydiction/complete-dict"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Perl
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" my perl includes pod
let perl_include_pod = 1

" syntax color complex things like @{${"foo"}}
let perl_extended_vars = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Autocommand
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"TODO http://vimdoc.sourceforge.net/htmldoc/options.html#'path' set 
"path base on of the current filetype
"http://vimdoc.sourceforge.net/htmldoc/options.html#'path'

if has("autocmd")
  augroup myVimrc_autocmd
    " Remove ALL autocommands for the current group.
    au!	
    " Change to directory of current file automatically
    autocmd BufEnter * lcd %:p:h
     
    "Maximize the window
    if has('win32')
      au GUIEnter * simalt ~x
    endif

    "Remove visualbell and flash.
    au GuiEnter * set vb t_vb=

    "C/C++ stuff
    autocmd BufNewFile  *.\(c\|cc\|cpp\|C\)  call C_CommentTemplates('cheader')
    autocmd BufNewFile  *.\(h\|hpp\)         call C_CommentTemplates('hheader')
    autocmd BufNewFile  *.py                 call C_CommentTemplates('python-header')

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    " Also don't do it when the mark is in the first line, that is the default
    " position when opening a file.
    autocmd BufReadPost *
      \ if line("'\"") > 1 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif
  augroup END
endif



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Others 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Function
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Default function coming with vim, not sure what the hell this is about...
function! MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction


" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Not used
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Make external commands work through a pipe instead of a pseudo-tty
"set noguipty

" This forbid the toolbar to show.  
"set guioptions-=T

" This forbid the menu to show.
"set guioptions-=m

" 80 + 9 to encompass "fold" margin and line numbers
"set columns=89
"set lines=58

"Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
" filetype off
" call pathogen#runtime_append_all_bundles()

"Use cygwin as shell
"set shell=C:/cygwin/bin/bash
"set shellcmdflag=--login\ -c 
"set shellxquote=\"
