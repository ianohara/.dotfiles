call pathogen#infect()

syntax on
set background=dark

colorscheme solarized

set expandtab
set number
set tabstop=4
set shiftwidth=4
set list listchars=tab:▷⋅,trail:⋅,nbsp:⋅
set statusline=%f%m%r%h%w\ [TYPE=%Y\ %{&ff}]\ \ [C:%c]\ [L:%l/%L\ (%p%%)]
set laststatus=2

filetype plugin indent on
au FileType py set autoindent
au FileType py set smartindent
au FileType py set textwidth=79 " PEP-8 compliance

" Tab completion setup.  I originally found this
" at: http://robots.thoughtbot.com/post/27041742805/vim-you-complete-me
imap <Tab> <C-P>
set complete=.,b,u,]
set wildmode=longest,list:longest
set completeopt=menu,preview

