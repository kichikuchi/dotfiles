if has('vim_starting')
   " 初回起動時のみruntimepathにneobundleのパスを指定する
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" NeoBundleを初期化
call neobundle#begin(expand('~/.vim/bundle/'))

" NeoBundleをNeoBundle自体で管理する
NeoBundleFetch 'Shougo/neobundle.vim'

" colorschemes
" molokai colorscheme
NeoBundle 'tomasr/molokai'
" mustang colorscheme
NeoBundle 'croaker/mustang-vim'
" wombat colorscheme
NeoBundle 'jeffreyiacono/vim-colors-wombat'
" jellybeans colorscheme
NeoBundle 'nanotech/jellybeans.vim'
" lucius colorscheme
NeoBundle 'vim-scripts/Lucius'
" zenburn colorscheme
NeoBundle 'vim-scripts/Zenburn'
" mrkn256 colorscheme
NeoBundle 'mrkn/mrkn256.vim'
" railscasts colorscheme
NeoBundle 'jpo/vim-railscasts-theme'
" pyte colorscheme
NeoBundle 'therubymug/vim-pyte'
" solarized colorscheme
NeoBundle 'altercation/vim-colors-solarized'

" plugins
NeoBundle 'Shougo/unite.vim'
NeoBundle 'ujihisa/unite-colorscheme'

NeoBundleLazy 'Shougo/vimfiler', {
												\   'autoload' : { 'commands' : [ 'VimFiler' ] },
												\ }
NeoBundle 'toyamarinyon/vim-swift'

call neobundle#end()

" ファイルタイプ別のプラグイン/インデントを有効にする
filetype plugin indent on

" 行番号表示
set number

" 編集中ファイル名を表示
set laststatus=2

" カーソル行の背景色を変更
set cursorline

" color scheme
colorscheme jellybeans

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

