set mouse=a	" use mouse, It can move cursor point to clicked point
set autoindent  " 들여쓰기
set cindent     " c-type indentation
set ruler       " show current cursor position
set hlsearch    " highlight search
set incsearch   " 한글자 입력할때마다 매치되는 부분 표시하기

set showmatch   "일치하는 괄호 하이라이팅

set number      "show line number

set ts=4
set shiftwidth=4
"set sw=1 "scrollbar width
set tabstop=4
set smartindent " #if문을 라인 처음에 배치

set foldmethod=indent
set foldnestmax=1

"set laststatus=2 " 상태바 표시를 항상한다
"set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

set encoding=utf8

set background=dark
if has("syntax")
	syntax on
endif

" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

set tag=./tags;/

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'nanotech/jellybeans.vim'
call vundle#end()
filetype plugin indent on

let g:airline#extensions#tabline#enabled = 1
let NERDTreeIgnore = ['\.o$','\.so$','tags[[file]]','\.a$','\.lib$','\.dll$','\.gz$','\.zip$']


color jellybeans
"colorscheme torte
"colorscheme desert



" keyboard mapping
map <F7> :NERDTreeToggle<CR>
map <F8> :TagbarToggle<CR>
map <F9> :BufExplorer<CR>
