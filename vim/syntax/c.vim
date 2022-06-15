" Highlight scope and functions.

syn match cCustomDot    "\." contained
syn match cCustomPtr    "->" contained
syn match cCustomMemVar "\(\.\|->\)\h\w*" contains=cCustomDot,cCustomPtr

hi def link cCustomMemVar Identifier

syn match cCustomParen "?=(" contains=cParen,cCppParen
syn match cCustomFunc  "\w\+\s*(\@=" containedin=cCustomMemVar contains=cCustomParen
syn match cCustomScope "::"
syn match cCustomClass "\w\+\s*::" contains=cCustomScope

hi def link cCustomFunc  Function
hi def link cCustomClass Type
