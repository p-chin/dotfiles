" tab indent
set tabstop=4
set shiftwidth=4
set softtabstop=0
set expandtab

set laststatus=2

"/////////////
" key mappings
"/////////////
imap <c-j> <esc>
inoremap <C-h> =>
inoremap <C-l> ->
" syntax check
autocmd FileType perl :map <C-n> <ESC>:!perl -cw %<CR>
autocmd FileType perl :map <C-e> <ESC>:!perl %<CR>
autocmd FileType ruby :map <C-n> <ESC>:!ruby -cW %<CR>
autocmd FileType ruby :map <C-e> <ESC>:!ruby %<CR>

" " setting for cursor
nnoremap j gj
nnoremap k gk

" " column number
set number

" " encoding
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932
autocmd FileType gitcommit setl fileencoding=utf8

" " 256 colors
set t_Co=256

" " background
set background=dark

" " colorscheme
colorscheme desert

" " syntax
if &t_Co > 1
syntax enable
endif

"シンタックスハイライト 拡張子に応じてPerlやHtmlを識別する
autocmd BufNewFile,BufRead *.pl     set filetype=perl fenc=utf-8
autocmd BufNewFile,BufRead *.pm     set filetype=perl fenc=utf-8
autocmd BufNewFile,BufRead *.psgi   set filetype=perl fenc=utf-8
autocmd BufNewFile,BufRead *.t      set filetype=perl fenc=utf-8
autocmd BufNewFile,BufRead *.mt     set filetype=html fenc=utf-8
autocmd BufNewFile,BufRead *.tx     set filetype=html fenc=utf-8

"gf
map gf <C-w>gf
autocmd FileType perl set isfname-=- isfname-=/ isfname-=+

" csファイルの文字コード自動変換
autocmd BufNewFile,BufRead *.cs set fenc=utf-8 bomb
autocmd BufNewFile,BufRead *.cs set noexpandtab
autocmd BufNewFile,BufRead *.cs set fileformat=dos


" NeoBundle(http://qiita.com/items/1c32d3f24cc2919203eb)
 ""vi上から、:NeoBundleInstallで.vimrcのNeoBundleで指定されているリポジトリのプラグインをインストールできる。
 ""プラグインを削除したい場合は、vimrc上からNeoBundleの記述を消して:NeoBundleCleanでできる。
set nocompatible   " be iMproved
filetype off
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif
" originalrepos on github
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc', { 'build' : {
    \ 'windows' : 'make -f make_mingw32.mak',
    \ 'cygwin' : 'make -f make_cygwin.mak',
    \ 'mac' : 'make -f make_mac.mak',
    \ 'unix' : 'make -f make_unix.mak',
    \ },
    \ }
NeoBundle 'VimClojure'
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplcache'
"NeoBundle 'Shougo/neosnippet'
NeoBundle 'jpalardy/vim-slime'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'vim-perl/vim-perl'
NeoBundle 'vim-jp/vimdoc-ja'
NeoBundle 'thinca/vim-ref'
"NeoBundle 'thinca/vim-quickrun'
NeoBundle 'thinca/vim-localrc'
NeoBundle 'thinca/vim-quickrun.git'
""NeoBundle 'https://bitbucket.org/kovisoft/slimv'

" ////////////////////////
" for neocomplcache config
" ////////////////////////
" Disable AutoComplPop
let g:acp_enableAtStartup = 0
" Enable NeoComplCache
let g:NeoComplCache_EnableAtStartup = 1
" use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 0
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
"let g:neocomplcache_dictionary_filetype_lists = {
"    \ 'default' : '',
"    \ 'vimshell' : $HOME.'/.vimshell_hist',
"    \ 'scheme' : $HOME.'/.gosh_completions'
"        \ }

" Define keyword.
"if !exists('g:neocomplcache_keyword_patterns')
"    let g:neocomplcache_keyword_patterns = {}
"endif
"let g:neocomplcache_keyword_patterns['default'] = '\h\w*'


filetype plugin indent on  " required!
filetype indent on
syntax on

" 行末スペース
highlight WhitespaceEOL ctermbg=red guibg=red
au BufRead,BufNew,WinEnter * match WhitespaceEOL /\s\+$/

"-----------------------
" 文字コードとかの設定
"------------------------
"set termencoding=utf-8
"set encoding=utf-8
"set fileencoding=utf-8

" yankでclipbordにコピーするやつ
set clipboard=unnamed,autoselect

" insertモード向けると自動でset nopasteしてくれる
autocmd InsertLeave * set nopaste
