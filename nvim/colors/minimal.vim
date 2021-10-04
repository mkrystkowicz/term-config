hi clear

if exists("syntax on")
syntax reset
endif

set t_Co=256
set signcolumn=number
let g:colors_name = "minimal"

let s:bg="#101112"
let s:bg2="#232425"
let s:bg3="#363738"
let s:bg4="#494a4b"
let s:fg="#C4C8C6"
let s:fg2="#b4b8b6"
let s:fg3="#a5a8a6"
let s:fg4="#959896"
let s:selectedtext="#D6DEE4"
let s:selected="#575C63"
let s:keyword="#cc6568"
let s:num="#B4BD73"
let s:builtin="#8ABEB7"
let s:const= "#d6dee4"
let s:comment="#575c63"
let s:func="#8ABEB7"
let s:str="#d6dee4"
let s:type="#f0c580"
let s:var="#f0c580"
let s:warning="#A54144"
let s:warning2="#DE9267"

exe 'hi Normal guifg='s:fg' guibg='s:bg
exe 'hi Visual guifg='s:selectedtext' guibg='s:selected
exe 'hi Cursor guifg='s:bg' guibg='s:fg
exe 'hi CursorLine  guibg='s:bg2
exe 'hi CursorLineNr guifg='s:str' guibg='s:bg
exe 'hi CursorColumn  guibg='s:bg2
exe 'hi ColorColumn  guibg='s:bg2
exe 'hi SignColumn guifg='s:fg' guibg='s:bg
exe 'hi LineNr guifg='s:fg2' guibg='s:bg
exe 'hi VertSplit guifg='s:bg' guibg='s:bg4
exe 'hi MatchParen guifg='s:fg' guibg='s:bg3' gui=underline'
exe 'hi StatusLine guifg='s:fg2' guibg='s:bg' gui=bold'
exe 'hi StatusLineNC guifg='s:bg4' guibg='s:bg' gui=bold'
exe 'hi Pmenu guifg='s:fg' guibg='s:bg
exe 'hi PmenuSel  guibg='s:bg2
exe 'hi IncSearch guifg='s:bg' guibg='s:keyword
exe 'hi Search ctermfg=0 ctermbg=11 guifg='s:fg' guibg='s:bg2
exe 'hi Directory guifg='s:const
exe 'hi Folded guifg='s:fg' guibg='s:bg
exe 'hi WildMenu guifg='s:str' guibg='s:bg

exe 'hi Conceal guifg='s:warning' guibg='s:bg' gui=underline'
exe 'hi Boolean guifg='s:const
exe 'hi Character guifg='s:const
exe 'hi Comment guifg='s:comment
exe 'hi Conditional guifg='s:keyword
exe 'hi Constant guifg='s:const
exe 'hi Todo guibg='s:bg
exe 'hi Define guifg='s:keyword
exe 'hi DiffAdd guifg='s:fg' guibg='s:bg' gui=bold'
exe 'hi DiffDelete guibg='s:bg
exe 'hi DiffChange  guibg=#151b3c guifg=#fafafa'
exe 'hi DiffText guifg=#ffffff guibg=#ff0000 gui=bold'
exe 'hi ErrorMsg guifg='s:warning' guibg='s:bg' gui=bold'
exe 'hi WarningMsg guifg='s:fg' guibg='s:warning2
exe 'hi Float guifg='s:const
exe 'hi Function guifg='s:func
" exe 'hi Identifier guifg='s:type'  gui=italic'
exe 'hi Identifier guifg='s:type'  gui=bold'
exe 'hi Keyword guifg='s:keyword'  gui=bold'
exe 'hi Label guifg='s:var
exe 'hi NonText guifg='s:bg' guibg='s:bg
exe 'hi Number guifg='s:const
exe 'hi Operator guifg='s:keyword
exe 'hi PreProc guifg='s:keyword
exe 'hi Special guifg='s:fg
exe 'hi SpecialKey guifg='s:fg' guibg='s:bg
exe 'hi Statement guifg='s:keyword
" exe 'hi StorageClass guifg='s:type'  gui=italic'
exe 'hi StorageClass guifg='s:type'  gui=bold'
exe 'hi String guifg='s:str
exe 'hi Tag guifg='s:keyword
exe 'hi Title guifg='s:fg'  gui=bold'
exe 'hi Todo guifg='s:fg'  gui=inverse,bold'
exe 'hi Type guifg='s:type
exe 'hi Underlined   gui=underline'

let g:terminal_color_0 = s:bg
let g:terminal_color_1 = s:warning
let g:terminal_color_2 = s:keyword
let g:terminal_color_3 = s:bg
let g:terminal_color_4 = s:func
let g:terminal_color_5 = s:builtin
let g:terminal_color_6 = s:bg3
let g:terminal_color_7 = s:str
let g:terminal_color_8 = s:bg
let g:terminal_color_9 = s:warning2
let g:terminal_color_10 = s:bg
let g:terminal_color_11 = s:var
let g:terminal_color_12 = s:type
let g:terminal_color_13 = s:const
let g:terminal_color_14 = s:bg4
let g:terminal_color_15 = s:comment

exe 'hi rubyAttribute guifg='s:builtin
exe 'hi rubyLocalVariableOrMethod guifg='s:var
" exe 'hi rubyGlobalVariable guifg='s:var' gui=italic'
exe 'hi rubyGlobalVariable guifg='s:var' gui=bold'
exe 'hi rubyInstanceVariable guifg='s:var
exe 'hi rubyKeyword guifg='s:keyword
exe 'hi rubyKeywordAsMethod guifg='s:keyword' gui=bold'
exe 'hi rubyClassDeclaration guifg='s:keyword' gui=bold'
exe 'hi rubyClass guifg='s:keyword' gui=bold'
exe 'hi rubyNumber guifg='s:const

exe 'hi pythonBuiltinFunc guifg='s:builtin

exe 'hi goBuiltins guifg='s:builtin
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_build_constraints      = 1
let g:go_highlight_chan_whitespace_error  = 1
let g:go_highlight_extra_types            = 1
let g:go_highlight_fields                 = 1
let g:go_highlight_format_strings         = 1
let g:go_highlight_function_calls         = 1
let g:go_highlight_function_parameters    = 1
let g:go_highlight_functions              = 1
let g:go_highlight_generate_tags          = 1
let g:go_highlight_operators              = 1
let g:go_highlight_space_tab_error        = 1
let g:go_highlight_string_spellcheck      = 1
let g:go_highlight_types                  = 1
let g:go_highlight_variable_assignments   = 1
let g:go_highlight_variable_declarations  = 1

exe 'hi jsBuiltins guifg='s:builtin
exe 'hi jsFunction guifg='s:keyword' gui=bold'
exe 'hi jsGlobalObjects guifg='s:type
exe 'hi jsNumber guifg='s:num
exe 'hi jsAssignmentExps guifg='s:var
exe 'hi jsLabel guibg='s:bg

exe 'hi htmlLink guifg='s:var' gui=underline'
exe 'hi htmlStatement guifg='s:keyword
exe 'hi htmlSpecialTagName guifg='s:keyword

exe 'hi mkdCode guifg='s:builtin
