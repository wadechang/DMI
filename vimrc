set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
"#Plugin 'Valloric/YouCompleteMe'
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'vim-scripts/AutoComplPop'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-repeat'
Plugin 'bling/vim-airline'
Plugin 'Townk/vim-autoclose'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'
Plugin 'vhda/verilog_systemverilog.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'altercation/vim-colors-solarized'
Plugin 'dracula/vim'
"Plugin 'vim-scripts/phd'
"Plugin 'junegunn/seoul256.vim'
Plugin 'romainl/Apprentice'
"Plugin 'morhetz/gruvbox'
"Plugin 'tomasr/molokai'
Plugin 'chriskempson/base16-vim'
Plugin 'nvie/vim-flake8'
"Plugin 'w0rp/ale'
call vundle#end()

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
"Plugin 'Buffergator'

" Now we can turn our filetype functionality back on
filetype plugin indent on

" Personal Settings Begin Here "
set nocompatible " get out of horrible vi-compatible mode
filetype on " detect the type of file
set history=100 " How many lines of history to remember
set cf " enable error files and error jumping
filetype plugin on " load filetype plugins
set viminfo+=! " make sure it can save viminfo
set lines=48
set columns=160
set backspace=indent,eol,start "make backspace funtaion as in windows
set ignorecase
set noerrorbells
let g:loaded_matchparen=1 "disable automatic highlighted matching
set encoding=utf-8
let g:LargeFile=5
set hlsearch
set cursorline
set incsearch
set guitablabel=\[%N\]\%t\%M
let g:rainbow_active = 1

""""""""""""""""""""""""""""""""""""""
"" Color scheme
""""""""""""""""""""""""""""""""""""""
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h16
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

""""""""""""""""""""""""""""""""""""""
"" Color scheme
""""""""""""""""""""""""""""""""""""""
let python_highlight_all=1
syntax on
set background=dark
colorscheme base16-phd

""""""""""""""""""""""""""""""""""""""
"" Text Formatting                  
""""""""""""""""""""""""""""""""""""""
set ai " autoindent
set cindent " do c-style indenting
set tabstop=2 " tab spacing (settings below are just to unify it)
set softtabstop=2 " unify
set shiftwidth=2 " unify 
set expandtab " no real tabs please!
set nowrap " do not wrap lines  

""""""""""""""""""""""""""""""""""""""
"" Folding
""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""
"" Python setting
""""""""""""""""""""""""""""""""""""""
autocmd FileType python map <buffer> <F6> :call Flake8()<CR>

"""""""""""""""""""""""""""""""""""""""
"" Keystroker                        ""
"""""""""""""""""""""""""""""""""""""""
noremap <Space> <PageDown>
noremap -                               <PageUp>
noremap gg                      1G " Go to the first line

" Tab control
noremap <C-T>           :tabnew<CR>
nmap            <C-S-tab>       :tabprevious<CR>
nmap            <C-tab>         :tabnext<CR>
map                     <C-S-tab>       :tabprevious<CR>
map                     <C-tab>         :tabnext<CR>
imap            <C-S-tab>       <ESC>:tabprevious<CR>
imap            <C-tab> <ESC>:tabnext<CR>
imap            <C-t>   <ESC>:tabnew<CR>


if has("gui_macvim")
  noremap <D-1>           1gt
  noremap <D-2>           2gt
  noremap <D-3>           3gt
  noremap <D-4>           4gt
  noremap <D-5>           5gt
  noremap <D-6>           6gt
  noremap <D-7>           7gt
  noremap <D-8>           8gt
  noremap <D-9>           9gt
  noremap <D-0>           10gt
  noremap <D-q>           11gt
  noremap <D-w>           12gt
  noremap <D-e>           13gt
  noremap <D-r>           14gt
else
  noremap <A-1>           1gt
  noremap <A-2>           2gt
  noremap <A-3>           3gt
  noremap <A-4>           4gt
  noremap <A-5>           5gt
  noremap <A-6>           6gt
  noremap <A-7>           7gt
  noremap <A-8>           8gt
  noremap <A-9>           9gt
  noremap <A-0>           10gt
  noremap <A-q>           11gt
  noremap <A-w>           12gt
  noremap <A-e>           13gt
  noremap <A-r>           14gt
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Toggle settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <F2>            :set hls!<CR>
noremap <F3>    :set nonumber!<CR>
noremap <F4>    :NERDTreeToggle<CR>
noremap <F5>    :IndentLinesToggle<CR>

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
" SnipMate
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
imap <Plug>snipMateTrigger <Tab>
imap <Plug>snipMateNextOrTrigger <Tab>
let g:snipMate = get(g:, 'snipMate', {})
let g:snipMate.scope_aliases = {}
let g:snipMate.scope_aliases['verilog_systemverilog'] = 'sv'

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
" indent display
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indentLine_enabled = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTREE Setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore .pyc files in NERDTree

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Switch between split screen by using CTRL+arrow keys
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <C-Down> :wincmd j<CR>
nmap <silent> <C-Left> :wincmd h<CR>
nmap <silent> <C-Right> :wincmd l<CR>
nmap <silent> <C-Up> :wincmd k<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Asynchrounos Lint Engine
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {'javascript': [],}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Restore last window position
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:screen_size_restore_post = 1
let g:screen_size_by_vim_instance = 1

if has("gui_running")
  function! ScreenFilename()
    if has('amiga')
      return "s:.vimsize"
    elseif has('win32')
      return $HOME.'\_vimsize'
    else
      return $HOME.'/.vimsize'
    endif
  endfunction

  function! ScreenRestore()
    " Restore window size (columns and lines) and position
    " from values stored in vimsize file.
    " Must set font first so columns and lines are based on font size.
    let f = ScreenFilename()
    if has("gui_running") && g:screen_size_restore_pos && filereadable(f)
      let vim_instance = (g:screen_size_by_vim_instance==1?(v:servername):'GVIM')
      for line in readfile(f)
        let sizepos = split(line)
        if len(sizepos) == 5 && sizepos[0] == vim_instance
          silent! execute "set columns=".sizepos[1]." lines=".sizepos[2]
          silent! execute "winpos ".sizepos[3]." ".sizepos[4]
          return
        endif
      endfor
    endif
  endfunction

  function! ScreenSave()
    " Save window size and position.
    if has("gui_running") && g:screen_size_restore_pos
      let vim_instance = (g:screen_size_by_vim_instance==1?(v:servername):'GVIM')
      let data = vim_instance . ' ' . &columns . ' ' . &lines . ' ' .
            \ (getwinposx()<0?0:getwinposx()) . ' ' .
            \ (getwinposy()<0?0:getwinposy())
      let f = ScreenFilename()
      if filereadable(f)
        let lines = readfile(f)
        call filter(lines, "v:val !~ '^" . vim_instance . "\\>'")
        call add(lines, data)
      else
        let lines = [data]
      endif
      call writefile(lines, f)
    endif
  endfunction

  if !exists('g:screen_size_restore_pos')
    let g:screen_size_restore_pos = 1
  endif
  if !exists('g:screen_size_by_vim_instance')
    let g:screen_size_by_vim_instance = 1
  endif
  autocmd VimEnter * if g:screen_size_restore_pos == 1 | call ScreenRestore() | endif
  autocmd VimLeavePre * if g:screen_size_restore_pos == 1 | call ScreenSave() | endif
endif
