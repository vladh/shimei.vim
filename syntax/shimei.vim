if exists("b:current_syntax")
    finish
endif

syn case match

" general
syn region shimeiComment start="#" end="$"

hi def link shimeiComment Comment

" task file
syn match shimeiGoalDef "! \[[a-zA-Z0-9]\{4\}\].*"
syn match shimeiProjDef "^\[[a-zA-Z0-9]\{4\}\].*"

hi def link shimeiGoalDef SpecialChar
hi def link shimeiProjDef Keyword

" log file
syn match shimeiDate "^[0-9]\{2,4\}-[0-9]\{2\}-[0-9]\{2,4\}"
syn match shimeiGoalRef "\[[a-zA-Z0-9]\{4\}![a-zA-Z0-9]\{4\}\]"
syn match shimeiProjRef contained "\[[a-zA-Z0-9!]\{4\}\]"
syn region shimeiProjRefContainer start="\s\+- " end="$" contains=shimeiProjRef

hi def link shimeiDate Keyword
hi def link shimeiGoalRef SpecialChar
hi def link shimeiProjRef Keyword
