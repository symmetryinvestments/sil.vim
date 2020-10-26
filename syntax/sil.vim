if exists("b:current_syntax")
  finish
endif

let b:current_syntax="sil"

" Comments.
syntax match silLineComment "\v//.*$"
syntax region silNestedComment start="\v/\+" end="\v\+/" contains=silNestedComment fold

" Strings.
syntax region silString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region silString start=/\v`/ skip=/\v[^`]/ end=/\v`/

" Characters.
syntax match silCharacter "\v'(\\.|[^'])'"

" Integers.
syntax match silNumber "\v<\d(\d|_)*>"

" Booleans.
syntax keyword silBoolean true false

" Floats.
syntax match silFloat "\v<\d(\d|_)*\.(\d|_)+>"

"Identifier	any variable name

" Special built-ins.
syntax keyword silFunction array enforce len

" Conditionals.
syntax keyword silConditional if then else

" Morphisms are a bit like Repeat (for, while, loop).
syntax keyword silMorphism map filter fold

syntax match silOperator "\v\+"
syntax match silOperator "\v-"
syntax match silOperator "\v\*"
syntax match silOperator "\v/[^/+]"
syntax match silOperator "\v\$"
syntax match silOperator "\v\="
syntax match silOperator "\v\!"
syntax match silOperator "\v\:"
syntax match silOperator "\v\~"
syntax match silOperator "\v\<"
syntax match silOperator "\v\>"
syntax match silOperator "\v\=\>"
syntax match silOperator "\v\=\="
syntax match silOperator "\v\!\="
syntax match silOperator "\v\&\&"
syntax match silOperator "\v\|\|"
syntax match silOperator "\v\|\>"
syntax match silOperator "\v\<\="
syntax match silOperator "\v\>\="
syntax keyword silOperator in

" Exceptions.
syntax keyword silException throw

syntax keyword silExternal import private public from

" Link them all up.
highlight default link silLineComment Comment
highlight default link silNestedComment Comment
"highlight default link silConstant Constant
highlight default link silString String
highlight default link silCharacter Character
highlight default link silNumber Number
highlight default link silBoolean Boolean
highlight default link silFloat Float
highlight default link silFunction Function
"highlight default link silStatement Statement
highlight default link silConditional Conditional
highlight default link silMorphism Repeat
highlight default link silOperator Operator
"highlight default link silKeyword Keyword
highlight default link silException Exception
highlight default link silExternal Include
"highlight default link silStructure Structure
"highlight default link silTypedef Typedef

