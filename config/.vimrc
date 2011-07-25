set wildmenu
set ts=2
set sw=2
set et
set hidden
set hlsearch
syntax on
set ai
set wildignore=public/photos
set fo+=r
colorscheme ir_black
call pathogen#runtime_append_all_bundles()
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
:undojoin |	%s/\s*$//
''
:endfunction

autocmd FileType ruby,eruby,javascript autocmd BufWritePre <buffer> :call Trim_whitespace()      

" let g:CommandTMatchWindowAtTop=1
let g:CommandTMaxFiles=20000
let g:CommandTMaxHeight=20
