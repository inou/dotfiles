let $VIM        = expand('~/.nvim/')
let $TMP        = expand($VIM . 'tmp/')
let $BUNDLES    = expand($VIM . 'bundle/')

let g:author = 'Adam Rutkowski <hq@mtod.org>'

if !isdirectory($TMP)
    call mkdir($TMP, "p")
endif

call plug#begin($BUNDLES)
Plug 'Shougo/junkfile.vim'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc', {'do': 'make -f make_mac.mak'}
Plug 'airblade/vim-rooter'
Plug 'benekastah/neomake'
Plug 'bling/vim-airline'
Plug 'editorconfig/editorconfig-vim'
Plug 'elixir-lang/vim-elixir', {'for': 'elixir'}
Plug 'ervandew/supertab'
Plug 'fishcakez/vim-mix', {'for': 'elixir'}
Plug 'flazz/vim-colorschemes'
Plug 'gcmt/wildfire.vim'
Plug 'godlygeek/tabular'
Plug 'guns/vim-sexp', {'for': 'clojure'}
Plug 'hynek/vim-python-pep8-indent', {'for': 'python'}
Plug 'jeetsukumaran/vim-filebeagle'
Plug 'kmnk/vim-unite-giti'
Plug 'lambdatoast/elm.vim', {'for': 'elm'}
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'mhinz/vim-signify'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'sjl/tslime.vim'
Plug 'thinca/vim-ft-clojure', {'for': 'clojure'}
Plug 'thinca/vim-qfreplace'
Plug 'thinca/vim-ref', {'for': ['erlang', 'elixir']}
Plug 'tpope/vim-classpath', {'for': 'clojure'}
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise', {'for': 'elixir'}
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fireplace', {'for': 'clojure'}
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat', {'for': 'clojure'}
Plug 'tpope/vim-sexp-mappings-for-regular-people', {'for': 'clojure'}
Plug 'tpope/vim-surround', {'for': 'clojure'}
Plug 'venantius/vim-cljfmt', {'for': 'clojure'}
Plug 'vim-erlang/erlang-motions.vim', {'for': 'erlang'}
Plug 'vim-erlang/vim-erlang-compiler', {'for': 'erlang'}
Plug 'vim-erlang/vim-erlang-omnicomplete', {'for': 'erlang'}
Plug 'vim-erlang/vim-erlang-runtime', {'for': 'erlang'}
Plug 'vim-erlang/vim-erlang-tags', {'for': 'erlang'}
Plug 'wellle/tmux-complete.vim'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'zhaocai/GoldenView.Vim'
call plug#end()

let mapleader=" "
nnoremap <leader><space> :
set shell=/bin/zsh

set background=dark
colorscheme Tomorrow-Night
" https://github.com/neovim/neovim/issues/2140
" https://github.com/neovim/neovim/issues/793
au VimEnter * :colorscheme Tomorrow-Night

syntax on
syntax sync minlines=256
filetype plugin indent on
filetype on

inoremap jk <Esc>

set clipboard=unnamed

vmap > >gv
vmap < <gv
nnore> >>
nnore< <<

nnoremap j gj
nnoremap k gk

nnoremap <leader>: :Unite command function -default-action=edit<CR>
vnoremap <leader>: :Unite command function -default-action=edit<CR>

"set cryptmethod=blowfish
set relativenumber

set backspace=indent,eol,start

set ignorecase
set smartcase
set gdefault

set splitright

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=8

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

set fillchars=vert:\ ,fold:\ ,diff:\ ,

set wildmenu
set wildmode=full
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

nnoremap 0 ^
nnoremap ^ 0

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

nnoremap <silent> <C-w>\| <C-W>v
nnoremap <silent> <C-w>- <C-W>s

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

let g:filebeagle_show_hidden=1

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

silent! execute '!find '. $TMP .' -type f -mtime +60 -exec rm {} \;'
silent! execute '!mkdir '. $TMP .'> /dev/null 2>&1'

function! ShortCwd()
    return substitute(getcwd(), $HOME, "~", "")
endfunction

set laststatus=2
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_y = '%{ShortCwd()}'
"let g:airline_theme='compot'

set list
set listchars=
set lcs+=tab:▸\ 
set lcs+=trail:▫
set lcs+=extends:›
set lcs+=precedes:‹
set lcs+=nbsp:·
set lcs+=eol:¬

let g:unite_enable_start_insert = 1
let g:unite_winheight = 10
let g:unite_split_rule = 'botright'

function! s:unite_settings()
    imap <buffer> jj <Plug>(unite_insert_leave)
    imap <buffer> jk <Plug>(unite_insert_leave)
    imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
    nnoremap <buffer> <C-j> <C-w>j
    nnoremap <buffer> <C-k> <C-w>k
    imap <buffer> <C-j> <Esc><C-w>j
    imap <buffer> <C-k> <Esc><C-w>k
endfunction

" Using ag as recursive command.
let g:unite_source_rec_async_command =
            \ ['ag', '--follow', '--nocolor', '--nogroup',
            \  '--hidden', '-g', '']
nnoremap <Tab> :<C-u>Unite buffer file_rec/neovim -no-split -hide-source-names<CR>

nnoremap <leader>o <C-o>
nnoremap <leader>i <C-i>

nnoremap <leader>a :<C-u>Unite grep -default-action=persist_open
            \ -no-start-insert -no-empty -truncate -auto-resize<CR>
nnoremap <leader>A :<C-u>execute
            \ 'Unite grep:.::' . expand("<cword>") . '
            \ -default-action=above -auto-preview'<CR>

call unite#custom#profile('default', 'context', {
            \   'prompt_direction': 'top'
            \ })

let g:ref_use_vimproc = 1
let g:ref_open = 'split'
let g:ref_cache_dir = expand($TMP . '/vim_ref_cache/')
nno <leader>K :<C-u>Unite ref/erlang
            \ -vertical -default-action=split<CR>
let g:neosnippet#snippets_directory = expand($VIM . 'snippets')
let g:neosnippet#disable_runtime_snippets = {
            \   'erlang' : 1
            \ }
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

nnoremap <leader>gs :Gstatus<CR>

let g:erlang_tags_ignore = '_rel'

nnoremap <leader>gr :!git rebase -i --autosquash HEAD~
nnoremap <leader>gfx :Gcommit %<CR>ifixup!<space>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gl :Unite giti/log -default-action=diff<CR>
nnoremap <leader>gb :Unite giti/branch_all<CR>

let g:gist_post_private = 1
let g:gist_detect_filetype = 1
let g:gist_clip_command = 'pbcopy'
let g:gist_open_browser_after_post = 1

let g:signify_skip_filetype = { 'vim': 1, 'diff': 1 }
let g:signify_mapping_next_hunk = ']c'
let g:signify_mapping_prev_hunk = '[c'
let g:signify_update_on_focusgained = 1
let g:signify_line_highlight = 0

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

augroup unite
    autocmd!
    autocmd FileType unite call s:unite_settings()
augroup END

augroup erlang
    autocmd!
    function! s:erlang_settings()
        set sua+=.erl
        set sua+=.hrl
        let erlp=substitute(system("command -v erl"), "/bin/erl", "/lib/**/src/", "")
        exe ":set path+="."src/,deps/**/src/,apps/**/src/,**/include/," . erlp
    endfunction
    autocmd FileType erlang call s:erlang_settings()
    autocmd BufNewFile,BufRead *.app.src,rebar.config,sys.config setl filetype=erlang
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

augroup clj
    autocmd!
    autocmd FileType clojure setlocal shiftwidth=2
    autocmd FileType clojure nnoremap <C-c><C-r> :Require<CR>
    autocmd FileType clojure nnoremap <C-c><C-e> :Eval<CR>
    autocmd FileType clojure nnoremap <C-c><C-p> :Eval!<CR>

    let g:wildfire_objects = ["i'", "a'", 'i"', 'a"', "i)", "a)", "i]", "a]", "i}", "ip", "it"]

    function! ClojureContext()
        let curline = getline('.')
        let cnum = col('.')
        let synname = synIDattr(synID(line('.'), cnum - 1, 1), 'name')
        if curline =~ '(\S\+\%' . cnum . 'c' && synname !~ '\(String\|Comment\)'
            return "\<c-x>\<c-o>"
        endif
    endfunction

    autocmd FileType clojure let b:SuperTabCompletionContexts = ['ClojureContext']
augroup END

augroup elixir
    autocmd!
    autocmd FileType elixir
                \ if &omnifunc != '' |
                \   call SuperTabSetDefaultCompletionType("<c-x><c-u>") |
                \   call SuperTabChain(&omnifunc, "<c-n>") |
                \ endif
    autocmd FileType elixir nnoremap <leader>mc :Mix compile<CR>
    autocmd FileType elixir nnoremap <leader>mt :Mix test<CR>
    autocmd FileType elixir nnoremap <leader>ms :Dispatch iex -S mix<CR>
    autocmd FileType elixir setlocal tags+=/Users/hq1/dev/elixir/tags

    let g:neomake_serialize = 1
    let g:neomake_serialize_abort_on_error = 1
    let g:neomake_elixir_enabled_makers = ['mix']
    let g:neomake_elixir_mix_maker = {
                \ 'args': ['compile'],
                \ 'errorformat':
                \ '** %s %f:%l: %m,' .
                \ '%f:%l: warning: %m'
                \ }

    autocmd BufWritePost *.ex Neomake
    autocmd BufWritePost *.exs Neomake

augroup END

augroup autoroot
    autocmd!
    autocmd BufEnter *.py,*.erl,*.hrl,*.js,*.json,*.clj :Rooter
augroup END

augroup vagrant
    au!
    au BufRead,BufNewFile Vagrantfile set filetype=ruby
augroup END

let g:syntastic_auto_loc_list = 1
let g:syntastic_python_checkers=['pep8', 'pyflakes', 'python']
let g:syntastic_erlang_checkers=['']
let g:syntastic_enable_elixir_checker = 0

let g:tslime_ensure_trailing_newlines=2
set mouse=a

let g:SuperTabDefaultCompletionType = "context"

let g:EditorConfig_exclude_patterns = ['fugitive://.*']

au FocusLost * :silent! wall

let g:goldenview__enable_default_mapping = 0