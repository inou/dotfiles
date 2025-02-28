let $VIM        = expand('~/.config/nvim/')
let $TMP        = expand($VIM . 'tmp/')
let $BUNDLES    = expand($VIM . 'bundle/')
let $NVIM_TUI_ENABLE_TRUE_COLOR = 1

let g:author = 'Maciek Wcislik <maciekwcislik@gmail.com>'

if !isdirectory($TMP)
  call mkdir($TMP, "p")
endif


call plug#begin($BUNDLES)
Plug 'ElmCast/elm-vim', {'for': 'elm'}
"Plug 'Shougo/deoplete.nvim'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'SirVer/ultisnips'
Plug 'airblade/vim-rooter'
Plug 'benekastah/neomake'
Plug 'editorconfig/editorconfig-vim'
Plug 'elixir-lang/vim-elixir', {'for': ['eelixir', 'elixir']}
Plug 'ervandew/supertab'
Plug 'exu/pgsql.vim'
Plug 'gcmt/wildfire.vim'
Plug 'guns/vim-sexp', {'for': 'clojure'}
Plug 'hynek/vim-python-pep8-indent', {'for': 'python'}
Plug 'janko-m/vim-test'
Plug 'jeetsukumaran/vim-filebeagle'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/gv.vim'
Plug 'junegunn/vim-easy-align'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'mhinz/vim-signify'
Plug 'plasticboy/vim-markdown'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'sjl/tslime.vim'
Plug 'slashmili/alchemist.vim'
Plug 'stephpy/vim-yaml'
Plug 'thinca/vim-ft-clojure', {'for': 'clojure'}
Plug 'thinca/vim-qfreplace'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tpope/vim-classpath', {'for': 'clojure'}
Plug 'tpope/vim-endwise', {'for': ['elixir', 'ruby']}
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fireplace', {'for': 'clojure'}
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat', {'for': 'clojure'}
Plug 'tpope/vim-sexp-mappings-for-regular-people', {'for': 'clojure'}
Plug 'tpope/vim-surround'
Plug 'tpope/vim-db'
Plug 'tpope/vim-commentary'
Plug 'venantius/vim-cljfmt', {'for': 'clojure'}
Plug 'vim-erlang/erlang-motions.vim', {'for': 'erlang'}
Plug 'vim-erlang/vim-erlang-compiler', {'for': 'erlang'}
Plug 'vim-erlang/vim-erlang-omnicomplete', {'for': 'erlang'}
Plug 'vim-erlang/vim-erlang-runtime', {'for': 'erlang'}
Plug 'vim-erlang/vim-erlang-tags', {'for': 'erlang'}
Plug 'w0ng/vim-hybrid'
Plug 'wellle/tmux-complete.vim'
Plug 'zhaocai/GoldenView.Vim'
Plug 'tmux-plugins/vim-tmux'
Plug 'jreybert/vimagit', {'branch': 'next'}
Plug 'ludovicchabant/vim-gutentags'
Plug 'rizzatti/dash.vim'
Plug 'honza/vim-snippets'
Plug 'rking/ag.vim'
Plug 'mattn/emmet-vim'
Plug 'ctjhoa/spacevim'
Plug 'joshdick/onedark.vim'
Plug 'Shougo/vinarise.vim'
Plug 'baverman/vial'
Plug 'baverman/vial-http'
Plug 'Olical/vim-enmasse'
Plug 'rust-lang/rust.vim'
Plug 'dracula/vim',{'as':'dracula'}
call plug#end()

"let g:ref_cache_dir = expand($TMP . '/vim_ref_cache/')
"let g:ref_open = 'split'
"let g:ref_use_vimproc = 1
"let g:netrw_winsize = 25
let g:EditorConfig_exclude_patterns = ['fugitive://.*']
let g:SuperTabCrMapping = 1
let g:SuperTabDefaultCompletionType = "context"
"let g:deoplete#auto_complete_start_length = 1
"let g:deoplete#enable_at_startup = 1
let g:erlang_tags_ignore = '_rel'
let g:filebeagle_show_hidden=1
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1
let g:gist_post_private = 1
let g:goldenview__enable_default_mapping = 0
let g:goldenview__enable_at_startup = 0
let g:signify_line_highlight = 0
let g:signify_mapping_next_hunk = ']c'
let g:signify_mapping_prev_hunk = '[c'
let g:signify_skip_filetype = { 'vim': 1, 'diff': 1 }
let g:signify_update_on_focusgained = 1
let g:sql_type_default = 'pgsql'
let g:syntastic_always_populate_loc_list =1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:tslime_ensure_trailing_newlines = 1
let g:vim_markdown_folding_disabled = 1
let g:UltiSnipsSnippetsDir="~/.config/nvim/snippets/"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'
let g:NERDTreeWinSize = 31

let mapleader=","
nnoremap <leader><space> :Commands<CR>
map <leader>x :NERDTreeToggle<CR>

set shell=/usr/local/bin/zsh

syntax on
syntax sync minlines=256
filetype plugin indent on
filetype on

let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1
set background=dark
colorscheme onedark
color dracula


inoremap jk <Esc>

set clipboard=unnamed

vmap > >gv
vmap < <gv
nnore> >>
nnore< <<

nnoremap j gj
nnoremap k gk

set number
set relativenumber

set backspace=indent,eol,start

set ignorecase
set smartcase
set gdefault

set splitright

set expandtab
set shiftwidth=2
set softtabstop=4
set tabstop=4

set textwidth=79
set nowrap

set hlsearch
set incsearch

set more
set cmdheight=3
set hidden
set nosol

set scrolloff=3
set sidescrolloff=3

set synmaxcol=256
set cpoptions+=$

set showmatch
set matchtime=5

set notimeout
set ttimeout
set ttimeoutlen=10

set completeopt=longest,menuone
set ofu=syntaxcomplete#Complete

set fillchars=stl:\ ,stlnc:۰,vert:\ ,fold:\ ,diff:\ 

set statusline=
set statusline +=\ \ ↳\ \ %<%t%* " full path
set statusline +=%m%*     " modified flag
set statusline +=\ %{StatuslineTrailingSpaceWarning()}%*
set statusline +=%=%*     " separator
set statusline +=%3v\ %*  " virtual column number
set statusline +=%#search#%{fugitive#head()}%*
set statusline +=\ %y%*   " file type

autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd InsertLeave,BufWritePost * unlet! b:statusline_trailing_space_warning


function! StatuslineTrailingSpaceWarning()
  if !exists("b:statusline_trailing_space_warning")
    if search('\s\+$', 'nw') != 0
      let b:statusline_trailing_space_warning = '😡 '
    else
      let b:statusline_trailing_space_warning = ''
    endif
  endif
  return b:statusline_trailing_space_warning
endfunction

set wildmenu
set wildignorecase
set wildmode=list:full
set wildignore+=.hg,.git,.svn,rel
set wildignore+=*.aux,*.out,*.toc
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest
set wildignore+=*.spl
set wildignore+=*.DS_Store
set wildignore+=*.luac
set wildignore+=migrations
set wildignore+=*.pyc
set wildignore+=*.beam
set wildignore+=_build
set wildignore+=deps

set colorcolumn=80

nnoremap H gT
nnoremap L gt

cnoremap <C-a> <home>
cnoremap <C-e> <end>
cnoremap <C-f> <right>
cnoremap <C-b> <left>

nnoremap # #<C-o>

nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-l> <C-w>l

nnoremap <leader>bd :bdelete<CR>
nnoremap <leader>bD :call delete(expand('%'))<CR>:bdelete!<CR>

nnoremap <silent> <leader>\| <C-W>v
nnoremap <silent> <leader>- <C-W>s

nnoremap <leader>r :%s/\<<C-r><C-w>\>/

nnoremap <silent> <leader>fs :update<CR>

nnoremap <Backspace> <C-^>

nnoremap <silent> // :nohlsearch<CR>

nnoremap <leader>fed :e $MYVIMRC<CR>
nnoremap <leader>feR :source %<CR>

nnoremap <leader>qa :qa<CR>
nnoremap <leader>qA :qa!<CR>

nnoremap ? :echo
            \ "hi<" . synIDattr(synID(line("."),col("."),1),"name")
            \ . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name")
            \ . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name")
            \ . ">"<CR>

nnoremap <leader>? :echo expand("%")<CR>


nnoremap gcd :cd %:p:h<CR>:pwd<CR>

function! Preserve(command)
    let _s=@/
    let l = line(".")
    let c = col(".")
    execute a:command
    let @/=_s
    call cursor(l, c)
endfunction

nmap <leader>i :call Preserve("normal gg=G")<CR>
nmap <leader>C :call Preserve("%s/\\s\\+$//e")<CR>

set backup
set backupdir=$TMP
set history=5000
set noswapfile
set undodir=$TMP
set undofile
set undolevels=5000

set laststatus=2

set list
set listchars=
set lcs+=tab:▸\
set lcs+=trail:▫
set lcs+=extends:›
set lcs+=precedes:‹
set lcs+=nbsp:·
set lcs+=eol:¬

nnoremap <leader>o <C-o>
nnoremap <leader>i <C-i>

nnoremap <leader>gs :Gstatus<CR>

nnoremap <leader>gr :!git rebase -i --autosquash HEAD~
nnoremap <leader>gfx :Gcommit %<CR>ifixup!<space>
nnoremap <leader>gd :Gdiff<CR>

augroup defaults
    autocmd!
    autocmd VimResized * :wincmd =

    autocmd BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \   exe "normal g`\"" |
                \ endif
augroup END

augroup make
    autocmd!
    autocmd FileType make set modelines=0
augroup END

augroup erlang
    autocmd!
    let g:syntastic_erlang_checkers=['']
    function! s:erlang_settings()
        set sua+=.erl
        set sua+=.hrl
        let erlp=substitute(system("command -v erl"), "/bin/erl", "/lib/**/src/", "")
        exe ":set path+="."src/,deps/**/src/,apps/**/src/,**/include/," . erlp
    endfunction
    autocmd FileType erlang call s:erlang_settings()
    autocmd BufNewFile,BufRead *.app.src,rebar.config,sys.config setl filetype=erlang
    nnoremap <leader>ea vip:EasyAlign /::/ dr<CR>
augroup END

augroup spell
    autocmd!
    autocmd FileType gitcommit setlocal spell
    autocmd FileType markdown setlocal spell
augroup END

augroup git
    autocmd!
    autocmd BufReadPost fugitive://* set bufhidden=delete
    autocmd BufReadPost fugitive://*
                \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
                \   nnoremap <buffer> .. :edit %:h<CR> |
                \ endif
    autocmd FileType gitrebase nnoremap <buffer> <leader>r ^cwreword<ESC>
    autocmd FileType gitrebase nnoremap <buffer> <leader>s ^cwsquash<ESC>
    autocmd FileType gitrebase nnoremap <buffer> <leader>f ^cwfixup<ESC>
    autocmd FileType gitcommit nmap <buffer> j <C-n>
    autocmd FileType gitcommit nmap <buffer> k <C-p>
augroup END

augroup elixir
    autocmd!
    let g:syntastic_enable_elixir_checker = 0
    autocmd FileType elixir setlocal tags+=/Users/inout/dev/elixir/tags

    autocmd FileType eelixir setlocal textwidth=0
    autocmd FileType eelixir setlocal wrapmargin=0

    let g:neomake_serialize = 1
    let g:neomake_serialize_abort_on_error = 1

    autocmd BufWritePost *.ex Neomake
    autocmd BufWritePost *.exs Neomake

    let g:neomake_elixir_test_maker = {
            \ 'exe': 'elixirc',
            \ 'args': [
            \ '--ignore-module-conflict', '--warning-as-errors',
            \ '--app', 'mix', '--app', 'ex_unit',
            \ '-o', '$TMPDIR', '%:p'
            \],
            \ 'errorformat':
                \ '%Z       %f:%l,' .
                \ '%C     ** %m,' .
                \ '%C     %[%^:]%#:%.%#,' .
                \ '%C     %m,' .
                \ '%E  %n)%.%#'
            \ }

    let test#strategy = 'tslime'
    nnoremap <leader>tf :TestFile<CR>
    nnoremap <leader>tt :TestNearest<CR>
    nnoremap <leader>tl :TestLast<CR>
    nnoremap <leader>tv :TestVisit<CR>
augroup END

augroup ruby
    autocmd!
    autocmd BufWritePost *.rb Neomake
    let g:syntastic_eruby_ruby_quiet_messages =
        \ {'regex': 'possibly useless use of a variable in void context'}
augroup END

augroup elm
    autocmd!
    au FileType elm nmap <leader>em <Plug>(elm-make)
    au FileType elm nmap <leader>eM <Plug>(elm-make-main)
    au FileType elm nmap <leader>et <Plug>(elm-test)
    au FileType elm nmap <leader>er <Plug>(elm-repl)
    au FileType elm nmap <leader>ee <Plug>(elm-error-detail)
    au FileType elm nmap <leader>ed <Plug>(elm-show-docs)
    au FileType elm nmap <leader>ebd <Plug>(elm-browse-docs)
    let g:elm_jump_to_error = 1
    let g:elm_make_output_file = "elm.js"
    let g:elm_make_show_warnings = 0
    let g:elm_browser_command = ""
    let g:elm_detailed_complete = 0
    let g:elm_format_autosave = 1
    let g:elm_syntastic_show_warnings = 1
augroup END

augroup autoroot
    autocmd!
    autocmd BufEnter *.py,*.erl,*.hrl,*.js,*.json,*.clj :Rooter
augroup END

augroup vagrant
    autocmd!
    au BufRead,BufNewFile Vagrantfile set filetype=ruby
augroup END

augroup html
    autocmd!
    autocmd FileType html setlocal textwidth=0
    autocmd FileType html setlocal wrapmargin=0
augroup END

augroup python
    autocmd!
    let g:syntastic_python_checkers=['pep8', 'pyflakes', 'python']
augroup END

set mouse=a

au FocusLost * :silent! wall

imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

nmap ; :Buffers<CR>
nnoremap <leader>pf :FZF<CR>
nnoremap <leader>pt :Tags<CR>
nnoremap <leader>bc :BCommits<CR>

nnoremap <leader>grd :terminal git rebase -i develop<CR>
nnoremap <leader>grm :terminal git rebase -i master<CR>
nnoremap <leader>M :MagitOnly<CR>

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

nnoremap <C-P> @:

set diffopt+=foldcolumn:0

fu! GenerateUUID()

python << EOF
import uuid
import vim

# output a uuid to the vim variable for insertion below
vim.command("let generatedUUID = \"%s\"" % str(uuid.uuid4()))

EOF

" insert the python generated uuid into the current cursor's position
:execute "normal i" . generatedUUID . ""

endfunction

"initialize the generateUUID function here and map it to a local command
noremap <leader>4 :call GenerateUUID()<CR>
