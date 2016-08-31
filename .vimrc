"#####表示設定#####
set number "行番号を表示する
set title "編集中のファイル名を表示
set showmatch "括弧入力時の対応する括弧を表示
syntax on "コードの色分け
set tabstop=2 "インデントをスペース4つ分に設定
set smartindent "オートインデント
set shiftwidth=2
set cursorline "cursor color
set cursorcolumn "column background color
set laststatus=2 


"#####検索設定#####
set ignorecase "大文字/小文字の区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る
set hlsearch " search hight light
set incsearch " incremental search

set clipboard=unnamed,unnamedplus

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


call neobundle#end()
" Required:
filetype plugin indent on

" End Neobundle Setting



autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

au BufWritePost * mkview
autocmd BufReadPost * loadview

" setting vundle

set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...
filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

