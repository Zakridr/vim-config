" vim syntax file for parseltongue
" vimscript sucks. I'm done for now
"
if exists("b:current_syntax")
  finish
endif

syn keyword psl lambda
syn keyword pslCond if then else
syn keyword pslState deffun defvar in
syn match pslOp             '+\|-\|=='
syn keyword pslLoop for while
syn match pslComment "#.*$"
syn keyword pslBool true false
syn match pslNum            '\d\+'
syn region pslString        start='"' end='"' skip='\\"'
syn region pslString        start="'" end="'" skip="\\'"
" syn match    pslId /\<\(\a\|_\)\(\w\|'\)*\>/
syn keyword pslOp        print

hi def link pslCond Conditional
hi def link pslState Statement
hi def link pslLoop Repeat
hi def link pslBool Boolean
hi def link pslComment Comment
hi def link pslNum Number
hi def link pslString String
hi def link pslId       Identifier
hi def link pslOp       Operator


let b:current_syntax = "psl"
