call pathogen#infect()

syntax on
set background=dark
set t_Co=256

colorscheme solarized

set number
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅
set statusline=%f%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ \ [C:%c]\ [L:%l/%L\ (%p%%)]
set laststatus=2
set expandtab
set tabstop=4
set shiftwidth=4


filetype plugin indent on
au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=79 " PEP-8 compliance

" For inserting newlines without entering insert mode
nmap <CR> o<Esc>
" For some reason <S-Enter> doesn't get caught on OS X,
" so this doesn't work.
nmap <S-Enter> O<Esc>

" Search settings
set incsearch
set hlsearch

" For inserting gpl3 license header into a file at line 0
command! Gpl :0r ~/.vim/gpl3.txt

" For reloading the vimrc
command! Vimrc :so $MYVIMRC
