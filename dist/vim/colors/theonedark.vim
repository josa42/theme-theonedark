highlight clear

if exists("syntax_on")
  syntax reset
endif

set t_Co=256

if has("nvim") | let $NVIM_TUI_ENABLE_TRUE_COLOR=1 | endif
if has("termguicolors") | set termguicolors | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax Groups (descriptions and ordering from `:h w18`)

highlight   Comment          guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=italic cterm=italic
highlight   Constant         guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   String           guifg=#98c379 ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   Character        guifg=#98c379 ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   Number           guifg=#d19a66 ctermfg=173 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   Boolean          guifg=#d19a66 ctermfg=173 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   Float            guifg=#d19a66 ctermfg=173 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   Identifier       guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   Function         guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   Statement        guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   Conditional      guifg=#c678dd ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   Repeat           guifg=#c678dd ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   Label            guifg=#c678dd ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   Operator         guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   Keyword          guifg=#c678dd ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   Exception        guifg=#c678dd ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   PreProc          guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   Include          guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   Define           guifg=#c678dd ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   Macro            guifg=#c678dd ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   PreCondit        guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   Type             guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   StorageClass     guifg=#c678dd ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   Structure        guifg=#c678dd ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   Typedef          guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   Special          guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   SpecialChar      guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   Tag              guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   Delimiter        guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   SpecialComment   guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   Debug            guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   Underlined       gui=underline cterm=underline
highlight   Ignore           gui=NONE cterm=NONE
highlight   Error            guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   Todo             guifg=#c678dd ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlighting Groups (descriptions and ordering from `:h highlight-groups`)

highlight   ColorColumn        guifg=NONE ctermfg=NONE guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
highlight   Conceal            guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   Cursor             guifg=#282c34 ctermfg=236 guibg=#61afef ctermbg=75 gui=NONE cterm=NONE
highlight   CursorIM           guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
highlight   CursorColumn       guifg=NONE ctermfg=NONE guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
highlight   CursorLine         guifg=NONE ctermfg=NONE guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
highlight   Directory          guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   DiffAdd            guifg=#282c34 ctermfg=236 guibg=#98c379 ctermbg=108 gui=NONE cterm=NONE
highlight   DiffChange         guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=underline cterm=underline
highlight   DiffDelete         guifg=#282c34 ctermfg=236 guibg=#e06c75 ctermbg=168 gui=NONE cterm=NONE
highlight   DiffText           guifg=#282c34 ctermfg=236 guibg=#e5c07b ctermbg=180 gui=NONE cterm=NONE
highlight   EndOfBuffer        guifg=#282c34 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   ErrorMsg           guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   VertSplit          guifg=#21252B ctermfg=235 guibg=#21252B ctermbg=235 gui=NONE cterm=NONE
highlight   Folded             guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   FoldColumn         guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   SignColumn         guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   IncSearch          guifg=#282c34 ctermfg=236 guibg=#61afef ctermbg=75 gui=NONE cterm=NONE
highlight   LineNr             guifg=#4B5263 ctermfg=240 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   CursorLineNr       guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   MatchParen         guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=underline cterm=underline
highlight   ModeMsg            guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   MoreMsg            guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   NonText            guifg=#3B4048 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   Normal             guifg=#abb2bf ctermfg=249 guibg=#282c34 ctermbg=236 gui=NONE cterm=NONE
highlight   Pmenu              guifg=NONE ctermfg=NONE guibg=#3E4452 ctermbg=238 gui=NONE cterm=NONE
highlight   PmenuSel           guifg=#282c34 ctermfg=236 guibg=#61afef ctermbg=75 gui=NONE cterm=NONE
highlight   PmenuSbar          guifg=NONE ctermfg=NONE guibg=#3B4048 ctermbg=238 gui=NONE cterm=NONE
highlight   PmenuThumb         guifg=NONE ctermfg=NONE guibg=#abb2bf ctermbg=249 gui=NONE cterm=NONE
highlight   Question           guifg=#c678dd ctermfg=176 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   QuickFixLine       guifg=#282c34 ctermfg=236 guibg=#e5c07b ctermbg=180 gui=NONE cterm=NONE
highlight   Search             guifg=#282c34 ctermfg=236 guibg=#61afef ctermbg=75 gui=NONE cterm=NONE
highlight   SpecialKey         guifg=#3B4048 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   SpellBad           gui=undercurl cterm=undercurl
highlight   SpellCap           gui=undercurl cterm=undercurl
highlight   SpellLocal         gui=undercurl cterm=undercurl
highlight   SpellRare          gui=undercurl cterm=undercurl
highlight   StatusLine         guifg=#abb2bf ctermfg=249 guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
highlight   StatusLineNC       guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   StatusLineTerm     guifg=#abb2bf ctermfg=249 guibg=#2c323c ctermbg=236 gui=NONE cterm=NONE
highlight   StatusLineTermNC   gui=NONE cterm=NONE
highlight   TabLine            guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   TabLineFill        guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   TabLineSel         guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   Terminal           guifg=#abb2bf ctermfg=249 guibg=#282c34 ctermbg=236 gui=NONE cterm=NONE
highlight   Title              guifg=#98c379 ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   Visual             guifg=NONE ctermfg=NONE guibg=#3E4452 ctermbg=238 gui=NONE cterm=NONE
highlight   VisualNOS          guifg=NONE ctermfg=NONE guibg=#3E4452 ctermbg=238 gui=NONE cterm=NONE
highlight   WarningMsg         guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight   WildMenu           guifg=#282c34 ctermfg=236 guibg=#61afef ctermbg=75 gui=NONE cterm=NONE


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

" call s:h("cssAttrComma", { "fg": s:purple })
" call s:h("cssAttributeSelector", { "fg": s:green })
highlight cssBraces       guifg=#abb2bf ctermfg=249 gui=NONE cterm=NONE
highlight cssClassName    guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight cssClassNameDot guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight cssIdentifier   guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

" highlight cssPseudoClass  guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight cssImportant guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight cssProp      guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

" call s:h("cssDefinition", { "fg": s:purple })
" call s:h("cssFontAttr", { "fg": s:dark_yellow })
" call s:h("cssFontDescriptor", { "fg": s:purple })
" call s:h("cssFunctionName", { "fg": s:blue })
" call s:h("cssInclude", { "fg": s:white })
" call s:h("cssIncludeKeyword", { "fg": s:purple })
" call s:h("cssMediaType", { "fg": s:dark_yellow })
" call s:h("cssProp", { "fg": s:white })
" call s:h("cssPseudoClassId", { "fg": s:dark_yellow })
" call s:h("cssSelectorOp", { "fg": s:purple })
" call s:h("cssSelectorOp2", { "fg": s:purple })
" call s:h("cssTagName", { "fg": s:red })

" scss
highlight scssSelectorChar guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight scssSelectorName guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE


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
highlight goCoverageCovered guifg=#98c379 ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight goCoverageUncover guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
" highlight GoDebugBreakpoint ctermfg=0 ctermbg=117 guifg=Black guibg=#BAD4F5
" highlight GoDebugCurrent ctermfg=7 ctermbg=12 guifg=White guibg=DarkBlue


" " HTML
" call s:h("htmlLink", { "fg": s:purple })
" call s:h("htmlSpecialChar", { "fg": s:dark_yellow })

highlight htmlTag            guifg=#abb2bf ctermfg=249 gui=NONE cterm=NONE
highlight htmlEndTag         guifg=#abb2bf ctermfg=249 gui=NONE cterm=NONE
highlight htmlTagName        guifg=#e06c75 ctermfg=168 gui=NONE cterm=NONE
highlight htmlSpecialTagName guifg=#e06c75 ctermfg=168 gui=NONE cterm=NONE
highlight htmlArg            guifg=#d19a66 ctermfg=173 gui=NONE cterm=NONE
highlight htmlH1             guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight htmlTitle          guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language: JavaScript

highlight javaScriptBraces   guifg=#abb2bf ctermfg=249 gui=NONE cterm=NONE
highlight javaScriptFunction guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight javaScriptNumber   guifg=#d19a66 ctermfg=173 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight javaScriptNull     gui=NONE cterm=NONE



" call s:h("javaScriptIdentifier", { "fg": s:purple })
" call s:h("javaScriptNumber", { "fg": s:dark_yellow })
" call s:h("javaScriptRequire", { "fg": s:cyan })
" call s:h("javaScriptReserved", { "fg": s:purple })
"




highlight jsClassDefinitio guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE


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
highlight link jsFunction Structure
" call s:h("jsGenerator", { "fg": s:yellow })
" call s:h("jsGlobalObjects", { "fg": s:yellow })
" call s:h("jsImport", { "fg": s:purple })
" call s:h("jsModuleAs", { "fg": s:purple })
" call s:h("jsModuleWords", { "fg": s:purple })
" call s:h("jsModules", { "fg": s:purple })
highlight jsNull     gui=NONE cterm=NONE
" call s:h("jsOperator", { "fg": s:purple })
" call s:h("jsStorageClass", { "fg": s:purple })
" call s:h("jsSuper", { "fg": s:red })
highlight jsTemplateBraces guifg=#e06c75 ctermfg=168 gui=NONE cterm=NONE
" call s:h("jsTemplateVar", { "fg": s:green })
" call s:h("jsThis", { "fg": s:red })
highlight jsUndefined     gui=NONE cterm=NONE
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
highlight jsObjectKey  guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight jsObjectProp guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

" " JSON
highlight jsonCommentError guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=italic cterm=italic
" call s:h("jsonKeyword", { "fg": s:red })
highlight jsonBoolean  guifg=#d19a66 ctermfg=173 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight jsonNumber   guifg=#d19a66 ctermfg=173 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight jsonString   guifg=#98c379 ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE


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
highlight mkdHeading guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

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

highlight markdownCode guifg=#98c379 ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight markdownCodeBlock guifg=#98c379 ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight markdownCodeDelimiter guifg=#98c379 ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
"
" call s:h("markdownRule", { "fg": s:comment_grey })
" call s:h("markdownHeadingRule", { "fg": s:comment_grey })

highlight markdownHeadingDelimiter guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight markdownH1 guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight markdownH2 guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight markdownH3 guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight markdownH4 guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight markdownH5 guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight markdownH6 guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
" call s:h("markdownIdDelimiter", { "fg": s:purple })
" call s:h("markdownId", { "fg": s:purple })
highlight markdownBlockquote guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=italic cterm=italic
" call s:h("markdownBlockquote", { "fg": s:comment_grey })
highlight markdownItalic guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=italic cterm=italic
highlight markdownBold   guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=bold cterm=bold
" call s:h("markdownItalic", { "fg": s:purple, "gui": "italic", "cterm": "italic" })
" call s:h("markdownBold", { "fg": s:dark_yellow, "gui": "bold", "cterm": "bold" })
" call s:h("markdownListMarker", { "fg": s:red })
" call s:h("markdownOrderedListMarker", { "fg": s:red })
" call s:h("markdownIdDeclaration", { "fg": s:blue })
highlight markdownLinkText guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight markdownLinkDelimiter guifg=#abb2bf ctermfg=249 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight markdownUrl guifg=#56b6c2 ctermfg=73 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
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
highlight phpClass         guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight phpFunction      guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight phpRegion        guifg=#abb2bf ctermfg=249 guibg=#282c34 ctermbg=236 gui=NONE cterm=NONE
highlight phpUseClass      guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight phpClassExtends  guifg=#98c379 ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight phpParent        guifg=#abb2bf ctermfg=249 gui=NONE cterm=NONE
highlight link phpInclude Keyword
highlight link phpVarSelector Identifier



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
highlight xmlTag     guifg=#abb2bf ctermfg=249 gui=NONE cterm=NONE
highlight xmlEndTag  guifg=#abb2bf ctermfg=249 gui=NONE cterm=NONE
highlight xmlTagName guifg=#e06c75 ctermfg=168 gui=NONE cterm=NONE
highlight xmlAttrib  guifg=#d19a66 ctermfg=173 gui=NONE cterm=NONE

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin: airblade/vim-gitgutter

highlight GitGutterAdd    guifg=#98c379 ctermfg=108 gui=NONE cterm=NONE
highlight GitGutterChange guifg=#e5c07b ctermfg=180 gui=NONE cterm=NONE
highlight GitGutterDelete guifg=#e06c75 ctermfg=168 gui=NONE cterm=NONE

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
highlight link luaLocal            StorageClass
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
highlight link vimLet StorageClass
highlight link vimVar Normal
highlight link vimCommand Structure

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin: mhinz/vim-signify

highlight SignifySignAdd    guifg=#98c379 ctermfg=108 gui=NONE cterm=NONE
highlight SignifySignChange guifg=#e5c07b ctermfg=180 gui=NONE cterm=NONE
highlight SignifySignDelete guifg=#e06c75 ctermfg=168 gui=NONE cterm=NONE


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin: neomake/neomake

highlight NeomakeErrorSign   guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight NeomakeWarningSign guifg=#d19a66 ctermfg=173 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight NeomakeInfoSign    guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin: tpope/vim-fugitive

highlight diffAdded    guifg=#98c379 ctermfg=108 gui=NONE cterm=NONE
highlight diffRemoved  guifg=#e06c75 ctermfg=168 gui=NONE cterm=NONE


" " Git Highlighting

highlight gitcommitComment guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=italic cterm=italic
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

highlight CocHighlightText guifg=#282c34 ctermfg=236 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight CocUnderline     gui=underline cterm=underline
highlight CocCodeLens      guifg=#5c6370 ctermfg=241 guibg=NONE ctermbg=NONE gui=italic cterm=italic
highlight link CocHighlightTextRead CocHighlightText
highlight link CocHighlightTextWrite CocHighlightText
"
highlight CocErrorSign           guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight link CocErrorFloat     CocErrorSign
highlight link CocErrorHighlight CocUnderline
highlight clear CocErrorLine

highlight CocWarningSign           guifg=#d19a66 ctermfg=173 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight link CocWarningFloat     CocWarningSign
highlight link CocWarningHighlight CocUnderline
highlight clear CocWarningLine

highlight CocInfoSign           guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight link CocInfoFloat     CocInfoSign
highlight link CocInfoHighlight CocUnderline
highlight clear CocInfoLine

highlight CocHintSign           guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
highlight link CocHintFloat     CocHintSign
highlight link CocHintHighlight CocUnderline
highlight clear CocHintLine


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
