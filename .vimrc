" 行数表示
set number


" タブ設定(タブを半角スペースx2に展開)
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set backspace=indent,eol,start

" 行末<->行頭移動
set whichwrap=b,s,h,l,<,>,[,]

" ,rb入力でruby整形
map ,rb <Esc>:%! ~/rbeautify.rb - <CR>

"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
 
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
 
NeoBundle 'slim-template/vim-slim'
 
call neobundle#end()
 
" Required:
filetype plugin indent on

" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck
 
"-------------------------
" End Neobundle Settings.
"-------------------------

syntax on
