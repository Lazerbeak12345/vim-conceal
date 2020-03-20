if exists('g:no_vim_conceal') || !has('conceal') || &enc != 'utf-8'
  finish
endif

" comparators
syntax match cppOperator "<=" conceal cchar=≤
syntax match cppOperator ">=" conceal cchar=≥
syntax match cppOperator "!=" conceal cchar=≠

" math related
syntax match cppOperator " / " conceal cchar=÷
syntax match cppOperator " \* " conceal cchar=×

" keywords
syntax keyword cppOperator sum conceal cchar=∑
syntax keyword cppStatement lambda conceal cchar=λ
syntax keyword cppConstant M_PI conceal cchar=π

syntax keyword cppKeyword bool conceal cchar=𝔹
syntax keyword cppKeyword double conceal cchar=𝔻
syntax keyword cppKeyword float conceal cchar=𝔽
syntax keyword cppKeyword complex conceal cchar=ℂ
syntax keyword cppKeyword true conceal cchar=𝐓
syntax keyword cppKeyword false conceal cchar=𝐅
syntax keyword cppKeyword uint32_t conceal cchar=ℕ
syntax keyword cppKeyword int32_t conceal cchar=ℤ
syntax match cppKeyword "\<std::string\>" conceal cchar=𝕊
syntax match cppOperator "<-" conceal cchar=←
syntax match cppOperator "->" conceal cchar=→
syntax match cppOperator "=>" conceal cchar=⇒
syntax match cppOperator "\:\:" conceal cchar=∷

hi link cppOperator Operator
hi link cppStatement Statement
hi link cppKeyword Keyword
hi link cppConstant Operator
hi! link conceal Operator



setlocal conceallevel=1


"Mathematical ExpressionC++ SymbolDecimal Representation
"pi M_PI3.14159265358979323846
"pi/2 M_PI_21.57079632679489661923
"pi/4 M_PI_40.785398163397448309616
"1/pi M_1_PI0.318309886183790671538
"2/pi M_1_PI0M_2_PI0.636619772367581343076
"2/sqrt(pi)pi M_2_SQRTPI1.12837916709551257390
"sqrt(2)sqrt M_SQRT21.41421356237309504880
"1/sqrt(2)sqrt M_SQRT1_20.707106781186547524401
"ExpressionC M_E2.71828182845904523536
"log_2(e)log_2 M_LOG2E1.44269504088896340736
"log_10(e)log_10 M_LOG10E0.434294481903251827651
"log_e(2)log_e M_LN20.693147180559945309417
"log_e(10)10 M_LN102.30258509299404568402
"
"'q' option to disable concealing of scientific constants (e.g. π)
"'℘' option to disable concealing of powerset function
"'𝐒' option to disable String type to 𝐒 concealing
"'𝐓' option to disable Text type to 𝐓 concealing
"'𝐄' option to disable Either/Right/Left to 𝐄/𝑅/𝐿 concealing
"'𝐌' option to disable Maybe/Just/Nothing to 𝐌/𝐽/𝑁 concealing
"'A' option to not try to preserve indentation
"'s' option to disable space consumption after ∑,∏,√ and ¬ functions
"'*' option to enable concealing of asterisk with '⋅' sign
"'x' option to disable default concealing of asterisk with '×' sign
"'E' option to enable ellipsis concealing with ‥  (two dot leader)
"'e' option to disable ellipsis concealing with … (ellipsis sign)
"'⇒' option to disable `implies` concealing with ⇒
"'⇔' option to disable `iff` concealing with ⇔
"'r' option to disable return (η) and join (µ) concealing
"'b' option to disable bind (left and right) concealing
"'f' option to enable formal (★) right bind concealing
"'c' option to enable encircled b/d (ⓑ/ⓓ) for right and left binds
"'h' option to enable partial concealing of binds (e.g. »=)
"'C' option to enable encircled 'm' letter ⓜ concealing for fmap
"'l' option to disable fmap/lift concealing with ↥
"'↱' option to disable mapM/forM concealing with ↱/↰
"'w' option to disable 'where' concealing with "due to"/∵ symbol
"'-' option to disable subtract/(-) concealing with ⊟
"'I' option to enable alternative ':+' concealing with with ⨢
"'i' option to disable default concealing of ':+' with ⅈ
"'R' option to disable realPart/imagPart concealing with ℜ/ℑ
"'T' option to enable True/False constants concealing with bold 𝐓/𝐅
"'t' option to disable True/False constants concealing with italic 𝑇/𝐹
"'B' option to disable Bool type to 𝔹 concealing
"'Q' option to disable Rational type to ℚ concealing
"'Z' option to disable Integer type to ℤ concealing
"'D' option to disable Double type to 𝔻 concealing
"'C' option to disable Complex type to ℂ concealing
"'1' option to disable numeric superscripts concealing, e.g. x²
"'a' option to disable alphabet superscripts concealing, e.g. xⁿ
"
