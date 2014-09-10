set cindent smartindent autoindent expandtab softtabstop=4 shiftwidth=4
filetype plugin indent on
"set cinkeys=0{,0},:,0#,!,!^F
" Makefile sanity
autocmd BufEnter ?akefile* set noet ts=8 sw=8 sts=8
autocmd BufEnter */debian/rules set noet ts=8 sw=8 sts=8
function Kees_settabs()
    if len(filter(getbufline(winbufnr(0), 1, "$"), 'v:val =~ "^\\t"')) > len(filter(getbufline(winbufnr(0), 1, "$"), 'v:val =~ "^ "'))
        set noet ts=8 sw=8 sts=8
    elseif len(filter(getbufline(winbufnr(0), 1, "$"), 'v:val =~ "^  "')) > len(filter(getbufline(winbufnr(0), 1, "$"), 'v:val =~ "^    "'))
        set sw=2 sts=2
    endif
endfunction
autocmd BufReadPost * call Kees_settabs()

set incsearch
set ignorecase smartcase
set hlsearch
set confirm
"set statusline=%F%m%r%h%w\ %{&ff}\ %Y\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ %04l,%04v\ %p%%\ [LEN=%L]
set laststatus=2
"set number
" Remove trailing whitespace on write
"autocmd BufWritePre * :%s/\s\+$//e

set clipboard=unnamedplus
