"'""""""""""""""""""""""""""""""""""""""""""""""""""
"" Vundle Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-rails'
Plugin 'majutsushi/tagbar'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-repeat'
Plugin 'vim-ruby/vim-ruby'
Plugin 'honza/vim-snippets'
Plugin 'bling/vim-airline'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'vim-scripts/phd'


" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
"Plugin 'Buffergator'

" Now we can turn our filetype functionality back on
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""
"" general setting                                ""
""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible " get out of horrible vi-compatible mode
filetype on " detect the type of file
set history=100 " How many lines of history to remember
set cf " enable error files and error jumping
filetype plugin on " load filetype plugins
set viminfo+=! " make sure it can save viminfo
syntax enable
colorscheme phd 
set lines=60
set columns=180
set backspace=indent,eol,start "make backspace funtaion as in windows
set ignorecase
set noerrorbells
let g:loaded_matchparen=1 "disable automatic highlighted matching
set encoding=utf-8
let g:LargeFile=5
set hlsearch
set cursorline

""""""""""""""""""""""""""""""""""""""
"" Text Formatting                  ""
""""""""""""""""""""""""""""""""""""""
set ai " autoindent
set si " smartindent
set cindent " do c-style indenting
set tabstop=2 " tab spacing (settings below are just to unify it)
set softtabstop=2 " unify
set shiftwidth=2 " unify 
set expandtab " no real tabs please!
set nowrap " do not wrap lines  
"set smarttab " use tabs at the start of a line, spaces elsewhere

"""""""""""""""""""""""""""""""""""""""
"" Keystroker                        ""
"""""""""""""""""""""""""""""""""""""""
noremap	<Space>	<PageDown>
noremap	-				<PageUp>
noremap	gg			1G " Go to the first line
"map			,s			:tabnew<CR>:e ~/.vimrc<CR>
"map			,a			:tabnew<CR>:e ~/.alias<CR>
"map			,c			:tabnew<CR>:e ~/.cshrc.local<CR>
map			gf			:call OpenFileUnderCursor()<CR>
map			,m			:MRU<CR>
nmap		gcw			guW~h

" Tab control
noremap <C-T>		:tabnew<CR>
nmap		<C-S-tab>	:tabprevious<CR>
nmap		<C-tab>		:tabnext<CR>
map			<C-S-tab>	:tabprevious<CR>
map			<C-tab>		:tabnext<CR>
imap		<C-S-tab>	<ESC>:tabprevious<CR>
imap		<C-tab>	<ESC>:tabnext<CR>
"nmap		<C-w>			:tabclose<CR>
imap		<C-t>	<ESC>:tabnew<CR>
noremap	<A-1>		1gt
noremap	<A-2>		2gt
noremap	<A-3>		3gt
noremap	<A-4>		4gt
noremap	<A-5>		5gt
noremap	<A-6>		6gt
noremap	<A-7>		7gt

" Toggle settings
noremap	<F2>		:set hls!<CR>
noremap <F3>    :set nonumber!<CR>
noremap <F8>    :TagbarToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EasyMotion setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)

" Turn on case sensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Neo Complete Setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neocomplcache_enable_at_startup = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctrlp setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctrlp setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTREE Setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

nmap <silent> <C-Down> :wincmd j<CR>
nmap <silent> <C-Left> :wincmd h<CR>
nmap <silent> <C-Right> :wincmd l<CR>
nmap <silent> <C-Up> :wincmd k<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Session setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:session_autosave=1
let g:session_autosave_periodic=5
