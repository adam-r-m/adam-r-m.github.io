set number 
set mouse=a 
set nocompatible 
set fillchars+=vert:│ 
set textwidth=78 
set formatoptions=t 

filetype plugin on
"filetype indent on

"set t_Co=256 
set t_Co=16
syntax on 
let g:solarized_termcolors=16
"set background=light
set background=dark

"execute pathogen#infect()

colorscheme solarized

let leader = '\'

"vim-plug settings (plugins)

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'lervag/vimtex'
Plug 'valloric/youcompleteme'
call plug#end()

"LaTeX specific settings

"compiling 
map <Leader>ll :VimtexCompile
map <Leader>pdf :!pdflatex %:p
map <Leader>bib :!bibtex %:r
"note: this sets up vim to run recursively on .tex, .aux files in order to
"compile full bibliographical information.

"build settings 
let leader = '\'
let localleader = '\'
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf,bibtex,pdf'
"let g:Tex_ViewRule_pdf = 'open -a zathura'
let g:vimtex_view_method = 'zathura'
"let g:vimtex_ViewRule_pdf = 'open -a zathura'
let g:tex_flavor='latex'
set shellslash
set grepprg=grep\ -nH\ $*


"environment setups I: 
"put \begin{} \end{} tags tags around the current word
 map  <C-B>      YpkI\begin{<ESC>A}<ESC>jI\end{<ESC>A}<esc>kA
 map! <C-B> <ESC>YpkI\begin{<ESC>A}<ESC>jI\end{<ESC>A}<esc>kA

"environment setups II: 
"keymaps to generate standard TeX environments
"

" Set split separator to Unicode box drawing character
set encoding=utf8
set fillchars=""
"
" " Override color scheme to make split the same color as tmux's default
 autocmd ColorScheme * highlight VertSplit cterm=NONE ctermfg=Green  ctermbg=NONE

"set color of line numbers"
"highlight LineNr ctermfg=darkgrey

"show hidden files in NT:
let NERDTreeShowHidden=1

filetype indent off



