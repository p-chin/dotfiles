" tab indent
set tabstop=4
set shiftwidth=4
set softtabstop=0
set expandtab

" " setting for cursor
nnoremap j gj
nnoremap k gk

" " column number
set number

" " encoding
set encoding=utf-8
set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932

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

" perl
au! BufRead,BufNewFile *.psgi set filetype=perl
au! BufRead,BufNewFile *.t set filetype=perl

" 行末スペース
highlight WhitespaceEOL ctermbg=red guibg=red
au BufRead,BufNew,WinEnter * match WhitespaceEOL /\s\+$/

" csファイルの文字コード自動変換
autocmd BufNewFile,BufRead *.cs set fenc=utf-8 bomb
autocmd BufNewFile,BufRead *.cs set noexpandtab
autocmd BufNewFile,BufRead *.cs set fileformat=dos
