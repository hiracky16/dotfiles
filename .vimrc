"#####表示設定#####
set number "行番号を表示する
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
syntax on "コードの色分け
set tabstop=2 "インデントをスペース4つ分に設定
set smartindent "オートインデント
set shiftwidth=2
set cursorline "cursor color
set laststatus=2 

"#####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る
set hlsearch " search hight light
set incsearch " incremental search

" クリップボード有効
set clipboard=unnamed,unnamedplus


" 前回編集した場所から始める
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif
au BufWritePost * mkview
autocmd BufReadPost * loadview

" 強化されたコマンドライン補完を使用
set wildmenu

" Oで改行挿入
nnoremap O :<C-u>call append(expand('.'), '')<Cr>j

" エイリアス設定
:command Tr NERDTree

" Start Neobundle Setting
set runtimepath+=~/.vim/bundle/neobundle.vim/

"Required:
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

" Source Tree
NeoBundle 'scrooloose/nerdtree'
" ()
NeoBundle 'Townk/vim-autoclose'
" html
NeoBundle 'mattn/emmet-vim'
" syntax check
NeoBundle 'scrooloose/syntastic'
" lightline
NeoBundle 'itchyny/lightline.vim'

call neobundle#end()
" Required:
filetype plugin indent on

" End Neobundle Setting
