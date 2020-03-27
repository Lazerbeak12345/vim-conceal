if exists('g:no_vim_conceal') || !has('conceal') || &enc != 'utf-8'
  finish
endif

" comparators
syntax match typescriptOperator "<=" conceal cchar=≤
syntax match typescriptOperator ">=" conceal cchar=≥
syntax match typescriptOperator "!==" conceal cchar=≢
syntax match typescriptOperator "<<<" conceal cchar=⋘
syntax match typescriptOperator "&&" conceal cchar=∧
syntax match typescriptOperator "||" conceal cchar=∨
syntax match typescriptOperator "++" conceal cchar=Δ
syntax match typescriptOperator "+=" conceal cchar=Δ
syntax match typescriptOperator "--" conceal cchar=∇
syntax match typescriptOperator "-=" conceal cchar=∇

" arrow functions
syntax match typescriptArrowFunction /=>/ conceal cchar=⇒

" keywords
syntax keyword typescriptNull null conceal cchar=∅
syntax keyword typescriptBooleanTrue true conceal cchar=⊤
syntax keyword typescriptBooleanFalse false conceal cchar=⊥
syntax keyword typescriptConditional if conceal cchar=▸
syntax keyword typescriptConditional else conceal cchar=▪
syntax keyword typescriptRepeat for conceal cchar=∀
syntax keyword typescriptRepeat forEach conceal cchar=∀
syntax keyword typescriptRepeat while conceal cchar=∀
syntax keyword typescriptForOperator in conceal cchar=∈
syntax keyword typescriptForOperator of conceal cchar=∋
syntax keyword typescriptReturn return conceal cchar=⤺
syntax keyword typescriptIdentifier this conceal cchar=⟐
syntax keyword typescriptIdentifier super conceal cchar=⟐
syntax keyword typescriptStatement function conceal cchar=∫
syntax keyword typescriptVariable const var let conceal cchar=●
syntax keyword typescriptStorageClass document window conceal cchar=⟁

hi link typescriptOperator Operator
hi link typescriptStatement Statement
hi link typescriptKeyword Keyword
hi link typescriptNull Special
hi link typescriptBooleanTrue Type
hi link typescriptBooleanFalse Type

hi! link Conceal Operator
hi! link Conceal StorageClass
hi! link Conceal Variable
hi! link Conceal Statement
"hi! link Conceal Special
"hi! link Conceal Type
"hi! link Conceal Boolean
"hi! link Conceal Conditional

setlocal conceallevel=1
