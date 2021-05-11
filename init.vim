" この設定を使う前に [Vim-Plug](https://github.com/junegunn/vim-plug) のインストールを済ませておくこと。
" 初回実行のとき `:PlugInstall` を実行して、すべてのプラグインをインストールする。

" ==========
" プラグインを Vim-Plug で管理する
" ==========
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'mattn/vim-sonictemplate'
Plug 'itchyny/lightline.vim'
Plug 'ulwlu/elly.vim'
Plug 'tyru/open-browser.vim'
Plug 'previm/previm'
call plug#end()

" mattn/vim-lsp-settings プラグインは、プログラム言語に対応した language server をインストールする機能を提供している。
" 実際の対応一覧はこちら。
" https://github.com/mattn/vim-lsp-settings#supported-languages
"
" 例えば `:LspInstallServer pyls-all` を実行して、 Python の language server をインストールする。

" ==========
" 外観の設定
" ==========
set termguicolors
colorscheme elly
let g:lightline = {
    \ 'colorscheme': 'elly',
    \ }
set background=dark
set showbreak=↪
set number

" ==========
" ファイルの扱いの設定
" ==========
set nobackup
set noswapfile
set autoread
set hidden

" ==========
" 文字の設定
" ==========
set list
set listchars=tab:➡-,trail:-,eol:↩,extends:»,precedes:«,nbsp:%

" ==========
" TAB の設定
" ==========
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4

" ==========
" 検索の設定
" ==========
set ignorecase
set smartcase
set wrapscan
set hlsearch
nnoremap <ESC><ESC> :nohl<CR>
