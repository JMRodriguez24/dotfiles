set nocompatible
filetype off

set rtp+=~/vimfiles/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized'
Bundle 'paredit.vim'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-foreplay'
Bundle 'xptemplate'
Bundle 'EasyGrep'
Bundle 'L9'
Bundle 'FuzzyFinder'


"Set filetype stuff to on
filetype on
filetype plugin on
filetype indent on

set fileformat=unix

" paste toggle
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" tabs are 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

"XPTemplate variables
let g:xptemplate_brace_complete = ''

" font
let g:main_font = "DejaVu\\ Sans\\ Mono\\ 10"
let g:small_font = "DejaVu\\ Sans\\ Mono\\ 2"

" Printing options
set printoptions=header:0,duplex:long,paper:letter

" set the search scan to wrap lines
set wrapscan

" I'm happy to type the case of things.  I tried the ignorecase, smartcase
" thing but it just wasn't working out for me
set noignorecase

" Make command line two lines high
set ch=2

" set visual bell -- i hate that damned beeping
set vb

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2

" Make sure that unsaved buffers that are to be put in the background are
" allowed to go in there (ie. the "must save first" error doesn't come up)
set hidden

" Make the 'cw' and like commands put a $ at the end instead of just deleting
" the text and replacing it
set cpoptions=ces$

" Set the status line the way i like it
set stl=%F\ %m\ %r\ %=Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ [%b][0x%B]

" tell VIM to always put a status line in, even if there is only one window
set laststatus=2

" Don't update the display while executing macros
set lazyredraw

" Don't show the current command int he lower right corner.  In OSX, if this is
" set and lazyredraw is set then it's slow as molasses, so we unset this
set showcmd

" Show the current mode
set showmode

" Switch on syntax highlighting.
syntax on

" Hide the mouse pointer while typing
set mousehide

" Set up the gui cursor to look nice
set guicursor=n-v-c:block-Cursor-blinkon0,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor,r-cr:hor20-Cursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

" set the gui options the way I like
set guioptions=acg

nnoremap <C-F1> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
nnoremap <C-F2> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
nnoremap <C-F3> :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>


" Setting this below makes it sow that error messages don't disappear after one second on startup.
"set debug=msg

" This is the timeout used while waiting for user input on a multi-keyed macro
" or while just sitting and waiting for another key to be pressed measured
" in milliseconds.
"
" i.e. for the ",d" command, there is a "timeoutlen" wait period between the
"      "," key and the "d" key.  If the "d" key isn't pressed before the
"      timeout expires, one of two things happens: The "," command is executed
"      if there is one (which there isn't) or the command aborts.
set timeoutlen=800

" Keep some stuff in the history
set history=100

" These commands open folds
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

" When the page starts to scroll, keep the cursor 8 lines from the top and 8
" lines from the bottom
set scrolloff=8

" Allow the cursor to go in to "invalid" places
set virtualedit=all

" Disable encryption (:X)
set key=

" Make the command-line completion better
set wildmenu

" Same as default except that I remove the 'u' option
set complete=.,w,b,t

" When completing by tag, show the whole tag, not just the function name
set showfulltag

" Set the textwidth to be 80 chars
set textwidth=80

" get rid of the silly characters in separators
set fillchars = ""

" Add ignorance of whitespace to diff
set diffopt+=iwhite

" Enable search highlighting
set hlsearch

" Incrementally match the search
set incsearch

" Add the unnamed register to the clipboard
set clipboard+=unnamed

" Automatically read a file that has changed on disk
set autoread

set grepprg=grep\ -nH\ $*

" Trying out the line numbering thing... never liked it, but that doesn't mean
" I shouldn't give it another go :)
set number

" dictionary for english words
" I don't actually use this much at all and it makes my life difficult in general
"set dictionary=$VIM/words.txt

" System default for mappings is now the "," character
let mapleader = ","
let maplocalleader = "\\"

" cd to the directory containing the file in the buffer
nmap <silent> <Leader>cd :lcd %:h<CR>

" Edit the vimrc file
nmap <silent> <Leader>ev :e $MYVIMRC<CR>
nmap <silent> <Leader>sv :so $MYVIMRC<CR>

" Insert mode mappings
inoremap jk <esc>
inoremap <esc> <nop>

inoremap II <Esc>I
inoremap AA <Esc>A
inoremap OO <Esc>O

inoremap CC <Esc>C
inoremap SS <Esc>S
inoremap DD <Esc>ddi
inoremap UU <Esc>ui

" remove arrow key mappings 
inoremap <Left> <nop>
inoremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>

nnoremap <Left> <nop>
nnoremap <Right> <nop>
nnoremap <Up> <nop>      
nnoremap <Down> <nop>

" Use very magic mode for inc search
nnoremap / /\\v
nnoremap ? ?\\v

"Let the syntax highlighting for Java files allow cpp keywords
let java_allow_cpp_keywords = 1

colorscheme xoria256

"-----------------------------------------------------------------------------
"" NERD Tree Plugin Settings
"-----------------------------------------------------------------------------
"" Toggle the NERD Tree on an off with F7
nmap <F7> :NERDTreeToggle<CR>

" Close the NERD Tree with Shift-F7
nmap <S-F7> :NERDTreeClose<CR>

" Show the bookmarks table on startup
let NERDTreeShowBookmarks=1

" Don't display these kinds of files
let NERDTreeIgnore=[ '\.ncb$', '\.suo$', '\.vcproj\.RIMNET', '\.obj$',
                    \ '\.ilk$', '^BuildLog.htm$', '\.pdb$', '\.idb$',
                    \ '\.embed\.manifest$', '\.embed\.manifest.res$',
                    \ '\.intermediate\.manifest$', '^mt.dep$' ]



" Make C-v paste
noremap <C-v> <MiddleMouse>

" set text wrapping toggles
nmap <silent> <Leader>ww :set invwrap<CR>:set wrap?<CR>

" Turn of search highlighting
nmap <silent> <Leader>n :nohls<CR>

" Maps Alt-[n,p] for moving next and previous window respectively
nmap <silent> <C-n> <C-w><C-w>
nmap <silent> <C-p> <C-w><S-w>

" Maps fuzzyfinder help 
nmap <Leader>h :FufHelp<CR>
nmap <Leader>t :FufCoverageFile<CR>

" taglist settings
let tlist_clojure_settings = 'lisp;f:function'

augroup vimrc_autocmds
    autocmd!
    autocmd FileType clojure set tags^=$HOME/.tags/clojure/tags,$HOME/.tags/clojurescript/tags,./tags
    au VimEnter * RainbowParenthesesToggle
    au Syntax * RainbowParenthesesLoadRound
    au Syntax * RainbowParenthesesLoadSquare
    au Syntax * RainbowParenthesesLoadBraces
augroup END

let $TMP="C:/tmp/"

"-----------------------------------------------------------------------------
" Set up the window colors and size
"-----------------------------------------------------------------------------
if has("gui_running")
  if hostname() == "dqw-linux"
    set background=light
  else
    set background=dark
  endif
  colorscheme solarized
  if !exists("g:vimrcloaded")
      winpos 0 0
      if !&diff
          winsize 130 120
      else
          winsize 227 120
      endif
      let g:vimrcloaded = 1
  endif
endif

