set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'dkarter/bullets.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'airblade/vim-gitgutter'
"listchar/list options of vim just works fine and the plugin in here does not
"help much more so just remov it
"Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'Shougo/vimshell.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'koalaman/shellcheck'
Plugin 'junegunn/vim-easy-align'
" It did not work as my expectation. Remove it.
"Plugin 'vim-scripts/Conque-Shell'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'vim-scripts/CycleColor'
Plugin 'zhaocai/GoldenView.Vim'
"Plugin 'vim-scripts/autoresize.vim'
Plugin 'vim-scripts/grep.vim'
Plugin 'vim-scripts/LanguageTool'
Plugin 'vim-scripts/taglist.vim'
Plugin 'majutsushi/tagbar'
" Removed chase/vim-ansible-yaml cos I did not find anything help from it. But
" hte suggested one(ansible-vim) by it is really good.
"Plugin 'chase/vim-ansible-yaml'
Plugin 'pearofducks/ansible-vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'jiangmiao/auto-pairs'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/nerdcommenter'
Plugin 'python-mode/python-mode'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'mitsuhiko/vim-python-combined'
Plugin 'lepture/vim-jinja'
Plugin 'vim-airline/vim-airline'
Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'fisadev/FixedTaskList.vim'
Plugin 'yuttie/comfortable-motion.vim'
Plugin 'tomtom/tlib_vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'
Plugin 'itspriddle/ZoomWin'
Plugin 'pseewald/vim-anyfold'
Plugin 'vim-scripts/Efficient-python-folding'
Plugin 'tmhedberg/SimpylFold'
Plugin 'arecarn/vim-fold-cycle'
Plugin 'Nopik/vim-nerdtree-direnter'
Plugin 'jistr/vim-nerdtree-tabs'
" It requests external app as formater. I dislike it. Remove it.
"Plugin 'Chiel92/vim-autoformat'
"Commands here works perfect: :%!python -m json.tool / silent %!xmllint --encode UTF-8 --format -
Plugin 'darfink/vim-plist'
Plugin 'elzr/vim-json'
Plugin 'sukima/xmledit'
Plugin 'othree/xml.vim'
Plugin 'wesQ3/vim-windowswap'
"Remove it due to plguin confict
"Exception not caught: ALE conflicts with Syntastic. Uninstall it, or disable this warning with `let g:ale_emit_conflict_warnings = 0` in your vimrc file, *before* plugins are loaded.
"Plugin 'w0rp/ale'
"Plugin 'macvim-dev/macvim'
" Plugin 'jistr/vim-nerdtree-tabs'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" I removed it cos I don't have any local plugin
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
language message en_US.UTF-8
set langmenu=en_US.UTF-8

colorscheme blue

set nu

set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list
set tabstop=4

set colorcolumn=80
set hlsearch

set statusline=%t
set statusline+=[%{strlen(&fenc)?&fenc:'none'}$
set statusline+=%{&ff}]$
set statusline+=%h~$
set statusline+=%m
set statusline+=%r
set statusline+=%y
set statusline+=%=$
set statusline+=%c,$
set statusline+=%l/%L
set statusline+=\ %P

set laststatus=2

set backspace=2
set spell
" Don't try to change anything about the color settings. Just use the default
" one from scheme. What I need to do just open the settings.
"hi CursorLine   cterm=NONE ctermbg=darkgray ctermfg=NONE "guibg=lightgrey guifg=white
"hi CursorColumn cterm=NONE ctermbg=darkgray ctermfg=NONE "guibg=lightgrey guifg=white
set cursorline
set cursorcolumn
set acd
set foldmethod=syntax
set foldnestmax=5
set foldcolumn=5

set hidden

"set nowrap
set autoindent
set copyindent

set shiftwidth=4
set shiftround
set smarttab
set showmatch
set smartcase

set wildignore=*.swp,*.bak,*.pyc,*.class

set history=10000
set undolevels=10000

set nobackup
set noswapfile

set splitright
set splitbelow

if has ("gui_running")
  set guioptions-=m
  set guioptions-=T
  set guioptions-=r
"  set lines=52 columns=226

  set formatoptions+=t
"  set guifont=Consolas:h10:cANSI
"  set lines=56 columns=226

"  set guifont=PragmataPro:h12:cANSI
"  set lines=65 columns=205

"  set guifont=PragmataPro:h12
"  set lines=81 columns=120

  set guifont=PragmataPro:h16
  set lines=85 columns=235
  set guioptions-=L
endif

" <F1> is preserved for VIM Help

inoremap <F2> <Esc>:w<CR>a
nnoremap <F2> :w<CR>

" <F3>/<F4> were preserved for colorscheme switch

inoremap <F5> <Esc>:bnext<CR>
nnoremap <F5> :bnext<CR>
inoremap <F6> <Esc>:bpre<CR>
nnoremap <F6> :bpre<CR>

inoremap <F7> <Esc>:NERDTreeToggle<CR>i
nnoremap <F7> :NERDTreeToggle<CR>

" <F8> was preserved by GoldenViewSwitchMain

inoremap <F9> <Esc>:tabp<CR>
nnoremap <F9> :tabp<CR>
inoremap <F10> <Esc>:tabn<CR>
nnoremap <F10> :tabn<CR>

" <F11>/<F12> were preserved by Mac so here they does not work for VIM
"vnoremap <F11> "+y
"inoremap <F11> <Esc>:let @*=expand('%:p')<CR>a
"nnoremap <F11> :let @*=expand('%:p')<CR>

"inoremap jk <Esc>
inoremap qq <Esc>:w<CR>
"inoremap ;; <Esc>
"Conflicts with aaa so deprecate
"inoremap aa <Esc>
"inoremap jk <Esc>
"inoremap nn <Esc>
"inoremap zz <Esc>:w<CR>a
"Conflicts with www so deprecate
"inoremap ww <Esc>:w<CR>a
" Does not use ss for save command cos issue is any frequent word for me. It
" bring's trouble instead of convinence.
"inoremap ss <Esc>:w<CR>a
"inoremap mm <Esc>:w<CR>a

"inoremap aa <Esc>:w<CR>a
"inoremap ff <Esc>:w<CR>a
"inoremap ss <Esc>:w<CR>a

"nnoremap zz :w<CR>
"'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
nnoremap <D-d> <C-d>
" Changed the default shotcut
nmap <D-f> <C-f>
" Changed the default shotcut
nmap <D-b> <C-b>
nnoremap <D-u> <C-u>

syntax on
filetype on
au! BufNewFile,BufRead *.bug,*.bugs                    set filetype=bug
au! BufNewFile,BufRead *.txt,*.text,*.note,*.todo,*.tc set filetype=txt
au! BufNewFile,BufRead *.vtxt                          set filetype=vtxt
au! BufNewFile,BufRead *.mm                            set filetype=mm


au! filetype bug  source $HOME/.vim/ftplugin/bug.vim
au! filetype txt  source $HOME/.vim/ftplugin/txt.vim
au! filetype vtxt source $HOME/.vim/ftplugin/vtxt.vim
au! filetype mm   source $HOME/.vim/ftplugin/mm.vim

filetype plugin on
set omnifunc=syntaxcomplete#Complete

:let g:session_verbose_messages=0
:let g:session_default_to_last='yes'
:let g:session_autoload='yes'
:let g:session_autosave_silent=1
:let g:session_autosave='yes'
:let g:session_autosave_to = 'default'

" Note, perl automatically sets foldmethod in the syntax file
autocmd Syntax c,cpp,vim,xml,json,java,python,html,xhtml,yml,yaml,perl,sh,go setlocal foldmethod=syntax
autocmd Syntax c,cpp,vim,xml,json,java,python,html,xhtml,yml,yaml,perl,sh,go normal zR
autocmd Syntax txt setlocal foldmethod=indent
autocmd Syntax txt normal zR
autocmd BufWinEnter * silent! :%foldopen!

"autocmd VimEnter * NERDTree
:let NERDTreeMapOpenInTab='<ENTER>'
:let g:nerdtree_tabs_open_on_console_startup=1
