" 行数表示
set number

" コードハイライト
syntax on

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

