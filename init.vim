source ~/.config/nvim/plugins.vim

" Section General {{{

" Abbreviations
"abbr funciton function
"abbr teh the
"abbr tempalte template
"abbr fitler filter
"abbr cosnt const

set nocompatible            " not compatible with vi
set autoread                " detect when a file is changed

set history=1000            " change history to 1000
set textwidth=120
"
"set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
"set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

"let g:python_host_prog = '/usr/local/bin/python'
"let g:python3_host_prog = '/usr/local/bin/python3'

"if (has('nvim'))
	"" show results of substition as they're happening
	"" but don't open a split
	"set inccommand=nosplit
"endif

" }}}

" Section User Interface {{{

" switch cursor to line when in insert mode, and block when not
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
  \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
  \,sm:block-blinkwait175-blinkoff150-blinkon175

"if &term =~ '256color'
    " disable background color erase
    "set t_ut=
"endif

" enable 24 bit color support if supported
"if (has('mac') && empty($TMUX) && has("termguicolors"))
    "set termguicolors
"endif

"let g:onedark_termcolors=16
"let g:onedark_terminal_italics=1
"
"set cursorline
"set cursorcolumn

syntax on
set background=dark
"set termguicolors " Enable true color support
set t_Co=256                " Explicitly tell vim that the terminal supports 256 colors"
"colorscheme onedark         " Set the colorscheme
colorscheme phd
"colorscheme gruvbox
"colorscheme molotov
"colorscheme dracula
"colorscheme base16-atelier-forest

" make the highlighting of tabs and other non-text less annoying
"highlight SpecialKey ctermbg=none ctermfg=8
"highlight NonText ctermbg=none ctermfg=8

" make comments and HTML attributes italic
"highlight Comment cterm=italic
"highlight htmlArg cterm=italic
"highlight xmlAttrib cterm=italic
"highlight Normal ctermbg=none

set number                  " show line numbers
set relativenumber          " show relative line numbers

"set wrap                    " turn on line wrapping
"set wrapmargin=8            " wrap lines when coming within n characters from side
"set linebreak               " set soft wrapping
"set showbreak=…             " show ellipsis at breaking

set autoindent              " automatically set indent of new line
set smartindent

" toggle invisible characters
"set list
"set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
"set showbreak=↪

" highlight conflicts
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" make backspace behave in a sane manner
"set backspace=indent,eol,start

" Tab control
set noexpandtab             " insert tabs rather than spaces for <Tab>
set smarttab                " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4               " the visible width of tabs
set softtabstop=4           " edit as if the tabs are 4 characters wide
set shiftwidth=4            " number of spaces to use for indent and unindent
set shiftround              " round indent to a multiple of 'shiftwidth'
set completeopt+=longest

" code folding settings
"set foldmethod=syntax       " fold based on indent
"set foldnestmax=10          " deepest fold is 10 levels
"set nofoldenable            " don't fold by default
"set foldlevel=1

set clipboard=unnamed

set ttyfast                 " faster redrawing
set diffopt+=vertical
set laststatus=2            " show the satus line all the time
"set so=7                    " set 7 lines to the cursors - when moving vertical
set wildmenu                " enhanced command line completion
set hidden                  " current buffer can be put into background
"set showcmd                 " show incomplete commands
"set noshowmode              " don't show which mode disabled for PowerLine
"set wildmode=list:longest   " complete files like a shell
set scrolloff=3             " lines of text around cursor
set shell=$SHELL
"set cmdheight=1             " command bar height
set title                   " set terminal title

" Searching
set ignorecase              " case insensitive searching
set smartcase               " case-sensitive if expresson contains a capital letter
set hlsearch                " highlight search results
set incsearch               " set incremental search, like modern browsers
set nolazyredraw            " don't redraw while executing macros

set magic                   " Set magic on, for regex

set showmatch               " show matching braces
set mat=2                   " how many tenths of a second to blink

" error bells
"set noerrorbells
"set visualbell
"set t_vb=
"set tm=500

"if has('mouse')
    "set mouse=a
	" set ttymouse=xterm2
"endif
set mouse=h
" }}}

" Section Mappings {{{

" set a map leader for more key combos
let mapleader = ';'

" remap esc
inoremap jk <esc>

" wipout buffer
nmap <silent> <leader>b :bw<cr>

" shortcut to save
"nmap <leader>, :w<cr>

" set paste toggle
set pastetoggle=<leader>v

" toggle paste mode
" map <leader>v :set paste!<cr>

" edit ~/.config/nvim/init.vim
map <leader>ev :e! ~/.config/nvim/init.vim<cr>
" edit gitconfig
map <leader>eg :e! ~/.gitconfig<cr>

" clear highlighted search
noremap <space> :set hlsearch! hlsearch?<cr>

" activate spell-checking alternatives
nmap ;s :set invspell spelllang=en<cr>

" markdown to html
nmap <leader>md :%!markdown --html4tags <cr>

" remove extra whitespace
nmap <leader><space> :%s/\s\+$<cr>
nmap <leader><space><space> :%s/\n\{2,}/\r\r/g<cr>


nmap <leader>l :set list!<cr>

" Textmate style indentation
vmap <leader>[ <gv
vmap <leader>] >gv
nmap <leader>[ <<
nmap <leader>] >>

" switch between current and last buffer
nmap <leader>. <c-^>

" enable . command in visual mode
vnoremap . :normal .<cr>

"map <silent> <C-h> :call functions#WinMove('h')<cr>
"map <silent> <C-j> :call functions#WinMove('j')<cr>
"map <silent> <C-k> :call functions#WinMove('k')<cr>
"map <silent> <C-l> :call functions#WinMove('l')<cr>

"map <leader>wc :wincmd q<cr>

" toggle cursor line
"nnoremap <leader>i :set cursorline!<cr>

" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" moving up and down work as you would expect
nnoremap <silent> j gj
nnoremap <silent> k gk
nnoremap <silent> ^ g^
nnoremap <silent> $ g$

" search for word under the cursor
nnoremap <leader>/ "fyiw :/<c-r>f<cr>

" inoremap <tab> <c-r>=Smart_TabComplete()<CR>

map <leader>r :call RunCustomCommand()<cr>
" map <leader>s :call SetCustomCommand()<cr>
let g:silent_custom_command = 0

" helpers for dealing with other people's code
nmap \t :set ts=4 sts=4 sw=4 noet<cr>
nmap \s :set ts=4 sts=4 sw=4 et<cr>

nnoremap <silent> <leader>u :call functions#HtmlUnEscape()<cr>

" }}}

" Section AutoGroups {{{
" file type specific settings
"augroup configgroup
    "autocmd!

    "" automatically resize panes on resize
    "autocmd VimResized * exe 'normal! \<c-w>='
    "autocmd BufWritePost .vimrc,.vimrc.local,init.vim source %
    "autocmd BufWritePost .vimrc.local source %
    "" save all files on focus lost, ignoring warnings about untitled buffers
    "autocmd FocusLost * silent! wa

    "" make quickfix windows take all the lower section of the screen
    "" when there are multiple windows open
    "autocmd FileType qf wincmd J
    "autocmd FileType qf nmap q :q<cr>

    "autocmd BufNewFile,BufReadPost *.md set filetype=markdown
    "let g:markdown_fenced_languages = ['css', 'javascript', 'js=javascript', 'json=javascript', 'stylus', 'html']

    "" autocmd! BufEnter * call functions#ApplyLocalSettings(expand('<afile>:p:h'))

    "autocmd BufNewFile,BufRead,BufWrite *.md syntax match Comment /\%^---\_.\{-}---$/

    "autocmd! BufWritePost * Neomake
"augroup END

" }}}

" Section Plugins {{{

" FZF
"""""""""""""""""""""""""""""""""""""

" Toggle NERDTree
nmap <silent> <leader>fl :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
nmap <silent> <leader>y :NERDTreeFind<cr>

let NERDTreeShowHidden=1
"let NERDTreeWinSize=45
let NERDTreeWinPos="right"
let NERDTreeDirArrowExpandable = '▷'
let NERDTreeDirArrowCollapsible = '▼'

let g:fzf_layout = { 'down': '~25%' }

if isdirectory(".git")
    " if in a git project, use :GFiles
    nmap <silent> <leader>t :GFiles<cr>
else
    " otherwise, use :FZF
    nmap <silent> <leader>t :FZF<cr>
endif

nmap <silent> <leader>r :Buffers<cr>
nmap <silent> <leader>e :FZF<cr>
"nnoremap <C-p> :FZF<CR>
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

nnoremap <silent> <Leader>C :call fzf#run({
\   'source':
\     map(split(globpath(&rtp, "colors/*.vim"), "\n"),
\         "substitute(fnamemodify(v:val, ':t'), '\\..\\{-}$', '', '')"),
\   'sink':    'colo',
\   'options': '+m',
\   'left':    30
\ })<CR>

command! FZFMru call fzf#run({
\  'source':  v:oldfiles,
\  'sink':    'e',
\  'options': '-m -x +s',
\  'down':    '40%'})

command! -bang -nargs=* Find call fzf#vim#grep(
	\ 'rg --column --line-number --no-heading --follow --color=always '.<q-args>, 1,
	\ <bang>0 ? fzf#vim#with_preview('up:60%') : fzf#vim#with_preview('right:50%:hidden', '?'), <bang>0)


" Fugitive Shortcuts
"""""""""""""""""""""""""""""""""""""
nmap <silent> <leader>gs :Gstatus<cr>
nmap <leader>ge :Gedit<cr>
nmap <silent><leader>gr :Gread<cr>
nmap <silent><leader>gb :Gblame<cr>

nmap <leader>m :MarkedOpen!<cr>
nmap <leader>mq :MarkedQuit<cr>
nmap <leader>* *<c-o>:%s///gn<cr>

let g:neomake_javascript_jshint_maker = {
    \ 'args': ['--verbose'],
    \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
\ }

let g:neomake_typescript_tsc_maker = {
    \ 'args': ['-m', 'commonjs', '--noEmit' ],
    \ 'append_file': 0,
    \ 'errorformat':
        \ '%E%f %#(%l\,%c): error %m,' .
        \ '%E%f %#(%l\,%c): %m,' .
        \ '%Eerror %m,' .
        \ '%C%\s%\+%m'
\ }

" airline options
"let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='badcat'
"let g:airline#extensions#tagbar#enabled = 1 " enable airline tagbar
let g:airline#extensions#tabline#enabled = 1 " enable airline tabline
let g:airline#extensions#tabline#tab_min_count = 2 " only show tabline if tabs are being used (more than 1 tab open)
let g:airline#extensions#tabline#show_buffers = 0 " do not show open buffers in tabline
let g:airline#extensions#tabline#show_splits = 0
let b:airline_whitespace_disabled = 1

" don't hide quotes in json files
let g:vim_json_syntax_conceal = 0

let g:SuperTabCrMapping = 0

" }}}

" vim:foldmethod=marker:foldlevel=0

" High light unwanted spaces in end of line
highlight ExtraWhitespace ctermbg=darkred guibg=darkcyan
autocmd BufEnter * if &ft != 'help' | match ExtraWhitespace /\s\+$/ | endif
autocmd BufEnter * if &ft == 'help' | match none /\s\+$/ | endif

"line number color
highlight LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE gui=bold guifg=DarkSlateGray guibg=NONE
highlight CursorLineNr cterm=bold ctermfg=Green ctermbg=NONE gui=bold guifg=Green guibg=NONE

"Pmenu highlight
highlight Pmenu ctermfg=28 ctermbg=00 guifg=#005f87 guibg=#EEE8D5
highlight PmenuSel cterm=bold ctermfg=76 ctermbg=243 guifg=#AFD700 guibg=#106900

"vimux
let g:VimuxOrientation = "h"
let g:VimuxHeight = "40"

" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>

" Close vim tmux runner opened by VimuxRunCommand
map <Leader>vq :VimuxCloseRunner<CR>

" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>

"other
nmap <Leader>nh :nohl<CR>
" quit current window
nmap <Leader>q :q<CR>
" save
nmap <Leader>w :w<CR>
" quit and save
nmap <Leader>WQ :wa<CR>:q<CR>
" quit without saving
nmap <Leader>Q :qa!<CR>

"silver searcher
nnoremap <Leader>ag :Ag -U -w <cword><CR>

" visual mode highlight
hi Visual term=reverse cterm=reverse guifg=DarkSlateGray

let $VIMRUNTIME='/home/myhome/.config/nvim/'
let $VIMRUNPATH='/home/myhome/.config/nvim/'

" jump to l window
nnoremap <Leader>lw <C-W>l
" jump to h window
nnoremap <Leader>hw <C-W>h
" jump to k window
nnoremap <Leader>kw <C-W>k
" jump to j window
nnoremap <Leader>jw <C-W>j

"vimwkik
let g:vimwiki_map_prefix = '<Leader>o'
let g:vimwiki_hl_headers = 1

" yank
vnoremap <Leader>y "+y
" post
nmap <Leader>p "+p

"insert a new-line and return to nurmal mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

"tagbar
let tagbar_left=1
nnoremap <Leader>tl :TagbarToggle<CR>
let tagbar_width=32
let g:tagbar_compact=1
let g:tagbar_type_cpp = {
     \ 'ctagstype' : 'c++',
     \ 'kinds'     : [
         \ 'd:macros:1',
         \ 'g:enums',
         \ 't:typedefs:0:0',
         \ 'e:enumerators:0:0',
         \ 'n:namespaces',
         \ 'c:classes',
         \ 's:structs',
         \ 'u:unions',
         \ 'f:functions',
         \ 'm:members:0:0',
         \ 'v:global:0:0',
         \ 'x:external:0:0',
         \ 'l:local:0:0'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }

"cscope quickfix
"set cscopequickfix=s-,c-,d-,i-,t-,e-
let g:quickr_cscope_keymaps = 0
let g:quickr_cscope_use_qf_g = 1
let g:quickr_preview_keymaps = 0
nmap <Leader>js <plug>(quickr_cscope_symbols)
nmap <Leader>jg <plug>(quickr_cscope_global)
nmap <Leader>jc <plug>(quickr_cscope_callers)
nmap <Leader>jf <plug>(quickr_cscope_files)
nmap <Leader>ji <plug>(quickr_cscope_includes)
nmap <Leader>jt <plug>(quickr_cscope_text)
nmap <Leader>je <plug>(quickr_cscope_egrep)
nmap <Leader>jd <plug>(quickr_cscope_functions)

" In the quickfix window, <CR> is used to jump to the error under the
" cursor, so undefine the mapping there.
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>

