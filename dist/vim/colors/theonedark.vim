hi! clear

if exists("syntax_on")
  syntax reset
endif

set t_Co=256

if has("nvim") | let $NVIM_TUI_ENABLE_TRUE_COLOR=1 | endif
if has("termguicolors") | set termguicolors | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax Groups (descriptions and ordering from `:h w18`)

hi!   Comment          guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi!   Constant         guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   String           guifg=#98c379 ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   Character        guifg=#98c379 ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   Number           guifg=#d19a66 ctermfg=173 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   Boolean          guifg=#d19a66 ctermfg=173 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   Float            guifg=#d19a66 ctermfg=173 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   Identifier       guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   Function         guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   Statement        guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   Conditional      guifg=#c678dd ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   Repeat           guifg=#c678dd ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   Label            guifg=#c678dd ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   Operator         guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   Keyword          guifg=#c678dd ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   Exception        guifg=#c678dd ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   PreProc          guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   Include          guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   Define           guifg=#c678dd ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   Macro            guifg=#c678dd ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   PreCondit        guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   Type             guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   StorageClass     guifg=#c678dd ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   Structure        guifg=#c678dd ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   Typedef          guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   Special          guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   SpecialChar      guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   Tag              guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   Delimiter        guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   SpecialComment   guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   Debug            guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   Underlined       gui=underline cterm=underline
hi!   Ignore           gui=NONE cterm=NONE
hi!   Error            guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   Todo             guifg=#c678dd ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlighting Groups (descriptions and ordering from `:h highlight-groups`)

hi!   ColorColumn        guifg=NONE ctermfg=NONE guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
hi!   Conceal            guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   Cursor             guifg=#282c34 ctermfg=236 guibg=#61afef ctermbg=75 gui=NONE cterm=NONE
hi!   CursorIM           guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
hi!   CursorColumn       guifg=NONE ctermfg=NONE guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
hi!   CursorLine         guifg=NONE ctermfg=NONE guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
hi!   Directory          guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   DiffAdd            guifg=#282c34 ctermfg=236 guibg=#98c379 ctermbg=108 gui=NONE cterm=NONE
hi!   DiffChange         guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi!   DiffDelete         guifg=#282c34 ctermfg=236 guibg=#e06c75 ctermbg=168 gui=NONE cterm=NONE
hi!   DiffText           guifg=#282c34 ctermfg=236 guibg=#e5c07b ctermbg=180 gui=NONE cterm=NONE
hi!   EndOfBuffer        guifg=#282c34 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   ErrorMsg           guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   VertSplit          guifg=#21252B ctermfg=235 guibg=#21252B ctermbg=235 gui=NONE cterm=NONE
hi!   Folded             guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   FoldColumn         guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   SignColumn         guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   IncSearch          guifg=#282c34 ctermfg=236 guibg=#61afef ctermbg=75 gui=NONE cterm=NONE
hi!   LineNr             guifg=#4B5263 ctermfg=240 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   CursorLineNr       guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   MatchParen         guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi!   ModeMsg            guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   MoreMsg            guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   NonText            guifg=#3B4048 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   Normal             guifg=#abb2bf ctermfg=249 guibg=#282c34 ctermbg=236 gui=NONE cterm=NONE
hi!   Pmenu              guifg=NONE ctermfg=NONE guibg=#3E4452 ctermbg=238 gui=NONE cterm=NONE
hi!   PmenuSel           guifg=#282c34 ctermfg=236 guibg=#61afef ctermbg=75 gui=NONE cterm=NONE
hi!   PmenuSbar          guifg=NONE ctermfg=NONE guibg=#3B4048 ctermbg=238 gui=NONE cterm=NONE
hi!   PmenuThumb         guifg=NONE ctermfg=NONE guibg=#abb2bf ctermbg=249 gui=NONE cterm=NONE
hi!   Question           guifg=#c678dd ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   QuickFixLine       guifg=#282c34 ctermfg=236 guibg=#e5c07b ctermbg=180 gui=NONE cterm=NONE
hi!   Search             guifg=#282c34 ctermfg=236 guibg=#61afef ctermbg=75 gui=NONE cterm=NONE
hi!   SpecialKey         guifg=#3B4048 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   SpellBad           gui=undercurl cterm=undercurl
hi!   SpellCap           gui=undercurl cterm=undercurl
hi!   SpellLocal         gui=undercurl cterm=undercurl
hi!   SpellRare          gui=undercurl cterm=undercurl
hi!   StatusLine         guifg=#abb2bf ctermfg=249 guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
hi!   StatusLineNC       guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   StatusLineTerm     guifg=#abb2bf ctermfg=249 guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
hi!   StatusLineTermNC   gui=NONE cterm=NONE
hi!   TabLine            guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   TabLineFill        guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   TabLineSel         guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   Terminal           guifg=#abb2bf ctermfg=249 guibg=#282c34 ctermbg=236 gui=NONE cterm=NONE
hi!   Title              guifg=#98c379 ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   Visual             guifg=NONE ctermfg=NONE guibg=#3E4452 ctermbg=238 gui=NONE cterm=NONE
hi!   VisualNOS          guifg=NONE ctermfg=NONE guibg=#3E4452 ctermbg=238 gui=NONE cterm=NONE
hi!   WarningMsg         guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi!   WildMenu           guifg=#282c34 ctermfg=236 guibg=#61afef ctermbg=75 gui=NONE cterm=NONE


" Language
" highlight   ClassName          guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
" highlight   Property           guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Diff

if &diff
  highlight! CursorLine         gui=underline cterm=underline
endif



" " Termdebug highlighting for Vim 8.1+
"
" " See `:h hl-debugPC` and `:h hl-debugBreakpoint`.
" call s:h("debugPC", { "bg": s:special_grey }) " the current position
" call s:h("debugBreakpoint", { "fg": s:black, "bg": s:red }) " a breakpoint
"
" "
"
" " Language-Specific Highlighting
"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language: CSS
" => https://github.com/neovim/neovim/blob/dd7355358edc40734afcce695432756859377eb8/runtime/syntax/css.vim

hi! cssAttrComma         guifg=#c678dd ctermfg=176
hi! cssAttributeSelector guifg=#98c379 ctermfg=108
hi! cssBraces            guifg=#abb2bf ctermfg=249
hi! cssClassName         guifg=#d19a66 ctermfg=173
hi! cssClassNameDot      guifg=#d19a66 ctermfg=173
hi! cssDefinition        guifg=#c678dd ctermfg=176
hi! cssFontAttr          guifg=#d19a66 ctermfg=173
hi! cssFontDescriptor    guifg=#c678dd ctermfg=176
hi! cssFunctionName      guifg=#61afef ctermfg=75
hi! cssIdentifier        guifg=#61afef ctermfg=75
hi! cssImportant         guifg=#c678dd ctermfg=176
hi! cssInclude           guifg=#abb2bf ctermfg=249
hi! cssIncludeKeyword    guifg=#c678dd ctermfg=176
hi! cssMediaType         guifg=#d19a66 ctermfg=173
hi! cssProp              guifg=#abb2bf ctermfg=249
hi! cssPseudoClassId     guifg=#56b6c2 ctermfg=73
hi! cssPseudoClassId     guifg=#d19a66 ctermfg=173
hi! cssSelectorOp        guifg=#c678dd ctermfg=176
hi! cssSelectorOp2       guifg=#c678dd ctermfg=176
hi! cssTagName           guifg=#e06c75 ctermfg=168
hi! cssUnitDecorators    guifg=#e06c75 ctermfg=168

" scss
hi! scssSelectorChar guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! scssSelectorName guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE


" " https://github.com/cakebaker/scss-syntax.vim
" call s:h("scssExtend", { "fg": s:purple })
" call s:h("scssImport", { "fg": s:purple })
" call s:h("scssInclude", { "fg": s:purple })
" call s:h("scssMixin", { "fg": s:purple })
" call s:h("scssSelectorName", { "fg": s:dark_yellow })
" call s:h("scssVariable", { "fg": s:purple })

" " Sass
" " https://github.com/tpope/vim-haml
" call s:h("sassAmpersand", { "fg": s:red })
" call s:h("sassClass", { "fg": s:dark_yellow })
" call s:h("sassControl", { "fg": s:purple })
" call s:h("sassExtend", { "fg": s:purple })
" call s:h("sassFor", { "fg": s:white })
" call s:h("sassFunction", { "fg": s:cyan })
" call s:h("sassId", { "fg": s:blue })
" call s:h("sassInclude", { "fg": s:purple })
" call s:h("sassMedia", { "fg": s:purple })
" call s:h("sassMediaOperators", { "fg": s:white })
" call s:h("sassMixin", { "fg": s:purple })
" call s:h("sassMixinName", { "fg": s:blue })
" call s:h("sassMixing", { "fg": s:purple })
" call s:h("sassVariable", { "fg": s:purple })



" " Fish Shell
" call s:h("fishKeyword", { "fg": s:purple })
" call s:h("fishConditional", { "fg": s:purple })
"
" " Go
" call s:h("goDeclaration", { "fg": s:purple })
hi! goCoverageCovered guifg=#98c379 ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! goCoverageUncover guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
" highlight GoDebugBreakpoint ctermfg=0 ctermbg=117 guifg=Black guibg=#BAD4F5
" highlight GoDebugCurrent ctermfg=7 ctermbg=12 guifg=White guibg=DarkBlue


" " HTML
hi! htmlArg            guifg=#d19a66 ctermfg=173
hi! htmlEndTag         guifg=#abb2bf ctermfg=249
hi! htmlH1             guifg=#abb2bf ctermfg=249
hi! htmlH2             guifg=#abb2bf ctermfg=249
hi! htmlH3             guifg=#abb2bf ctermfg=249
hi! htmlH4             guifg=#abb2bf ctermfg=249
hi! htmlH5             guifg=#abb2bf ctermfg=249
hi! htmlH6             guifg=#abb2bf ctermfg=249
hi! htmlLink           guifg=#abb2bf ctermfg=249
hi! htmlSpecialChar    guifg=#d19a66 ctermfg=173
hi! htmlSpecialTagName guifg=#e06c75 ctermfg=168
hi! htmlTag            guifg=#abb2bf ctermfg=249
hi! htmlTagN           guifg=#e06c75 ctermfg=168
hi! htmlTagName        guifg=#e06c75 ctermfg=168
hi! htmlTitle          guifg=#abb2bf ctermfg=249

hi! htmlBold                term=bold                  cterm=bold                  gui=bold
hi! htmlBoldUnderline       term=bold,underline        cterm=bold,underline        gui=bold,underline
hi! htmlBoldItalic          term=bold,italic           cterm=bold,italic           gui=bold,italic
hi! htmlBoldUnderlineItalic term=bold,italic,underline cterm=bold,italic,underline gui=bold,italic,underline
hi! htmlUnderline           term=underline             cterm=underline             gui=underline
hi! htmlUnderlineItalic     term=italic,underline      cterm=italic,underline      gui=italic,underline
hi! htmlItalic              term=italic                cterm=italic                gui=italic



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme: groups
hi! todNormal          guifg=#abb2bf ctermfg=249
hi! todModuleName      guifg=#e5c07b ctermfg=180
hi! todBoolean         guifg=#56b6c2 ctermfg=73
hi! todBraces          guifg=#abb2bf ctermfg=249
hi! todClassName       guifg=#e5c07b ctermfg=180
hi! todFunctionName    guifg=#61afef ctermfg=75
hi! todNull            guifg=#d19a66 ctermfg=173
hi! todProperty        guifg=#e06c75 ctermfg=168
hi! todReturn          guifg=#c678dd ctermfg=176
hi! todVariable        guifg=#c678dd ctermfg=176
hi! todFunction        guifg=#c678dd ctermfg=176
hi! todKeyword         guifg=#c678dd ctermfg=176
hi! todImport          guifg=#61afef ctermfg=75
hi! todNumber          guifg=#d19a66 ctermfg=173
hi! todStatic          guifg=#c678dd ctermfg=176
hi! todSuper           guifg=#56b6c2 ctermfg=73
hi! todThis            guifg=#56b6c2 ctermfg=73
hi! todOperatorSymbol  guifg=#56b6c2 ctermfg=73
hi! todOperatorKeyword guifg=#56b6c2 ctermfg=73
hi! todVariableName    guifg=#abb2bf ctermfg=249



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language: JavaScript

" pangloss/vim-javascript => sheerun/vim-polyglot
"
" not perfect:
" - arrow function braces

hi! link jsArrowFunction   todFunction
hi! link jsBooleanFalse    todBoolean
hi! link jsBooleanTrue     todBoolean
hi! link jsClassDefinition todClassName
hi! link jsClassFuncName   todFunctionName
hi! link jsFuncName        todFunctionName
hi! link jsFunction        todFunction
hi! link jsFunctionKey     todProperty
hi! link jsModuleKeyword   todModuleName
hi! link jsReturn          todReturn
hi! link jsStatic          todStatic
hi! link jsThis            todThis
hi! link jsOperator        todOperatorSymbol
hi! link jsOperatorKeyword todOperatorKeyword

" yuezk/vim-js

hi! link jsBraces          todBraces
hi! link jsClassName       todClassName
hi! link jsConstructor     todFunctionName
hi! link jsImport          todImport
hi! link jsModuleName      todModuleName
hi! link jsNewClassName    todClassName
hi! link jsNumberDot       todNumber
hi! link jsParens          todParens
hi! link jsReturn          todReturn
hi! link jsVariableType    todVariable
hi! link jsSuper           todSuper
hi! link jsIdentifierProp  todProperty
hi! link jsTopOperator     todOperatorSymbol
hi! link jsNew             todOperatorKeyword
hi! link jsIfCondition     todOperatorSymbol
hi! link jsComma           todNormal

" axmellon/vim-jsx-pretty


" othree/yajs.vim
"
" not perfect:
" - moduleName
" - property
" - new className

hi! link javascriptArrowFunc         todKeyword
hi! link javascriptBoolean           todBoolean
hi! link javascriptBraces            todBraces
hi! link javascriptClassName         todClassName
hi! link javascriptClassSuper        todSuper
hi! link javascriptClassSuperName    todClassName
hi! link javascriptEndColons         toEndColon
hi! link javascriptFunctionMethod    todFunctionName
hi! link javascriptNull              todNull
hi! link javascriptNumber            todNumber
hi! link javascriptObjectLabel       todProperty
hi! link javascriptObjectMethodName  todFunctionName
hi! link javascriptProp              todProperty
hi! link javascriptReflectMethod     todFunctionName
hi! link javascriptReturn            todReturn
hi! link javascriptUndefined         todNull
hi! link javascriptVariable          todVariable
hi! link javascriptOpSymbol          todOperatorSymbol
hi! link javascriptOpSymbols         todOperatorSymbol
hi! link javascriptOperator          todOperatorKeyword
hi! link javascriptArrowFuncArg      todVariableName

" ???
" hi! link javascriptIdentifierName todFunctionName

" highlight javaScriptBraces   guifg=#abb2bf ctermfg=249 gui=NONE cterm=NONE
" highlight javaScriptFunction guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
" highlight javaScriptNumber   guifg=#d19a66 ctermfg=173 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
" highlight javaScriptNull     gui=NONE cterm=NONE


" call s:h("javaScriptIdentifier", { "fg": s:purple })
" call s:h("javaScriptNumber", { "fg": s:dark_yellow })
" call s:h("javaScriptRequire", { "fg": s:cyan })
" call s:h("javaScriptReserved", { "fg": s:purple })
"




" highlight jsClassDefinitio guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE


" " https://github.com/pangloss/vim-javascript

" call s:h("jsArrowFunction", { "fg": s:purple })
" call s:h("jsClassKeyword", { "fg": s:purple })
" call s:h("jsClassMethodType", { "fg": s:purple })
" call s:h("jsDocParam", { "fg": s:blue })
" call s:h("jsDocTags", { "fg": s:purple })
" call s:h("jsExport", { "fg": s:purple })
" call s:h("jsExportDefault", { "fg": s:purple })
" call s:h("jsExtendsKeyword", { "fg": s:purple })
" call s:h("jsFrom", { "fg": s:purple })
" call s:h("jsFuncCall", { "fg": s:blue })
" highlight link jsFunction Structure
" call s:h("jsGenerator", { "fg": s:yellow })
" call s:h("jsGlobalObjects", { "fg": s:yellow })
" call s:h("jsImport", { "fg": s:purple })
" call s:h("jsModuleAs", { "fg": s:purple })
" call s:h("jsModuleWords", { "fg": s:purple })
" call s:h("jsModules", { "fg": s:purple })
" highlight jsNull     gui=NONE cterm=NONE
" call s:h("jsOperator", { "fg": s:purple })
" call s:h("jsStorageClass", { "fg": s:purple })
" call s:h("jsSuper", { "fg": s:red })
" highlight jsTemplateBraces guifg=#e06c75 ctermfg=168 gui=NONE cterm=NONE
" call s:h("jsTemplateVar", { "fg": s:green })
" call s:h("jsThis", { "fg": s:red })
" highlight jsUndefined     gui=NONE cterm=NONE
" TODO: diferenciate between null and undefined?

" " https://github.com/othree/yajs.vim


" call s:h("javascriptArrowFunc", { "fg": s:purple })
" call s:h("javascriptClassExtends", { "fg": s:purple })
" call s:h("javascriptClassKeyword", { "fg": s:purple })
" call s:h("javascriptDocNotation", { "fg": s:purple })
" call s:h("javascriptDocParamName", { "fg": s:blue })
" call s:h("javascriptDocTags", { "fg": s:purple })
" call s:h("javascriptEndColons", { "fg": s:white })
" call s:h("javascriptExport", { "fg": s:purple })
" call s:h("javascriptFuncArg", { "fg": s:white })
" call s:h("javascriptFuncKeyword", { "fg": s:purple })
" call s:h("javascriptIdentifier", { "fg": s:red })
" call s:h("javascriptImport", { "fg": s:purple })
" call s:h("javascriptMethodName", { "fg": s:white })
" call s:h("javascriptObjectLabel", { "fg": s:white })
" call s:h("javascriptOpSymbol", { "fg": s:cyan })
" call s:h("javascriptOpSymbols", { "fg": s:cyan })
" call s:h("javascriptPropertyName", { "fg": s:green })
" call s:h("javascriptTemplateSB", { "fg": s:dark_red })
" call s:h("javascriptVariable", { "fg": s:purple })


" highlight javascriptArrowFunc", { "fg": s:purple })
" highlight javascriptClassExtends", { "fg": s:purple })
" highlight javascriptClassKeyword", { "fg": s:purple })
" highlight javascriptDocNotation", { "fg": s:purple })
" highlight javascriptDocParamName", { "fg": s:blue })
" highlight javascriptDocTags", { "fg": s:purple })
" highlight javascriptEndColons", { "fg": s:white })
" highlight javascriptExport", { "fg": s:purple })
" highlight javascriptFuncArg", { "fg": s:white })
" highlight javascriptFuncKeyword", { "fg": s:purple })
" highlight javascriptIdentifier", { "fg": s:red })
" highlight javascriptImport", { "fg": s:purple })
" highlight javascriptMethodName", { "fg": s:white })
" highlight javascriptObjectLabel", { "fg": s:white })
" highlight javascriptOpSymbol", { "fg": s:cyan })
" highlight javascriptOpSymbols", { "fg": s:cyan })
" highlight javascriptPropertyName", { "fg": s:green })
" highlight javascriptTemplateSB", { "fg": s:dark_red })
" highlight javascriptVariable", { "fg": s:purple })


" hi! link jsArrowFunction           Operator
" hi! link jsClassMethodType         Keyword
" hi! link jsDestructuringAssignment DraculaOrangeItalic
" hi! link jsDocParam                DraculaOrangeItalic
" hi! link jsDocTags                 Keyword
" hi! link jsDocType                 Type
" hi! link jsDocTypeBrackets         DraculaCyan
" hi! link jsFuncArgOperator         Operator
" hi! link jsFunction                Keyword
" hi! link jsTemplateBraces          Special


" highlight link jsVariableDef Identifier
" hi! jsObjectKey  guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
" hi! jsObjectProp guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

" " JSON
hi! jsonCommentError guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=italic cterm=italic
" call s:h("jsonKeyword", { "fg": s:red })
hi! jsonBoolean  guifg=#d19a66 ctermfg=173 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! jsonNumber   guifg=#d19a66 ctermfg=173 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! jsonString   guifg=#98c379 ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE


" call s:h("jsonQuote", { "fg": s:white })
"
" call s:h("jsonMissingCommaError", { "fg": s:red, "gui": "reverse" })
" call s:h("jsonNoQuotesError", { "fg": s:red, "gui": "reverse" })
" call s:h("jsonNumError", { "fg": s:red, "gui": "reverse" })
" call s:h("jsonStringSQError", { "fg": s:red, "gui": "reverse" })
" call s:h("jsonSemicolonError", { "fg": s:red, "gui": "reverse" })
"
" " LESS
" call s:h("lessVariable", { "fg": s:purple })
" call s:h("lessAmpersandChar", { "fg": s:white })
" call s:h("lessClass", { "fg": s:dark_yellow })
"
" " Markdown
hi! mkdHeading guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

" mkdItalic      xxx cleared
" mkdBold        xxx cleared
" mkdBoldItalic  xxx cleared
" mkdDelimiter   xxx links to Delimiter
" mkdFootnotes   xxx links to htmlLink
" mkdID          xxx links to Identifier
" mkdURL         xxx links to htmlString
" mkdLink        xxx links to htmlLink
" mkdInlineURL   xxx links to htmlLink
" mkdLinkDefTarget xxx links to mkdURL
" mkdLinkDef     xxx links to mkdID
" mkdLinkTitle   xxx links to htmlString
" mkdHeading     xxx cleared
" mkdLineBreak   xxx links to Visual
" mkdBlockquote  xxx links to Comment
" mkdCodeDelimiter xxx links to String
" mkdCode        xxx links to String
" mkdFootnote    xxx links to Comment
" mkdListItem    xxx links to Identifier
" mkdListItemLine xxx cleared
" mkdNonListItemBlock xxx cleared
" mkdRule        xxx links to Identifier

hi! markdownCode guifg=#98c379 ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! markdownCodeBlock guifg=#98c379 ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! markdownCodeDelimiter guifg=#98c379 ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"
" call s:h("markdownRule", { "fg": s:comment_grey })
" call s:h("markdownHeadingRule", { "fg": s:comment_grey })

hi! markdownHeadingDelimiter guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! markdownH1 guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! markdownH2 guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! markdownH3 guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! markdownH4 guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! markdownH5 guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! markdownH6 guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
" call s:h("markdownIdDelimiter", { "fg": s:purple })
" call s:h("markdownId", { "fg": s:purple })
hi! markdownBlockquote guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=italic cterm=italic
" call s:h("markdownBlockquote", { "fg": s:comment_grey })
hi! markdownItalic guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi! markdownBold   guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=bold cterm=bold
" call s:h("markdownItalic", { "fg": s:purple, "gui": "italic", "cterm": "italic" })
" call s:h("markdownBold", { "fg": s:dark_yellow, "gui": "bold", "cterm": "bold" })
" call s:h("markdownListMarker", { "fg": s:red })
" call s:h("markdownOrderedListMarker", { "fg": s:red })
" call s:h("markdownIdDeclaration", { "fg": s:blue })
hi! markdownLinkText guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! markdownLinkDelimiter guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! markdownUrl guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"
" " Perl
" call s:h("perlFiledescRead", { "fg": s:green })
" call s:h("perlFunction", { "fg": s:purple })
" call s:h("perlMatchStartEnd",{ "fg": s:blue })
" call s:h("perlMethod", { "fg": s:purple })
" call s:h("perlPOD", { "fg": s:comment_grey })
" call s:h("perlSharpBang", { "fg": s:comment_grey })
" call s:h("perlSpecialString",{ "fg": s:cyan })
" call s:h("perlStatementFiledesc", { "fg": s:red })
" call s:h("perlStatementFlow",{ "fg": s:red })
" call s:h("perlStatementInclude", { "fg": s:purple })
" call s:h("perlStatementScalar",{ "fg": s:purple })
" call s:h("perlStatementStorage", { "fg": s:purple })
" call s:h("perlSubName",{ "fg": s:yellow })
" call s:h("perlVarPlain",{ "fg": s:blue })
"
" " PHP
hi! phpClass         guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! phpFunction      guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! phpRegion        guifg=#abb2bf ctermfg=249 guibg=#282c34 ctermbg=236 gui=NONE cterm=NONE
hi! phpUseClass      guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! phpClassExtends  guifg=#98c379 ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! phpParent        guifg=#abb2bf ctermfg=249 gui=NONE cterm=NONE
hi! link phpInclude Keyword
hi! link phpVarSelector Identifier



" call s:h("phpVarSelector", { "fg": s:red })
" call s:h("phpOperator", { "fg": s:white })
" call s:h("phpParent", { "fg": s:white })
" call s:h("phpMemberSelector", { "fg": s:white })
" call s:h("phpType", { "fg": s:purple })
" call s:h("phpKeyword", { "fg": s:purple })
" call s:h("phpUseAlias", { "fg": s:white })
" call s:h("phpInclude", { "fg": s:purple })
" call s:h("phpDocTags", { "fg": s:white })
" call s:h("phpFunction", { "fg": s:blue })
" call s:h("phpFunctions", { "fg": s:cyan })
" call s:h("phpMethodsVar", { "fg": s:dark_yellow })
" call s:h("phpMagicConstants", { "fg": s:dark_yellow })
" call s:h("phpSuperglobals", { "fg": s:red })
" call s:h("phpConstants", { "fg": s:dark_yellow })
"
" " Ruby
" call s:h("rubyBlockParameter", { "fg": s:red})
" call s:h("rubyBlockParameterList", { "fg": s:red })
" call s:h("rubyClass", { "fg": s:purple})
" call s:h("rubyConstant", { "fg": s:yellow})
" call s:h("rubyControl", { "fg": s:purple })
" call s:h("rubyEscape", { "fg": s:red})
" call s:h("rubyFunction", { "fg": s:blue})
" call s:h("rubyGlobalVariable", { "fg": s:red})
" call s:h("rubyInclude", { "fg": s:blue})
" call s:h("rubyIncluderubyGlobalVariable", { "fg": s:red})
" call s:h("rubyInstanceVariable", { "fg": s:red})
" call s:h("rubyInterpolation", { "fg": s:cyan })
" call s:h("rubyInterpolationDelimiter", { "fg": s:red })
" call s:h("rubyInterpolationDelimiter", { "fg": s:red})
" call s:h("rubyRegexp", { "fg": s:cyan})
" call s:h("rubyRegexpDelimiter", { "fg": s:cyan})
" call s:h("rubyStringDelimiter", { "fg": s:green})
" call s:h("rubySymbol", { "fg": s:cyan})
"

"
" " TeX
" call s:h("texStatement", { "fg": s:purple })
" call s:h("texSubscripts", { "fg": s:dark_yellow })
" call s:h("texSuperscripts", { "fg": s:dark_yellow })
" call s:h("texTodo", { "fg": s:dark_red })
" call s:h("texBeginEnd", { "fg": s:purple })
" call s:h("texBeginEndName", { "fg": s:blue })
" call s:h("texMathMatcher", { "fg": s:blue })
" call s:h("texMathDelim", { "fg": s:blue })
" call s:h("texDelimiter", { "fg": s:dark_yellow })
" call s:h("texSpecialChar", { "fg": s:dark_yellow })
" call s:h("texCite", { "fg": s:blue })
" call s:h("texRefZone", { "fg": s:blue })
"
" " TypeScript
" call s:h("typescriptReserved", { "fg": s:purple })
" call s:h("typescriptEndColons", { "fg": s:white })
" call s:h("typescriptBraces", { "fg": s:white })
"
" " XML
hi! xmlTag     guifg=#abb2bf ctermfg=249 gui=NONE cterm=NONE
hi! xmlEndTag  guifg=#abb2bf ctermfg=249 gui=NONE cterm=NONE
hi! xmlTagName guifg=#e06c75 ctermfg=168 gui=NONE cterm=NONE
hi! xmlAttrib  guifg=#d19a66 ctermfg=173 gui=NONE cterm=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin: airblade/vim-gitgutter

hi! GitGutterAdd    guifg=#98c379 ctermfg=108 gui=NONE cterm=NONE
hi! GitGutterChange guifg=#e5c07b ctermfg=180 gui=NONE cterm=NONE
hi! GitGutterDelete guifg=#e06c75 ctermfg=168 gui=NONE cterm=NONE

"
" " easymotion/vim-easymotion
" call s:h("EasyMotionTarget", { "fg": s:red, "gui": "bold", "cterm": "bold" })
" call s:h("EasyMotionTarget2First", { "fg": s:yellow, "gui": "bold", "cterm": "bold" })
" call s:h("EasyMotionTarget2Second", { "fg": s:dark_yellow, "gui": "bold", "cterm": "bold" })
" call s:h("EasyMotionShade",  { "fg": s:comment_grey })
"


" Lua

" highlight link luaParens           Text
" highlight link luaBraces           Text
" highlight link luaBrackets         Text
" highlight link luaBuiltIn          Special
" highlight link luaComment          Comment
" highlight link luaCommentLongTag   luaCommentLong
" highlight link luaCommentLong      luaComment
" highlight link luaCommentTodo      Todo
" highlight link luaCond             Conditional
" highlight link luaConstant         Constant
" highlight link luaDocTag           Underlined
" highlight link luaEllipsis         Special
" highlight link luaElse             Conditional
" highlight link luaError            Error
" highlight link luaFloat            Float
" highlight link luaFuncArgName      Noise
" highlight link luaFuncCall         PreProc
" highlight link luaFuncId           Text
" highlight link luaFuncName         Function
" highlight luaFuncTable        guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
" highlight link luaFuncKeyword      luaFunction
" highlight link luaFunction         Function
" highlight link luaFuncParens       Text
" highlight link luaGoto             luaStatement
" highlight link luaGotoLabel        Noise
" highlight link luaIn               Repeat
" highlight link luaLabel            Label
hi! link luaLocal            StorageClass
" highlight link luaNumber           Number
" highlight link luaSymbolOperator   luaOperator
" highlight link luaOperator         Operator
" highlight link luaRepeat           Repeat
" highlight link luaSemiCol          Delimiter
" highlight link luaSpecialTable     Special
" highlight link luaSpecialValue     PreProc
" highlight link luaStatement        Statement
" highlight link luaString           String
" highlight link luaStringLong       luaString
" highlight link luaStringSpecial    SpecialChar
" highlight link luaErrHand          Exception



" viml
hi! link vimLet StorageClass
hi! link vimVar Normal
hi! link vimCommand Structure

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin: mhinz/vim-signify

hi! SignifySignAdd    guifg=#98c379 ctermfg=108 gui=NONE cterm=NONE
hi! SignifySignChange guifg=#e5c07b ctermfg=180 gui=NONE cterm=NONE
hi! SignifySignDelete guifg=#e06c75 ctermfg=168 gui=NONE cterm=NONE


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin: neomake/neomake

hi! NeomakeErrorSign   guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! NeomakeWarningSign guifg=#d19a66 ctermfg=173 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! NeomakeInfoSign    guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin: tpope/vim-fugitive

hi! diffAdded    guifg=#98c379 ctermfg=108 gui=NONE cterm=NONE
hi! diffRemoved  guifg=#e06c75 ctermfg=168 gui=NONE cterm=NONE


" " Git Highlighting

hi! gitcommitComment guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=italic cterm=italic
" call s:h("gitcommitUnmerged", { "fg": s:green })
" call s:h("gitcommitOnBranch", {})
" call s:h("gitcommitBranch", { "fg": s:purple })
" call s:h("gitcommitDiscardedType", { "fg": s:red })
" call s:h("gitcommitSelectedType", { "fg": s:green })
" call s:h("gitcommitHeader", {})
" call s:h("gitcommitUntrackedFile", { "fg": s:cyan })
" call s:h("gitcommitDiscardedFile", { "fg": s:red })
" call s:h("gitcommitSelectedFile", { "fg": s:green })
" call s:h("gitcommitUnmergedFile", { "fg": s:yellow })
" call s:h("gitcommitFile", {})
" call s:h("gitcommitSummary", { "fg": s:white })
" call s:h("gitcommitOverflow", { "fg": s:red })
" hi link gitcommitNoBranch gitcommitBranch
" hi link gitcommitUntracked gitcommitComment
" hi link gitcommitDiscarded gitcommitComment
" hi link gitcommitSelected gitcommitComment
" hi link gitcommitDiscardedArrow gitcommitDiscardedFile
" hi link gitcommitSelectedArrow gitcommitSelectedFile
" hi link gitcommitUnmergedArrow gitcommitUnmergedFile

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin: coc.nvim

hi! CocHighlightText guifg=#282c34 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! CocUnderline     gui=underline cterm=underline
hi! CocCodeLens      guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=italic cterm=italic
hi! link CocHighlightTextRead CocHighlightText
hi! link CocHighlightTextWrite CocHighlightText
"
hi! CocErrorSign           guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! link CocErrorFloat     CocErrorSign
hi! link CocErrorHighlight CocUnderline
hi! clear CocErrorLine

hi! CocWarningSign           guifg=#d19a66 ctermfg=173 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! link CocWarningFloat     CocWarningSign
hi! link CocWarningHighlight CocUnderline
hi! clear CocWarningLine

hi! CocInfoSign           guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! link CocInfoFloat     CocInfoSign
hi! link CocInfoHighlight CocUnderline
hi! clear CocInfoLine

hi! CocHintSign           guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi! link CocHintFloat     CocHintSign
hi! link CocHintHighlight CocUnderline
hi! clear CocHintLine


" " Neovim terminal colors
"
if has("nvim")
  let g:terminal_color_0 =         '#282c34'
  let g:terminal_color_1 =         '#e06c75'
  let g:terminal_color_2 =         '#98c379'
  let g:terminal_color_3 =         '#e5c07b'
  let g:terminal_color_4 =         '#61afef'
  let g:terminal_color_5 =         '#c678dd'
  let g:terminal_color_6 =         '#56b6c2'
  let g:terminal_color_7 =         '#abb2bf'

  " TODO
  let g:terminal_color_8 =         '#5c6370'    " s:visual_grey.gui
  let g:terminal_color_9 =         '#be5046'
  let g:terminal_color_10 =        '#98c379'  " No dark version
  let g:terminal_color_11 =        '#d19a66' " s:dark_yellow.gui
  let g:terminal_color_12 =        '#61afef'   " No dark version
  let g:terminal_color_13 =        '#c678dd' " No dark version
  let g:terminal_color_14 =        '#56b6c2'   " No dark version
  let g:terminal_color_15 =        '#abb2bf' " s:comment_grey.gui
  let g:terminal_color_background = g:terminal_color_0
  let g:terminal_color_foreground = g:terminal_color_7
endif
"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin: indentLine
let g:indentLine_setColors = 0
let g:indentLine_color_gui =  '#5c6370'
let g:indentLine_color_term = '241'



" "

" Must appear at the end of the file to work around this oddity:
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
" set background=dark



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin NERDTree
"
" hi NERDTreePart     Special
" hi NERDTreePartFile Type
" hi NERDTreeExecFile Title
" hi NERDTreeDirSlash Comment

" hi NERDTreeLinkTarget Type
" hi NERDTreeLinkFile   NERDTreeFile
" hi NERDTreeLinkDir    NERDTreeDir

" hi NERDTreeDir      Directory
" hi NERDTreeFile     Normal
" hi NERDTreeOpenable NERDTreeDir
" hi NERDTreeClosable NERDTreeDir
" hi NERDTreeIgnore   ignore
" hi NERDTreeRO       WarningMsg
" hi NERDTreeFlags    Number