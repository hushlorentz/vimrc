"Plugins:
" ack.vim
" ctrlp.vim
" nerdcommenter

execute pathogen#infect()

let g:ack_default_options = " -H --nocolor --nogroup --column"
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_match_current_window = 0
let g:ctrlp_switch_buffer = 0

syntax enable
set incsearch
set ruler
set nocompatible
set ignorecase
set smartcase
set showmatch
set showcmd
set history=500
set numberwidth=1
set background=dark
set hlsearch
set expandtab
set shiftwidth=2
set softtabstop=2
set number
set relativenumber
set wildmenu
set lazyredraw
set cursorline

noremap gp `[v`]
filetype plugin indent on
runtime macros/matchit.vim

colorscheme rich

set wildignore+=vendor,tmp,app/assets/images,public,*.meta,node_modules,dist,*.o

set noerrorbells visualbell t_vb=

command! GrepQuickfix execute 'vimgrep /'.@/.'/g %' | copen
nnoremap <leader>g :GrepQuickfix<CR>

map <SPACE> <leader>
noremap <leader>t :CtrlP :pwd<CR>
noremap <leader>o :NERDTreeToggle<CR>
noremap <leader>r :Ack! 
noremap <leader>ay "ay
noremap <leader>sy "sy
noremap <leader>dy "dy
noremap <leader>fy "fy
noremap <leader>ap "ap
noremap <leader>sp "sp
noremap <leader>dp "dp
noremap <leader>fp "fp
noremap <leader>aP "aP
noremap <leader>sP "sP
noremap <leader>dP "dP
noremap <leader>fP "fP
noremap <leader>cp "*p
noremap <leader>cP "*P
noremap <leader>cy "*y
noremap <leader>h :noh<CR>
noremap <leader>vs :VSSplit<CR>
noremap <leader>vr :VSResize<CR>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
nnoremap <leader>u :GundoToggle<CR>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

let filetype_m='objc'

autocmd BufRead *.as set filetype=actionscript
autocmd BufRead *.md set filetype=markdown
autocmd BufRead *.yml set filetype=ansible
au BufRead,BufNewFile *.go set filetype=go
autocmd FileType go setlocal ts=2
autocmd FileType python setlocal ts=4

augroup CtrlPExtension
  autocmd!
  autocmd FocusGained * CtrlPClearCache
  autocmd BufWritePost * CtrlPClearCache
augroup END

set directory=~/tmp/swp
let g:notes_directories = ['~/code/notes']

"notes colours
highlight notesListBullet guifg=#e1c708 ctermfg=184
highlight notesAtxHeading guifg=#ff9800 gui=bold ctermfg=208 cterm=bold
highlight notesAtxMarker guifg=#e1c708 gui=bold ctermfg=184 cterm=bold
highlight notesListNumber guifg=#ff9800 ctermfg=208
highlight notesRealURL guifg=#f97be0 ctermfg=212
highlight notesTextURL guifg=#f97be0 ctermfg=212
highlight notesUnixPath guifg=#f97be0 ctermfg=212
highlight notesSingleQuoted guifg=#ff9800 ctermfg=208
highlight notesItalic guifg=#74c4c6 ctermfg=116
highlight notesBold guifg=#b1d631 ctermfg=149
highlight notesRule guifg=#b1d631 ctermfg=149
highlight notesTitle guifg=#b1d631 ctermfg=149

"vim-ruby colours
highlight link rubyPseudoVariable Number
