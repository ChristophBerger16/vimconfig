call plug#begin('~/.vim/plugged')

Plug 'drewtempelmeyer/palenight.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Raimondi/delimitMate'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'chriskempson/base16-vim'
Plug 'tpope/vim-eunuch'

call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16'
" air-line
let g:airline_powerline_fonts = 1

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

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

imap jj <ESC>

set background=dark
colorscheme palenight

set number              "show line numbers

set cursorline          "highlight currentl line

set showmatch           "highlight matching brackets

set incsearch           "search when character is entered
set hlsearch            "highlight matches
"turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

set foldenable          "enable folding
set foldlevelstart=10   "open most folds from the start 
set foldnestmax=10      "10 nested folds maximal
"open/close folds with space
nnoremap <space> za     
set foldmethod=indent   "fold based on the indentation level

"move vertically by visual line
nnoremap j gj
nnoremap k gk

"move to beginning/end of file
nnoremap B ^
nnoremap E $

"$/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

let mapleader=","       "leader is comma

set noshowmode

let g:palenight_terminal_italics=1

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

