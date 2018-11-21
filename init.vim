" **********************************************************
" ██████╗  █████╗ ████████╗████████╗██╗     ███████╗       "
" ██╔══██╗██╔══██╗╚══██╔══╝╚══██╔══╝██║     ██╔════╝       "
" ██████╔╝███████║   ██║      ██║   ██║     █████╗         "
" ██╔══██╗██╔══██║   ██║      ██║   ██║     ██╔══╝         "
" ██████╔╝██║  ██║   ██║      ██║   ███████╗███████╗       "
" ╚═════╝ ╚═╝  ╚═╝   ╚═╝      ╚═╝   ╚══════╝╚══════╝ VIMRC "
" ********************************************************** 

" MAIN OPTIONS {{{
" set nocompatible               
set encoding=utf-8
set termencoding=utf-8
" filetype plugin indent on
set noswapfile                    " it's 2013, Vim.
set backupdir=/home/battle/.vim/backup
set directory=/home/battle/.vim/swp
" set guifont=Droid\ Sans\ Mono\ Slashed:h9
" set guifont=Envy\ Code\ R:h10
let g:python_host_prog = '/usr/bin/python2' 
let g:python3_host_prog = '/usr/bin/python3'

" main options
" set t_Co=256
" set termguicolors
set background=dark
set autoindent
set autowrite
set backspace=indent,eol,start
set completeopt=longest
set cursorline
set expandtab
set shiftwidth=4
set tabstop=4
set history=50
set hls
set incsearch
set laststatus=2
set mouse=v
set nobackup
set nomousehide
set nowrap
set novisualbell
set number
set ruler
set scrolloff=5
set shortmess+=r
set showmode
set showcmd
set showtabline=1
set sm
set smartcase
set smartindent
set smarttab
set splitright
set tags=~/.tags
set textwidth=0
set ttyfast
set title
set vb t_vb=
set wildmode=longest,full

" change <LocalLeader> to ,
let mapleader = ','

" python
let python_highlight_all=1
let python_highlight_space_errors=1
let python_fold=1
"autocmd FileType python set omnifunc=pythoncomplete#Complete

" lua
let lua_fold=1
let lua_version=5
let lua_subversion=1

" java
let java_highlight_all=1
let java_highlight_functions="style"
let java_allow_cpp_keywords=1

" }}}
" DEIN SETTINGS{{{

"dein Scripts-----------------------------
if &compatible
	set nocompatible               " Be iMproved
endif

"Required:
set runtimepath+=/home/battle/.vim/bundles/repos/github.com/Shougo/dein.vim

"Required:
if dein#load_state('/home/battle/.vim/bundles')
  call dein#begin('/home/battle/.vim/bundles')
  " Let dein manage dein
  " Required:
  call dein#add('/home/battle/.vim/bundles/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/vimfiler.vim')
  call dein#add('Shougo/neomru.vim')
  call dein#add('Shougo/deoplete.nvim')
  " call dein#add('Shougo/deoplete.nvim')
  " if !has('nvim')
  "   call dein#add('roxma/nvim-yarp')
  "   call dein#add('roxma/vim-hug-neovim-rpc')
  " endif
  " call dein#add('Shougo/neocomplete.vim')
  call dein#add('Shougo/neosnippet-snippets')
  " call dein#add('Shougo/denite.nvim')
  " call dein#add('Shougo/neosnippet')
  call dein#add('jiangmiao/auto-pairs')
  call dein#add('tomtom/tcomment_vim')
  call dein#add('tpope/vim-rails')
  call dein#add('nanotech/jellybeans.vim')
  " call dein#add('kristijanhusak/vim-hybrid-material')
  call dein#add('cseelus/vim-colors-lucid')
  " call dein#add('vim-airline/vim-airline')
  " call dein#add('vim-airline/vim-airline-themes')
  call dein#add('itchyny/lightline.vim')
  call dein#add('dracula/vim')
  call dein#add('godlygeek/tabular')
  call dein#add('tpope/vim-fugitive')
  call dein#add('junegunn/fzf', { 'build': './install', 'rtp': '' })
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
  call dein#add('junegunn/seoul256.vim')
  "Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
  " Required:
  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
" if dein#check_install()
"   call dein#install()
" endif
let g:deoplete#enable_at_startup = 1
filetype plugin indent on
syntax enable



" }}}
" FOLDING {{{
if has ('folding')
	set foldenable
	set foldmethod=marker
	set foldmarker={{{,}}}
	set foldcolumn=0
endif

set foldlevelstart=0

" Space to toggle folds.
nnoremap <Space> za
vnoremap <Space> za

" Make zO recursively open whatever fold we're in, even if it's partially open.
nnoremap zO zczO

" }}}
" EVERYTHING ELSE {{{ 
" Make sure Vim returns to the same line when you reopen a file.
" Thanks, Amit
augroup line_return
	au!
	au BufReadPost *
				\ if line("'\"") > 0 && line("'\"") <= line("$") |
				\     execute 'normal! g`"zvzz' |
				\ endif
augroup END

" Fuck you, help key.
noremap  <F1> :checktime<cr>
inoremap <F1> <esc>:checktime<cr>

" Yank to end of line
nnoremap Y y$

" Keep the cursor in place while joining lines
nnoremap J mzJ`z

" Use sane regexes.
nnoremap / /\v
vnoremap / /\v

" clear searches
noremap <silent> <leader><space> :noh<cr>:call clearmatches()<cr>

nnoremap <Leader>d :bd<CR>
nnoremap <leader>sv :source /home/battle/.config/nvim/init.vim<CR>
" }}} EVERYTHING END
" NAVIGATION {{{  
" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" Easier to type, and I never use the default behavior.
noremap H ^
noremap L $
vnoremap L g_

" Easy buffer navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" }}}
" KEYMAPS {{{
" unmap annoying keys
nnoremap q: <Nop>
nnoremap q/ <Nop>
nnoremap q? <Nop>

" quicker window navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

"L and H for end or begin of line
nnoremap L $
nnoremap H ^

" Kill the window
nnoremap K :q!<CR> 

" jj For Qicker Escaping between normal and editing mode.
inoremap jj <ESC>
inoremap jk <ESC>
nnoremap <leader>, :.t.<CR>
imap <S-Insert>  <C-R>+
" cmap <S-Insert>  <C-R>+

"}}}
" PLUGINS {{{
" ----- UNITE {{{
"unite with ctrlp
let g:unite_cursor_line_highlight = "UniteSelectedLine"
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#custom#source('buffer,file,file_rec',
			\ 'sorters', ['sorter_rank'])
call unite#custom#source(
			\ 'buffer,file,file_rec,file_mru,directory', 
			\ 'converters',
			\ ['converter_file_directory'])
" call unite#custom#profile('default', 'context', {
"  \'winheight': 15,
"  \'direction': 'botright',
"  \ })
call unite#custom#profile('default', 'context', {
			\   'prompt': '» ',
			\   'winheight': 15,
			\   'cursor_line_highlight': 'UniteSelectedLine',
			\   'direction': 'botright',
			\ })

nnoremap <leader>u :<C-u>UniteWithBufferDir -buffer-name=files file directory<CR>
nnoremap <leader>i :<C-u>UniteWithBufferDir -buffer-name=files -start-insert file<CR>
nnoremap <leader>m :<C-u>Unite -buffer-name=mru file_mru<CR>
nnoremap <leader>d :<C-u>Unite -buffer-name=dir directory_mru<CR>
" nnoremap <leader>d :<C-u>UniteWithBufferDir -buffer-name=dir_mru dir_mru<CR>
nnoremap <leader>b :<C-u>Unite -buffer-name=buffer buffer<CR>
nnoremap <leader>p :<C-u>UniteWithProjectDir -buffer-name=project file_rec:$HOME/AndroidStudioProjects<CR>
" }}} END UNITE
" ----- NEOCOMPLETE {{{
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"
" }}} END NEOCOMPLETE
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#enable_at_startup = 1
" deoplete tab-complete
" inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : deoplete#mappings#manual_complete()
" {{{ ----- AIRLINE

" let g:airline_powerline_fonts=0
" " let g:airline_symbols = {}
" let g:airline_theme='dracula'
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline_left_sep = ''
" let g:airline_right_sep = ''
" let g:airline_powerline_fonts = 1
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '◀'

" }}} END AIRLINE
" {{{ ----- LIGHTLINE
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }
" }}} END LIGHTLINE
" ----- VIMFILER {{{
noremap <silent> <Leader>vf :VimFilerBufferDir -buffer-name=buffer -direction=topleft -simple<CR>
noremap <silent> <Leader>vp :VimFiler $HOME/AndroidStudioProjects -buffer-name=project -direction=topleft -simple<CR>

let g:vimfiler_as_default_explorer = 1

call vimfiler#custom#profile('default', 'context', {
			\ 'split': 1,
			\ 'winwidth' : 35,
			\ 'explorer' : 1,
			\ 'no_quit': 1,
			\ 'toggle': 1,
			\ })
" }}} END VIMFILER
" ----- FZF {{{
" Similarly, we can apply it to fzf#vim#grep. To use ripgrep instead of ag:
nnoremap <leader>f :FZF<CR>
nnoremap <leader>r :F<CR>
let g:fzf_layout = { 'down': '~35%' }
let g:rg_command = '
  \ rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always"
  \ -g "*.{js,json,php,md,styl,jade,html,config,py,cpp,c,go,hs,rb,conf}"
  \ -g "!{.git,node_modules,vendor}/*" '

command! -bang -nargs=* F call fzf#vim#grep(g:rg_command .shellescape(<q-args>), 1, <bang>0)
" command! -bang -nargs=* Rg
"   \ call fzf#vim#grep(
"   \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
"   \   <bang>0 ? fzf#vim#with_preview('up:60%')
"   \           : fzf#vim#with_preview('right:50%:hidden', '?'),
"   \   <bang>0)
"  }}}
" }}} END PLUGINS
" colorscheme jellybeans 
" seoul256 (dark):
"   Range:   233 (darkest) ~ 239 (lightest)
"   Default: 237
let g:seoul256_background = 233
colo seoul256
syntax on

