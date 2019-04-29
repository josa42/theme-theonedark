highlight clear

if exists("syntax_on")
  syntax reset
endif

set t_Co=256

if has("nvim") | let $NVIM_TUI_ENABLE_TRUE_COLOR=1 | endif
if has("termguicolors") | set termguicolors | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax Groups (descriptions and ordering from `:h w18`)

highlight   Comment          {{.Comment}}
highlight   Constant         {{.Constant}}
highlight   String           {{.String}}
highlight   Character        {{.Character}}
highlight   Number           {{.Number}}
highlight   Boolean          {{.Boolean}}
highlight   Float            {{.Float}}
highlight   Identifier       {{.Identifier}}
highlight   Function         {{.Function}}
highlight   Statement        {{.Statement}}
highlight   Conditional      {{.Conditional}}
highlight   Repeat           {{.Repeat}}
highlight   Label            {{.Label}}
highlight   Operator         {{.Operator}}
highlight   Keyword          {{.Keyword}}
highlight   Exception        {{.Exception}}
highlight   PreProc          {{.PreProc}}
highlight   Include          {{.Include}}
highlight   Define           {{.Define}}
highlight   Macro            {{.Macro}}
highlight   PreCondit        {{.PreCondit}}
highlight   Type             {{.Type}}
highlight   StorageClass     {{.StorageClass}}
highlight   Structure        {{.Structure}}
highlight   Typedef          {{.Typedef}}
highlight   Special          {{.Special}}
highlight   SpecialChar      {{.SpecialChar}}
highlight   Tag              {{.Tag}}
highlight   Delimiter        {{.Delimiter}}
highlight   SpecialComment   {{.SpecialComment}}
highlight   Debug            {{.Debug}}
highlight   Underlined       {{.Underlined}}
highlight   Ignore           {{.Ignore}}
highlight   Error            {{.Error}}
highlight   Todo             {{.Todo}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlighting Groups (descriptions and ordering from `:h highlight-groups`)

highlight   ColorColumn        {{.ColorColumn}}
highlight   Conceal            {{.Conceal}}
highlight   Cursor             {{.Cursor}}
highlight   CursorIM           {{.CursorIM}}
highlight   CursorColumn       {{.CursorColumn}}
highlight   CursorLine         {{.CursorLine}}
highlight   Directory          {{.Directory}}
highlight   DiffAdd            {{.DiffAdd}}
highlight   DiffChange         {{.DiffChange}}
highlight   DiffDelete         {{.DiffDelete}}
highlight   DiffText           {{.DiffText}}
highlight   EndOfBuffer        {{.EndOfBuffer}}
highlight   ErrorMsg           {{.ErrorMsg}}
highlight   VertSplit          {{.VertSplit}}
highlight   Folded             {{.Folded}}
highlight   FoldColumn         {{.FoldColumn}}
highlight   SignColumn         {{.SignColumn}}
highlight   IncSearch          {{.IncSearch}}
highlight   LineNr             {{.LineNr}}
highlight   CursorLineNr       {{.CursorLineNr}}
highlight   MatchParen         {{.MatchParen}}
highlight   ModeMsg            {{.ModeMsg}}
highlight   MoreMsg            {{.MoreMsg}}
highlight   NonText            {{.NonText}}
highlight   Normal             {{.Normal}}
highlight   Pmenu              {{.Pmenu}}
highlight   PmenuSel           {{.PmenuSel}}
highlight   PmenuSbar          {{.PmenuSbar}}
highlight   PmenuThumb         {{.PmenuThumb}}
highlight   Question           {{.Question}}
highlight   QuickFixLine       {{.QuickFixLine}}
highlight   Search             {{.Search}}
highlight   SpecialKey         {{.SpecialKey}}
highlight   SpellBad           {{.SpellBad}}
highlight   SpellCap           {{.SpellCap}}
highlight   SpellLocal         {{.SpellLocal}}
highlight   SpellRare          {{.SpellRare}}
highlight   StatusLine         {{.StatusLine}}
highlight   StatusLineNC       {{.StatusLineNC}}
highlight   StatusLineTerm     {{.StatusLineTerm}}
highlight   StatusLineTermNC   {{.StatusLineTermNC}}
highlight   TabLine            {{.TabLine}}
highlight   TabLineFill        {{.TabLineFill}}
highlight   TabLineSel         {{.TabLineSel}}
highlight   Terminal           {{.Terminal}}
highlight   Title              {{.Title}}
highlight   Visual             {{.Visual}}
highlight   VisualNOS          {{.VisualNOS}}
highlight   WarningMsg         {{.WarningMsg}}
highlight   WildMenu           {{.WildMenu}}


" Language
" highlight   ClassName          {{.ClassName}}
" highlight   Property           {{.Property}}



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Diff

if &diff
  highlight! CursorLine         {{.DiffCursorLine}}
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
highlight cssBraces       {{.Brace}}
highlight cssClassName    {{.Type}}
highlight cssClassNameDot {{.Type}}
highlight cssIdentifier   {{.Function}}

" highlight cssPseudoClass  {{.Constant}}
highlight cssImportant {{.Statement}}
highlight cssProp      {{.Text}}

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
highlight scssSelectorChar {{.Type}}
highlight scssSelectorName {{.Type}}


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
highlight goCoverageCovered {{.OK}}
highlight goCoverageUncover {{.Error}}
" highlight GoDebugBreakpoint ctermfg=0 ctermbg=117 guifg=Black guibg=#BAD4F5
" highlight GoDebugCurrent ctermfg=7 ctermbg=12 guifg=White guibg=DarkBlue


" " HTML
" call s:h("htmlLink", { "fg": s:purple })
" call s:h("htmlSpecialChar", { "fg": s:dark_yellow })

highlight htmlTag            {{.TagSurround}}
highlight htmlEndTag         {{.TagSurround}}
highlight htmlTagName        {{.TagName}}
highlight htmlSpecialTagName {{.TagName}}
highlight htmlArg            {{.TagAttr}}
highlight htmlH1             {{.Text}}
highlight htmlTitle          {{.Text}}


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language: JavaScript

highlight javaScriptBraces   {{.Brace}}
highlight javaScriptFunction {{.Function}}
highlight javaScriptNumber   {{.Number}}
highlight javaScriptNull     {{.Null}}



" call s:h("javaScriptIdentifier", { "fg": s:purple })
" call s:h("javaScriptNumber", { "fg": s:dark_yellow })
" call s:h("javaScriptRequire", { "fg": s:cyan })
" call s:h("javaScriptReserved", { "fg": s:purple })
"




highlight jsClassDefinitio {{.ClassName}}


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
highlight jsNull     {{.Null}}
" call s:h("jsOperator", { "fg": s:purple })
" call s:h("jsStorageClass", { "fg": s:purple })
" call s:h("jsSuper", { "fg": s:red })
highlight jsTemplateBraces {{.TemplateBrace}}
" call s:h("jsTemplateVar", { "fg": s:green })
" call s:h("jsThis", { "fg": s:red })
highlight jsUndefined     {{.Null}}
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
highlight jsObjectKey  {{.Property}}
highlight jsObjectProp {{.Property}}

" " JSON
highlight jsonCommentError {{.Comment}}
" call s:h("jsonKeyword", { "fg": s:red })
highlight jsonBoolean  {{.Boolean}}
highlight jsonNumber   {{.Number}}
highlight jsonString   {{.String}}


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
highlight mkdHeading {{.Identifier}}

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

highlight markdownCode {{.String}}
highlight markdownCodeBlock {{.String}}
highlight markdownCodeDelimiter {{.String}}
"
" call s:h("markdownRule", { "fg": s:comment_grey })
" call s:h("markdownHeadingRule", { "fg": s:comment_grey })

highlight markdownHeadingDelimiter {{.Identifier}}
highlight markdownH1 {{.Identifier}}
highlight markdownH2 {{.Identifier}}
highlight markdownH3 {{.Identifier}}
highlight markdownH4 {{.Identifier}}
highlight markdownH5 {{.Identifier}}
highlight markdownH6 {{.Identifier}}
" call s:h("markdownIdDelimiter", { "fg": s:purple })
" call s:h("markdownId", { "fg": s:purple })
highlight markdownBlockquote {{.Comment}}
" call s:h("markdownBlockquote", { "fg": s:comment_grey })
highlight markdownItalic {{.TextItalic}}
highlight markdownBold   {{.TextBold}}
" call s:h("markdownItalic", { "fg": s:purple, "gui": "italic", "cterm": "italic" })
" call s:h("markdownBold", { "fg": s:dark_yellow, "gui": "bold", "cterm": "bold" })
" call s:h("markdownListMarker", { "fg": s:red })
" call s:h("markdownOrderedListMarker", { "fg": s:red })
" call s:h("markdownIdDeclaration", { "fg": s:blue })
highlight markdownLinkText {{.Function}}
highlight markdownLinkDelimiter {{.Text}}
highlight markdownUrl {{.Constant}}
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
highlight phpClass         {{.ClassName}}
highlight phpFunction      {{.Function}}
highlight phpRegion        {{.Normal}}
highlight phpUseClass      {{.ClassName}}
highlight phpClassExtends  {{.ExtendsClassName}}
highlight phpParent        {{.Brace}}
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
highlight xmlTag     {{.TagSurround}}
highlight xmlEndTag  {{.TagSurround}}
highlight xmlTagName {{.TagName}}
highlight xmlAttrib  {{.TagAttr}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin: airblade/vim-gitgutter

highlight GitGutterAdd    {{.GutterAdded}}
highlight GitGutterChange {{.GutterChanged}}
highlight GitGutterDelete {{.GutterRemoved}}

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
" highlight luaFuncTable        {{.Error}}
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

highlight SignifySignAdd    {{.GutterAdded}}
highlight SignifySignChange {{.GutterChanged}}
highlight SignifySignDelete {{.GutterRemoved}}


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin: neomake/neomake

highlight NeomakeErrorSign   {{.Error}}
highlight NeomakeWarningSign {{.Warning}}
highlight NeomakeInfoSign    {{.Information}}


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin: tpope/vim-fugitive

highlight diffAdded    {{.GutterAdded}}
highlight diffRemoved  {{.GutterRemoved}}


" " Git Highlighting

highlight gitcommitComment {{.Comment}}
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

highlight CocHighlightText {{.Highlight}}
highlight CocUnderline     gui=underline cterm=underline
highlight CocCodeLens      {{.Comment}}
highlight link CocHighlightTextRead CocHighlightText
highlight link CocHighlightTextWrite CocHighlightText
"
highlight CocErrorSign           {{.Error}}
highlight link CocErrorFloat     CocErrorSign
highlight link CocErrorHighlight CocUnderline
highlight clear CocErrorLine

highlight CocWarningSign           {{.Warning}}
highlight link CocWarningFloat     CocWarningSign
highlight link CocWarningHighlight CocUnderline
highlight clear CocWarningLine

highlight CocInfoSign           {{.Information}}
highlight link CocInfoFloat     CocInfoSign
highlight link CocInfoHighlight CocUnderline
highlight clear CocInfoLine

highlight CocHintSign           {{.Hint}}
highlight link CocHintFloat     CocHintSign
highlight link CocHintHighlight CocUnderline
highlight clear CocHintLine


" " Neovim terminal colors
"
if has("nvim")
  let g:terminal_color_0 =         '{{.Black.Gui}}'
  let g:terminal_color_1 =         '{{.Red.Gui}}'
  let g:terminal_color_2 =         '{{.Green.Gui}}'
  let g:terminal_color_3 =         '{{.Yellow.Gui}}'
  let g:terminal_color_4 =         '{{.Blue.Gui}}'
  let g:terminal_color_5 =         '{{.Purple.Gui}}'
  let g:terminal_color_6 =         '{{.Cyan.Gui}}'
  let g:terminal_color_7 =         '{{.White.Gui}}'

  " TODO
  let g:terminal_color_8 =         '{{.Grey.Gui}}'    " s:visual_grey.gui
  let g:terminal_color_9 =         '{{.DarkRed.Gui}}'
  let g:terminal_color_10 =        '{{.Green.Gui}}'  " No dark version
  let g:terminal_color_11 =        '{{.DarkYellow}}' " s:dark_yellow.gui
  let g:terminal_color_12 =        '{{.Blue.Gui}}'   " No dark version
  let g:terminal_color_13 =        '{{.Purple.Gui}}' " No dark version
  let g:terminal_color_14 =        '{{.Cyan.Gui}}'   " No dark version
  let g:terminal_color_15 =        '{{.White.Gui}}' " s:comment_grey.gui
  let g:terminal_color_background = g:terminal_color_0
  let g:terminal_color_foreground = g:terminal_color_7
endif
"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin: indentLine
let g:indentLine_setColors = 0
let g:indentLine_color_gui =  '{{.Comment.Foreground.Gui}}'
let g:indentLine_color_term = '{{.Comment.Foreground.Cterm}}'



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
