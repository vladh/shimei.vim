if exists("b:current_syntax")
    finish
endif

syn case match

" general
syn region shimeiComment start="#" end="$"

hi def link shimeiComment Comment

" task file
syn match shimeiProjDef "^\[[a-zA-Z0-9]\{4\}\].*"
syn match shimeiGoalDef "! \[[a-zA-Z0-9]\{4\}\].*"
syn match shimeiCompletedGoalDef "+ \[[a-zA-Z0-9]\{4\}\].*"

hi def link shimeiProjDef Keyword
hi def link shimeiGoalDef SpecialChar
hi def link shimeiCompletedGoalDef String

" log file
syn match shimeiDate "^[0-9]\{2,4\}-[0-9]\{2\}-[0-9]\{2,4\}"
syn match shimeiProjRef contained "\[[a-zA-Z0-9]\{4\}\]"
syn match shimeiGoalRef contained "\[\([a-zA-Z0-9]\{4\}\)\?![a-zA-Z0-9]\{4\}\]"
syn region shimeiProjRefContainer start="\s\+- " end="$" contains=shimeiProjRef,shimeiGoalRef

hi def link shimeiDate Keyword
hi def link shimeiProjRef Keyword
hi def link shimeiGoalRef SpecialChar
