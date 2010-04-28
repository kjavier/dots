set backspace=2
set background=dark
set number
set ts=4 sts=4 sw=4 expandtab
syntax on
set nocp
filetype plugin on
filetype indent on
set guifont=DejaVu\ Sans\ Mono:h20
" If not gui
colorscheme Vitamins_Vim_Colorscheme_by_hcalves 
" Color Scheme (only if GUI running)
if has("gui_running")
    colorscheme rootwater 
endif

function Do256()
    " Enable 256 colors
    set t_Co=256
    set t_AB=[48;5;%dm
    set t_AF=[38;5;%dm
endfu

function UnDo256()
    " Enable 256 colors
    set t_Co &vim 
    set t_AB &vim
    set t_AF &vim
endfu

com! -nargs=* Color256 exe Do256()
com! -nargs=* UnColor256 exe UnDo256()

