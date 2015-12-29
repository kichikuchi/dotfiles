if has('vim_starting')
   " 初回起動時のみruntimepathにneobundleのパスを指定する
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" NeoBundleを初期化
call neobundle#begin(expand('~/.vim/bundle/'))

" NeoBundleをNeoBundle自体で管理する
NeoBundleFetch 'Shougo/neobundle.vim'

" plugins
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'rking/ag.vim'
NeoBundle 'toyamarinyon/vim-swift'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'grep.vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'tpope/vim-fugitive'

NeoBundleLazy 'Shougo/vimfiler', {
												\   'autoload' : { 'commands' : [ 'VimFiler' ] },
												\ }

call neobundle#end()

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

