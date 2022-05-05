" Vim syntax file
" Language:	ElmerGrid
" Maintainer:	TANAKA Takayuki
" Location:     
" Last change:	Wed 02 Sep 2020 05:08:13 AM JST
"
" Installation :
" Add this file in ~/.vim/syntax/
"
" Add the following lines in your .vim/filetype.vim
" 	augroup filetypedetect
"	au! BufRead,BufNewFile *.grd		setfiletype elmergrid
"	augroup END
"
" Add the following comment at the end of your other elmergrid files
" // vim: set filetype=elmergrid :  //

" Remove any old syntax stuff hanging around
set tabstop=4
set shiftwidth=4
set expandtab
syn clear
syn case ignore
" 
" Any integer
syn match elmergridNumber		"-\=\<\d\+\>"
" floating point number, with dot, optional exponent
syn match elmergridFloat		"\<\d\+\.\d*\([edED][-+]\=\d\+\)\=\>"
" floating point number, starting with a dot, optional exponent
syn match elmergridFloat		"\.\d\+\([edED][-+]\=\d\+\)\=\>"
" floating point number, without dot, with exponent
syn match elmergridFloat		"\<\d\+[edED][-+]\=\d\+\>"
syn keyword elmergridBool		True False
"
" Comments
  syn region	elmergridCommentLine		start="!" skip="\\$" end="$"
  syn region	elmergridHeaderLine		start="\*\*\*\*\*" end="\*\*\*\*\*"
"
" Keywords
syn keyword elmergridKeyword 	Version MATC
syn match elmergridKeyword	"Coordinate \(System\|Ratios\)"
syn match elmergridKeyword	"Subcell Divisions in \(1\|2\|3\)D"
syn match elmergridKeyword	"Subcell \(Limits\|Sizes\|Origin\)"
syn match elmergridKeyword	"Material Structure in \(1\|2\|3\)D"
syn keyword elmergridKeyword	Materials Interval 
syn match elmergridKeyword	"Extrude \(Structure\|Material Mappings\|BC Offset\|Helicity\)"
syn match elmergridKeyword	"Geometry Mappings"
syn match elmergridKeyword	"Polar Radius"
syn match elmergridKeyword	"Revolve \(Radius\|Blocks\|Improve\)"
syn match elmergridKeyword	"Revolve Curve \(Direct\|Angle\|Radius\)"
syn match elmergridKeyword	"Boundary Definitions"
syn match elmergridKeyword	"End"
syn keyword elmergridKeyword	Numbering
syn match elmergridKeyword	"Reference Density"
syn match elmergridKeyword	"Surface Elements"
syn match elmergridKeyword	"Volume \(Elements\|Nodes\)"
syn match elmergridKeyword	"Element \(Nodes\|Degree\|Midpoints\|Ratios\|Densities\|Divisions\|Innernodes\)"
syn keyword elmergridKeyword	Triangles Elementtype
syn match elmergridKeyword	"Minimum Element Divisions"
syn match elmergridKeyword	"Start New Mesh"
" ===
syn keyword elmergridString	Vertical
syn match elmergridString	"Cartesian \(1\|2\|3\)D"


"
if !exists("did_elmergrid_syntax_inits")
  let did_elmergrid_syntax_inits = 1
  " The default methods for highlighting.  Can be overridden later
  " hi link elmergridStatement	Statement
  hi link elmergridLabel		Special
  hi link elmergridBoundaryDefinitions	Conditional
  " hi link elmergridConditional	Conditional
  " hi link elmergridRepeat		Repeat
  " hi link elmergridFunction		Repeat
  " hi link elmergridTodo		Todo
  hi link elmergridNumber		Number
  hi link elmergridFloat		Float
  hi link elmergridBool		Boolean
  " hi link elmergridLogicalConstant	Constant
  " hi link elmergridCommentStart	Comment
  " hi link elmergridComment		Comment
  hi link elmergridCommentLine	Comment
  hi link elmergridHeaderLine	Comment
  " hi link elmergridType		Type
  " hi link elmergridImplicit		Special
  " hi link elmergridPrint		Operator
  " hi link elmergridOperator		Operator
  hi link elmergridKeyword		Operator
  " hi link elmergridIdentifier	Identifier
  " hi link elmergridPreCondit	PreCondit
  hi link elmergridString		String
  " hi link elmergridOptions		PreProc
  " hi link elmergridOption2		PreProc
endif
"
let b:current_syntax = "elmergrid"
"
"EOF	vim: ts=8 noet tw=120 sw=8 sts=0
