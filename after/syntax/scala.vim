if exists('g:no_scala_conceal') || !has('conceal') || &enc != 'utf-8'
  finish
endif

syntax match scalaNiceOperator "<-" conceal cchar=←
syntax match scalaNiceOperator "->" conceal cchar=→
syntax match scalaNiceOperator "==" conceal cchar=≟
syntax match scalaNiceOperator "===" conceal cchar=≡
syntax match scalaNiceOperator "!=" conceal cchar=≠
syntax match scalaNiceOperator "=/=" conceal cchar=≢
syntax match scalaNiceOperator ">>" conceal cchar=»

let s:extraConceal = 1

if s:extraConceal
  " Match greater than and lower than w/o messing with Kleisli composition
  syntax match scalaNiceOperator "<=\ze[^<]" conceal cchar=≤
  syntax match scalaNiceOperator ">=\ze[^>]" conceal cchar=≥

  syntax match scalaNiceOperator "=>" conceal cchar=⇒
  syntax match scalaNiceOperator "=\zs<<" conceal cchar=«

  " Redfining to get proper '::' concealing
  syntax match hs_DeclareFunction /^[a-z_(]\S*\(\s\|\n\)*::/me=e-2 nextgroup=scalaNiceOperator contains=hs_FunctionName,hs_OpFunctionName
  syntax match scalaNiceOperator "\:\:" conceal cchar=∷

  syntax match scalaNiceOperator "forall" conceal cchar=∀


  syntax match scalaNiceOperator "exists" conceal cchar=∈
endif

hi link scalaNiceOperator Operator
hi! link Conceal Operator
setlocal conceallevel=1
