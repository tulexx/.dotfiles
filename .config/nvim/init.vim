" Keyboard remapping ---{{{

" Change leader key to comma (,)
let mapleader=","

" Change local leader to (\)
let maplocalleader="\\"

" Remove highlights with leader + enter
nnoremap <Leader><CR> :nohlsearch<cr>

" Move line down the file
nnoremap <leader>_ ddp

" Move line up a file
nnoremap <leader>- ddkP

" Delete line in insert mode
inoremap <c-d> <esc>ddi

" Edit my vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Source my vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" Surround word in ".."
nnoremap <leader>" viW<esc>a"<esc>hbi"<esc>lel

" Surround word in '..'
nnoremap <leader>' viW<esc>a'<esc>hbi'<esc>lel

" Remap jk to <esc>
inoremap jk <esc>
inoremap fd <esc>
" inoremap <esc> <nop>

" Navigate between splits with leader
nnoremap <leader>h <c-w><c-h>
nnoremap <leader>j <c-w><c-j>
nnoremap <leader>k <c-w><c-k>
nnoremap <leader>l <c-w><c-l>

" Copy to clipboard
vnoremap <C-C> "+y

" Disable Ex mode
nnoremap Q <nop>

" Easier exiting
" nnoremap <leader>q :q<cr>
" nnoremap <leader>Q :q!<cr>

" Reload syntax highlighting
nnoremap <leader>r :syntax sync fromstart<cr>

" Omnicompletion on <c-o>
inoremap <c-o> <c-x><c-o>

" :W for write with sudo
command! W :execute ':silent w !sudo tee % > /dev/null' | :edit!
command! Wtest :execute 'w !sudo tee % > /dev/null' | :edit!

" %%/ as current directory
cabbr <expr> %% expand('%:p:h')

" Fugitive git bindings
nnoremap <space>ga :Git add %:p<cr><cr>
nnoremap <space>gs :Gstatus<cr>
"nnoremap <space>gc :Gcommit -v -q<cr>
"nnoremap <space>gt :Gcommit -v -q %:p<cr>
"nnoremap <space>gd :Gdiff<cr>
"nnoremap <space>ge :Gedit<cr>
"nnoremap <space>gr :Gread<cr>
"nnoremap <space>gw :Gwrite<cr><cr>
"nnoremap <space>gl :silent! Glog<cr>:bot copen<cr>
"nnoremap <space>gp :Ggrep<space>
"nnoremap <space>gm :Gmove<space>
"nnoremap <space>gb :Git branch<space>
"nnoremap <space>go :Git checkout<space>
"nnoremap <space>gps :Dispatch! git push<cr>
"nnoremap <space>gpl :Dispatch! git pull<cr>


" }}}

if !exists('g:vscode')
" Keyboard remapping ---{{{
" }}}
" vim-plug settings and plugins ------{{{

set nocompatible " required

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

" Visual
Plug 'chriskempson/base16-vim' " Integration with terminal colors
Plug 'tmux-plugins/vim-tmux' " Integration with tmux
Plug 'vim-airline/vim-airline' " Airline
Plug 'vim-airline/vim-airline-themes' " Airline themes

" Plug 'tpope/vim-fugitive' " Integration with git
Plug 'tpope/vim-repeat' " Better . command
Plug 'tpope/vim-surround' " Surrounding with things using s delimiter

Plug 'christoomey/vim-tmux-navigator'

" General usage
Plug 'easymotion/vim-easymotion' " <leader><leader>motion highlights
Plug 'tomtom/tcomment_vim' " Commenting with gc and gcc
" Plug 'szw/vim-maximizer' " F3 to maximize window
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'ctrlpvim/ctrlp.vim', {'on': ['CtrlP', 'CtrlPBuffer']}
" Plug 'jiangmiao/auto-pairs' " Auto pairing all (){}[]
" Plug 'Valloric/YouCompleteMe'
Plug 'janko-m/vim-test' " Tests

" Theoretically completion
" Plug 'lvht/phpcd.vim', {'for': 'php'}
" Snippets
Plug 'SirVer/ultisnips' " Snippet engine

Plug 'honza/vim-snippets'

" Plug 'sniphpets/sniphpets'
" Plug 'sniphpets/sniphpets-common'

" Plug 'algotech/ultisnips-php' "PHP snippets

" Tags
Plug 'majutsushi/tagbar'
" Plug 'ludovicchabant/vim-gutentags'

" PHP
Plug 'shawncplus/phpcomplete.vim' " PHP omnicompletion
" Plug 'Shougo/vimproc', {'do': 'make'}
" Plug 'm2mdas/phpcomplete-extended'
Plug 'joonty/vdebug' " PHP debugger
Plug '2072/PHP-Indenting-for-VIm'
Plug 'noahfrederick/vim-composer' " Composer integration

Plug 'mattn/emmet-vim' "Emmet for vim
Plug 'vim-syntastic/syntastic' " Syntax chechking

Plug 'gabrielelana/vim-markdown'

call plug#end()

" }}}

" General settings ---{{{

" Single swap file directory
set directory^=/tmp//

" Fix the escape delay
set timeoutlen=1000 ttimeoutlen=0

" Turn on syntax highlighting and Explorer
syntax enable

" Same clipboard as system
set clipboard+=unnamedplus

" Show mode in the status bar
set showmode

" Show commands in the status bar
set showcmd

" Completion in : commands
set wildmenu

" Autocompletion
set wildmode=longest,list,full

" Ruler in the status menu
set ruler

" Turn on man pages
runtime ftplugin/man.vim

" Tab indent is 2 spaces
set tabstop=2

" When indenting use 2 spaces
set shiftwidth=2

" Go back with the tab number
set softtabstop=2

" Indent in a smart way
set autoindent

" Expand tabs to spaces
set expandtab

" Highlight all matches in text when searching
set hlsearch

" Don't unload a buffer when not shown
set hidden

" Fix del key problems
set t_kD=[3~]

" Preserve indentation in wrapped text
set breakindent

" Search incrementally as you type
set incsearch

" Show matches for braces, parenthesis and such
set showmatch

" Ignore case when searching
set ignorecase

" Override ignorecase when pattern has upper case characters
set smartcase

" Set numbers and relative numbers
set number
set relativenumber

" Wrap visually but don't insert line breaks
set wrap
set textwidth=0
set wrapmargin=0

" Turn on mouse
set mouse=nv

" Open vertical split on the right
set splitright

" Open horizontal split on the bottom
set splitbelow

" Make backspace behave normally
set backspace=2

" Change color of omnicompletion
"highlight Pmenu ctermbg=grey gui=bold

" Make omnicompletion long and appear even if one
set completeopt=longest,menuone

" }}}


" NERDtree settings ---{{{

nnoremap <silent> <c-n> :NERDTreeToggle<cr>
let NERDTreeMapHelp = '?'

" }}}

" YouCompleteMe settings ---{{{

let g:ycm_collect_identifiers_from_tags_files = 1

" }}}

" Ultisnips settings ---{{{
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"
" inoremap <expr> <CR> pumvisible() ?
" <C-R>=UltiSnips#ExpandSnippetOrJump()<CR>" :
" \<CR>"
" let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips', $HOME.'/.vim/bundle/sniphpets-common/UltiSnips', $HOME.'/.vim/bundle/sniphpets']

" }}}

" CtrlP settings ---{{{

" CtrlPBuffer on easy click
nnoremap <leader>b :CtrlPBuffer<cr>

" }}}

" Vdebug settings ---{{{

let g:vdebug_options={}
let g:vdebug_options["break_on_open"]=0

" }}}

" let g:phpcomplete_index_composer_command="composer"


" Tag settings ---{{{

" Open tagbar with F8
nnoremap <f8> :TagbarToggle<cr>

" Exclude css, html, js files from generating tag files

" let g:gutentags_ctags_exclude = ['*.css', '*.html', '*js']

" Where to store tag files
" let g:gutentags_cache_dir = '~/.vim/gutentags'

" }}}

" Filetype rules {{{
au Filetype html setlocal ts=4 sw=4 expandtab
au Filetype php setlocal autoindent ts=4 sw=4 expandtab omnifunc=phpcomplete#CompletePHP
au Filetype markdown setlocal nonu nornu
au Filetype javascript setlocal autoindent ts=4 sw=4 expandtab
" }}}

" Ssh config file settings ---{{{
augroup filetype_sshconfig
        autocmd!
        autocmd FileType sshconfig setlocal foldmethod=marker
        autocmd FileType sshconfig :highlight Folded ctermbg=grey ctermfg=black
augroup END
" }}}

" Vimscript file settings ---{{{
augroup filetype_vim
        autocmd!
        autocmd FileType vim setlocal foldmethod=marker
        autocmd FileType vim :highlight Folded ctermbg=grey ctermfg=black
augroup END
" }}}

" Automatic ---{{{

" Write create nonexisting directories
augroup Mkdir
    autocmd!
    autocmd  BufWritePre *  if !isdirectory(expand("<afile>:p:h")) | call mkdir(expand("<afile>:p:h"), "p") | endif
augroup END

" }}}

" Base 16 ---{{{
if filereadable(expand("~/.vimrc_background"))
  set background=dark
  let base16colorspace=256
  set t_Co=256
  source ~/.vimrc_background
endif
" }}}

" Set up airline {{{

set laststatus=2 " Even if no splits
let g:airline_powerline_fonts='fancy'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


let g:airline_mode_map = {
    \ '__' : '-',
    \ 'n'  : 'N',
    \ 'i'  : 'I',
    \ 'R'  : 'R',
    \ 'c'  : 'C',
    \ 'v'  : 'V',
    \ 'V'  : 'V',
    \ '' : 'V',
    \ 's'  : 'S',
    \ 'S'  : 'S',
    \ '' : 'S',
    \ }

let g:airline_theme='base16'

" }}}

" To add to airline ---{{{

"let g:airline_theme = 'solarized'
"
"if !exists('g:airline_symbols')
"  let g:airline_symbols = {}
"endif
"
"let g:airline_left_sep = '⮀'
"let g:airline_left_alt_sep = '⮁'
"let g:airline_right_sep = '⮂'
"let g:airline_right_alt_sep = '⮃'
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = 'RO'
"let g:airline_symbols.linenr = '⭡'
"
"let g:airline_powerline_fonts = 'fancy'
"let g:airline#extensions#hunks#enabled = 0
"let g:airline#extensions#whitespace#enabled = 0
"
"function! AirLineBlaenk()
"  function! Modified()
"    return &modified ? " +" : ''
"  endfunction
"
"  call airline#parts#define_raw('filename', '%<%f')
"  call airline#parts#define_function('modified', 'Modified')
"
"  let g:airline_section_b = airline#section#create_left(['filename'])
"  let g:airline_section_c = airline#section#create([''])
"  let g:airline_section_gutter = airline#section#create(['modified', '%='])
"  let g:airline_section_x = airline#section#create_right([''])
"  let g:airline_section_y = airline#section#create_right(['%c'])
"  let g:airline_section_z = airline#section#create(['branch'])
"endfunction
"
"autocmd Vimenter * call AirLineBlaenk()
"
"let g:airline_theme_patch_func = 'AirLineBlaenkTheme'
"
"" 0,1: gfg, gbg; 2,3: tfg, tbg; 4: styles
"function! AirLineBlaenkTheme(palette)
"  if g:airline_theme == 'solarized'
"    let purple = ['#ffffff', '#5f5faf', 255, 13, '']
"    let violet = ['#5f5faf', '#aeaed7', 13, 61, '']
"    let inv_purple = ['#5f5faf', '#ffffff', 13, 255, '']
"    let purple_violet = ['#5f5faf', '#aeaed7', 61, 13, '']
"
"    " dark = middle
"    " white = focus
"    " light = edges
"
"    let a:palette.ctrlp = {
"      \ 'CtrlPlight' : purple,
"      \ 'CtrlPwhite' : inv_purple,
"      \ }
"
"    let secondary = ['#ffffff', '#657b83', 255, 240, '']
"
"    let magenta = ['#ffffff', '#d33682', 255, 125, '']
"    let blue = ['#ffffff', '#268bd2', 255, 33, '']
"    let green = ['#ffffff', '#859900', 255, 64, '']
"    let red = ['#ffffff', '#dc322f', 255, 160, '']
"    let orange = ['#ffffff', '#cb4b16', 255, 166, '']
"
"    let modes = {
"      \ 'normal': blue,
"      \ 'insert': green,
"      \ 'replace': magenta,
"      \ 'visual': orange
"      \}
"
"    let a:palette.replace = copy(a:palette.insert)
"    let a:palette.replace_modified = a:palette.insert_modified
"
"    for key in ['insert', 'visual', 'normal']
"      " no red on modified
"      let a:palette[key . '_modified'].airline_c[0] = '#657b83'
"      let a:palette[key . '_modified'].airline_c[2] = 11
"
"      for section in ['a', 'b', 'y', 'z']
"        let airline_section = 'airline_' . section
"        if has_key(a:palette[key], airline_section)
"          " white foreground for most components; better contrast imo
"          let a:palette[key][airline_section][0] = '#ffffff'
"          let a:palette[key][airline_section][2] = 255
"        endif
"      endfor
"    endfor
"
"    for key in keys(modes)
"      let a:palette[key].airline_a = modes[key]
"      let a:palette[key].airline_z = modes[key]
"
"      "let a:palette[key . '_modified'].airline_b = ['#002b36', '#93a1a1', 234, 245]
"
"      let a:palette[key].airline_b = secondary
"      let a:palette[key].airline_y = secondary
"    endfor
"
"  endif
"endfunction
"
"let g:airline#extensions#default#section_truncate_width = {
"  \ 'x': 60,
"  \ 'y': 60
"  \ }
"
"let g:airline_mode_map = {
"  \ '__' : '-',
"  \ 'n'  : 'N',
"  \ 'i'  : 'I',
"  \ 'R'  : 'R',
"  \ 'v'  : 'V',
"  \ 'V'  : 'V-L',
"  \ 'c'  : 'C',
"  \ '' : 'V-B',
"  \ 's'  : 'S',
"  \ 'S'  : 'S-L',
"  \ '' : 'S-B',
"  \ }

" }}}
endif
