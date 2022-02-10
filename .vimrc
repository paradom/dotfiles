" syntax on
set noerrorbells
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set noerrorbells
set smartindent
set hlsearch " set highlighting on search
" set rnu " relative line numbers
set nowrap
set smartcase
set incsearch
set noswapfile
set backspace=indent,eol,start

set colorcolumn=80

" don't want that staircase paste, can you blame me?
set pastetoggle=<F2>
set clipboard=unnamed

" remap because of the damn touchbar
inoremap jj <Esc>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin 'neoclide/coc.nvim'
Plugin 'tpope/vim-fugitive' "  git integration    
Plugin 'mbbill/undotree' " visualize your vim undo history 
Plugin 'kien/ctrlp.vim'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline' " status tabline

call vundle#end()            " required
filetype plugin indent on    " required

colorscheme gruvbox
set background=dark

" map the leader key as the space bar
let mapleader = " "

" setup for the file tree
let g:netrw_browse_split = 2
" let g:netrw_liststyle = 3
let g:netrw_banner = 0 " no help banner
let g:netrw_winsize = 25

" ctrlp fuzzy finder configuarations
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
if exists("g:ctrlp_user_command")
  unlet g:ctrlp_user_command
endif
set wildignore+=*/.git/*,*/.DS_Store,*/node_modules/*,*/Documents/*

" language spacific configurations                                              
autocmd FileType python nnoremap <leader>e :! clear; python3 %<CR>
autocmd FileType python setl nosmartindent
autocmd FileType m nnoremap <leader>e :! clear; matlab -batch "%; exit"<CR>
autocmd FileType cpp nnoremap <leader>e :! make<CR>
                                                                                
" run something on the command line                                             
nnoremap <leader>t :!

" window navigation
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" splitting windows
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR> " split two windows
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>

" git fugative shortcuts
nnoremap <Leader>gs :G<CR>
nnoremap <Leader>gj :diffget //3<CR>
nnoremap <Leader>gf :diffget //2<CR>

" Conquer of Completion (Autocomplete)
" let g:coc_disable_startup_warning = 1
" 
" " tabbing autocompletion
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>""
" 
" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction
" 
" nmap <leader>gd <Plug>(coc-definition)
" nmap <leader>gy <Plug>(coc-type-definition)
" nmap <leader>gi <Plug>(coc-implementation)
" nmap <leader>gr <Plug>(coc-references)
