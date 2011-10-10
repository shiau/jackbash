set wildmenu  " men, u so wild
set ts=2      " tab spacing = 2
set sw=2      " shift width = 2
set et        " expand tabs to spaces
set hidden    " when off, buffers are hidden not closed
set hlsearch  " highlight search results
" set nocuc     " do not highlight cursor column (here as a reminder to use cuc)
set ai        " autoindent
set backspace=indent,eol,start   
              " backspace deletes past where insert mode was entered and other
              " goodies
syntax on
set wildignore+=public/photos,public/assets,tmp
filetype indent plugin on
set fo+=r
call pathogen#infect()

set background=dark
colorscheme solarized

map <C-b> :b 
map <C-a> :Ack! 

" removes spaces within parens (but not between args)
function Parens_unpad()
  %s/(\s*/(/g
  %s/\s*)/)/g
endfunction

" adds spaces between parens
function Parens_pad()
  %s/(\(\S\)/( \1/g
  %s/\(\S\))/\1 )/g
endfunction

" Removes trailing spaces
function Trim_whitespace()
  :undojoin | %s/\s*$//
  ''
:endfunction

" autocmd FileType ruby,eruby,javascript autocmd BufWritePre <buffer> :call Trim_whitespace()      
" highlight unwanted whitespace
:highlight ExtraWhitespace ctermbg=red guibg=red

" show trailing whitespace:
:match ExtraWhitespace /\s\+\%#\@<!$/
" show tabs
:2match ExtraWhitespace /\t/

" show trailing whitepace and spaces before a tab:
" :3match ExtraWhitespace / \+\ze\t/



" let g:CommandTMatchWindowAtTop=1
let g:CommandTMaxFiles=10000
let g:CommandTMaxHeight=20
