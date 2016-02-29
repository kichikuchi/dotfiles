if &compatible
	  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

" deinを初期化
call dein#begin(expand('~/.vim/dein/'))

" plugins
call dein#add('Shugo/dein.vim')
call dein#add('Shugo/unite.vim')
call dein#add('ujihisa/unite-colorscheme')
call dein#add('rking/ag.vim')
call dein#add('toyamarinyon/vim-swift')
call dein#add('Townk/vim-autoclose')
call dein#add('scrooloose/nerdtree')
call dein#add('scrooloose/syntastic')
call dein#add('grep.vim')
call dein#add('mattn/emmet-vim')
call dein#add('tpope/vim-fugitive')
call dein#add('Shougo/vimproc', {
  \ 'build' : {
  \     'windows' : 'make -f make_mingw32.mak',
  \     'cygwin' : 'make -f make_cygwin.mak',
  \     'mac' : 'make -f make_mac.mak',
  \     'unix' : 'make -f make_unix.mak',
  \    },
  \ })
call dein#add('thinca/vim-quickrun')
let g:quickrun_config={'*': {'split': ''}}
let g:quickrun_config._={ 'runner':'vimproc',
 \       "runner/vimproc/updatetime" : 10,
 \       "outputter/buffer/close_on_empty" : 1,
 \ }

call dein#add('Shougo/vimfiler', {
												\   'autoload' : { 'commands' : [ 'VimFiler' ] },
												\ })

call dein#add('LeafCage/yankround.vim')
call dein#add('tpope/vim-endwise', {
  \ 'autoload' : { 'insert' : 1,}})
call dein#add('glidenote/memolist.vim')
call dein#add('vim-scripts/AnsiEsc.vim')
call dein#add('bronson/vim-trailing-whitespace')

call dein#end()

" ファイルタイプ別のプラグイン/インデントを有効にする
filetype plugin indent on

" 行番号表示
set number

" 編集中ファイル名を表示
set laststatus=2

" カーソル行の背景色を変更
set cursorline

" syntax
syntax on

" 表示単位行で移動させる
noremap j gj
noremap k gk
noremap gj j
noremap gk k

" ;と:を逆
noremap ; :
noremap : ;

set clipboard+=unnamed

" tabの移動量を変更
set tabstop=2

" 改行時のインデントのスペースを指定
set shiftwidth=2

" deleteで改行消せるように
set backspace=2
