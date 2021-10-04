hi link htmlTag Normal
hi link htmlEndTag Normal

syn match htmlCustomArg /[A-z-.@]\+/ contained containedin=htmlTag
hi link htmlCustomArg htmlArg

hi link htmlTagN htmlTagName

syn match vueDirective /v-[a-z]\+:/ contained containedin=htmlTag
hi link vueDirective PreProc

syn match vueShorthand /[:@]/ contained containedin=htmlTag
hi link vueShorthand PreProc
