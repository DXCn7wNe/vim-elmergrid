" Vim syntax file
" Language:	ElmerGrid
" Maintainer:	TANAKA Takayuki
" Location:     
" Last change:	2020-09-01_23:46:40
"
" Installation :
" Add this file in ~/.vim/syntax/
"
" Add the following lines in your .vim/filetype.vim
" 	augroup filetypedetect
"	au! BufRead,BufNewFile *.grd		setfiletype grd
"	augroup END
"
" Add the following comment at the end of your other grd files
" // vim: set filetype=grd :  //

" Remove any old syntax stuff hanging around
set tabstop=4
set shiftwidth=4
set expandtab
syn clear
syn case ignore
" 
syn keyword grdBoundaryDefinitions	"Boundary Definitions" End
" Any integer
syn match grdNumber		"-\=\<\d\+\>"
" floating point number, with dot, optional exponent
syn match grdFloat		"\<\d\+\.\d*\([edED][-+]\=\d\+\)\=\>"
" floating point number, starting with a dot, optional exponent
syn match grdFloat		"\.\d\+\([edED][-+]\=\d\+\)\=\>"
" floating point number, without dot, with exponent
syn match grdFloat		"\<\d\+[edED][-+]\=\d\+\>"
"
" Comments
  syn region	gmshCommentLine		start="!" skip="\\$" end="$"
  syn region	gmshHeaderLine		start="*****" end="*****"
"
" Keywords
syn keyword grdKeyword Version
syn keyword grdKeyword Subcell
"
if !exists("did_grd_syntax_inits")
  let did_grd_syntax_inits = 1
  " The default methods for highlighting.  Can be overridden later
  " hi link grdStatement	Statement
  " hi link grdLabel		Special
  hi link grdBoundaryDefinitions	Conditional
  " hi link grdConditional	Conditional
  " hi link grdRepeat		Repeat
  " hi link grdFunction		Repeat
  " hi link grdTodo		Todo
  hi link grdNumber		Number
  hi link grdFloat		Float
  " hi link grdLogicalConstant	Constant
  " hi link grdCommentStart	Comment
  " hi link grdComment		Comment
  " hi link grdCommentL		Comment
  " hi link grdType		Type
  " hi link grdImplicit		Special
  " hi link grdPrint		Operator
  " hi link grdOperator		Operator
  hi link grdKeyword		Operator
  " hi link grdIdentifier	Identifier
  " hi link grdPreCondit	PreCondit
  " hi link grdString		String
  " hi link grdOptions		PreProc
  " hi link grdOption2		PreProc
endif
"
let b:current_syntax = "grd"
"
"EOF	vim: ts=8 noet tw=120 sw=8 sts=0
