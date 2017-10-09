set nocompatible               " be iMproved
set clipboard=unnamed
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'majutsushi/tagbar'
Bundle 'altercation/vim-colors-solarized'

" Github repos of the user 'vim-scripts'
" => can omit the username part
Bundle 'L9'
Bundle 'FuzzyFinder'

" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!
syntax on
set background=dark
set textwidth=83
set formatoptions+=t 
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
if has("autocmd")
  filetype plugin indent on
endif

set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ignorecase          " Do case insensitive matching
set smartcase           " Do smart case matching
set incsearch           " Incremental search
set hidden              " Hide buffers when they are abandoned
set autoindent
set backup
set writebackup
set number							"Turn line numbers on

autocmd FileType tex setlocal makeprg=pdflatex\ --shell-escape\ '%'
"Colorscheme
"colorscheme herald 
"colorscheme coldgreen
"let g:solarized_termcolors=256
"colorscheme solarized
"colorscheme mizore
"colorscheme oceandeep
"let g:buddy_termcolors=256
"colorscheme buddy
let g:vendetta_termcolors=256
colorscheme vendetta
"colorscheme inkpot
"colorscheme antares

"Adds transparency while using vim
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight SpecialKey ctermbg=none
highlight texMathMatcher ctermbg=none
highlight texMathZoneX ctermbg=none
highlight texRefLabel ctermbg=none
highlight texStatement ctermbg=none

"To apply similar formatting to C/C++/C#/Java
"astyle --mode=c --style=ansi -s2

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent plugin on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"

set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after

" Saves backup files to directory .vim_backup
set backupdir=~/.vim_backup


"----------------------------"
" Mappings/shortcuts follow
"----------------------------"

" Command to save and compile tex files
map <F6> :w <bar> !pdflatex -shell-escape %

" Command to insert new line after/before current
map <F8> o<Esc>
map <F9> O<Esc>

" Same command as above, but stays on current line afterwards
map <C-S-F8> o<Esc>k
map <C-S-F9> O<Esc>j

" To copy/paste from one application to another (note: Need xclip installed) 
"vmap <C-c> y:call system("xclip -i -selection clipboard", getreg("\""))<CR> 
":call system("xclip -i", getreg("\""))<CR>
"nmap <C-S-v> :call setreg("\"",system("xclip -o -selection clipboard"))<CR>p
