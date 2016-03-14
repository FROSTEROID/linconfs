
set nocompatible " don't need old vi shit.

set smartindent " autotab?


" my lovely tab style:
set tabstop=4
set shiftwidth=4  
set backspace=2

" no VCS replacing:
set nobackup
set nowritebackup
set noswapfile

" mouse cursor controlling:
set mouse=a

" highlight it!
syntax on

" show lines numbers:
set number

" no need of shifting semicolon:
nnoremap ; :
vnoremap ; :

" no ESC. Just jf!
inoremap jf <esc>
" DO I REALLY LIKE IT? YEAH!!!1

" Lovely hotkeys will be mixed with vim's ones:
:map <C-S-a> GVgg
:map <C-n> :enew
:map <C-o> :e . <Enter>
:map <C-s> :w <Enter>
:map <C-t> :tabnew <Enter>
:map <C-i> >>
:map <C-w> :close <Enter>
:map <C-W> :q! <Enter>
:map <C-f> /
:map <F3> n
:map <S-F3> N
:map <C-h> :%s/

:map <A-Up> :wincmd k
:map <A-Down> :wincmd j
:map <A-Left> :wincmd h
:map <A-Right> :wincmd l

"when i'm about to steal some code:
:set pastetoggle=<C-'>

"change line by moving R/L:
set whichwrap+=<,>,[,],l,h

"no autocomment:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"display a statusbar with a filename:
set statusline="%F %l;%c"
set laststatus=2

