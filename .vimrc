" 行数表示
set number

" 一旦ファイルタイプ関連を無効化する
filetype off
filetype plugin indent off

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
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-surround'
 
call neobundle#end()
 
" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck
"-------------------------
" End Neobundle Settings.
"-------------------------

" タブ設定(タブを半角スペースx2に展開)
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

set backspace=indent,eol,start

" 行末<->行頭移動
set whichwrap=b,s,h,l,<,>,[,]

" pasteモードトグル(ペースト時のautoindent対策)
set pastetoggle=<C-E>

" ,rb入力でruby整形
map ,rb <Esc>:%! ~/rbeautify.rb - <CR>

" F2でNERDTreeを開く
map <F2> :NERDTreeToggle<CR> 

" uniteのprefixキー
nnoremap    [unite]   <Nop>
nmap    f [unite]

" ファイル一覧
nnoremap <silent> [unite]f  :<C-u>Unite -no-split -buffer-name=files file<CR>
" 最近使用したファイル一覧
nnoremap <silent> [unite]m  :<C-u>Unite -no-split file_mru<CR>

" create new tab
nnoremap gN :<C-u>tabnew<CR>

" move tab 
nnoremap gn gt
nnoremap gp gT

" unite new file
noremap :uff :<C-u>UniteWithBufferDir file file/new -buffer-name=file<CR>

let g:ctrlp_show_hidden = 1

syntax on
filetype plugin indent on
