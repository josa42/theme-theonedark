hi! clear

if exists("syntax_on")
  syntax reset
endif

set t_Co=256

if has("nvim") | let $NVIM_TUI_ENABLE_TRUE_COLOR=1 | endif
if has("termguicolors") | set termguicolors | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntax Groups (descriptions and ordering from `:h w18`)

hi!   Comment          {{.Comment}}
hi!   Constant         {{.Constant}}
hi!   String           {{.String}}
hi!   Character        {{.Character}}
hi!   Number           {{.Number}}
hi!   Boolean          {{.Boolean}}
hi!   Float            {{.Float}}
hi!   Identifier       {{.Identifier}}
hi!   Function         {{.Function}}
hi!   Statement        {{.Statement}}
hi!   Conditional      {{.Conditional}}
hi!   Repeat           {{.Repeat}}
hi!   Label            {{.Label}}
hi!   Operator         {{.Operator}}
hi!   Keyword          {{.Keyword}}
hi!   Exception        {{.Exception}}
hi!   PreProc          {{.PreProc}}
hi!   Include          {{.Include}}
hi!   Define           {{.Define}}
hi!   Macro            {{.Macro}}
hi!   PreCondit        {{.PreCondit}}
hi!   Type             {{.Type}}
hi!   StorageClass     {{.StorageClass}}
hi!   Structure        {{.Structure}}
hi!   Typedef          {{.Typedef}}
hi!   Special          {{.Special}}
hi!   SpecialChar      {{.SpecialChar}}
hi!   Tag              {{.Tag}}
hi!   Delimiter        {{.Delimiter}}
hi!   SpecialComment   {{.SpecialComment}}
hi!   Debug            {{.Debug}}
hi!   Underlined       {{.Underlined}}
hi!   Ignore           {{.Ignore}}
hi!   Error            {{.Error}}
hi!   Todo             {{.Todo}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlighting Groups (descriptions and ordering from `:h highlight-groups`)

hi!   ColorColumn        {{.ColorColumn}}
hi!   Conceal            {{.Conceal}}
hi!   Cursor             {{.Cursor}}
hi!   CursorIM           {{.CursorIM}}
hi!   CursorColumn       {{.CursorColumn}}
hi!   CursorLine         {{.CursorLine}}
hi!   Directory          {{.Directory}}
hi!   DiffAdd            {{.DiffAdd}}
hi!   DiffChange         {{.DiffChange}}
hi!   DiffDelete         {{.DiffDelete}}
hi!   DiffText           {{.DiffText}}
hi!   EndOfBuffer        {{.EndOfBuffer}}
hi!   ErrorMsg           {{.ErrorMsg}}
hi!   VertSplit          {{.VertSplit}}
hi!   Folded             {{.Folded}}
hi!   FoldColumn         {{.FoldColumn}}
hi!   SignColumn         {{.SignColumn}}
hi!   IncSearch          {{.IncSearch}}
hi!   LineNr             {{.LineNr}}
hi!   CursorLineNr       {{.CursorLineNr}}
hi!   MatchParen         {{.MatchParen}}
hi!   ModeMsg            {{.ModeMsg}}
hi!   MoreMsg            {{.MoreMsg}}
hi!   NonText            {{.NonText}}
hi!   Normal             {{.Normal}}
hi!   Pmenu              {{.Pmenu}}
hi!   PmenuSel           {{.PmenuSel}}
hi!   PmenuSbar          {{.PmenuSbar}}
hi!   PmenuThumb         {{.PmenuThumb}}
hi!   Question           {{.Question}}
hi!   QuickFixLine       {{.QuickFixLine}}
hi!   Search             {{.Search}}
hi!   SpecialKey         {{.SpecialKey}}
hi!   SpellBad           {{.SpellBad}}
hi!   SpellCap           {{.SpellCap}}
hi!   SpellLocal         {{.SpellLocal}}
hi!   SpellRare          {{.SpellRare}}
hi!   StatusLine         {{.StatusLine}}
hi!   StatusLineNC       {{.StatusLineNC}}
hi!   StatusLineTerm     {{.StatusLineTerm}}
hi!   StatusLineTermNC   {{.StatusLineTermNC}}
hi!   TabLine            {{.TabLine}}
hi!   TabLineFill        {{.TabLineFill}}
hi!   TabLineSel         {{.TabLineSel}}
hi!   Terminal           {{.Terminal}}
hi!   Title              {{.Title}}
hi!   Visual             {{.Visual}}
hi!   VisualNOS          {{.VisualNOS}}
hi!   WarningMsg         {{.WarningMsg}}
hi!   WildMenu           {{.WildMenu}}


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
" => https://github.com/neovim/neovim/blob/dd7355358edc40734afcce695432756859377eb8/runtime/syntax/css.vim

hi! cssAttrComma         {{.Purple.Vim     "fg"}}
hi! cssAttributeSelector {{.Green.Vim      "fg"}}
hi! cssBraces            {{.White.Vim      "fg"}}
hi! cssClassName         {{.DarkYellow.Vim "fg"}}
hi! cssClassNameDot      {{.DarkYellow.Vim "fg"}}
hi! cssDefinition        {{.Purple.Vim     "fg"}}
hi! cssFontAttr          {{.DarkYellow.Vim "fg"}}
hi! cssFontDescriptor    {{.Purple.Vim     "fg"}}
hi! cssFunctionName      {{.Blue.Vim       "fg"}}
hi! cssIdentifier        {{.Blue.Vim       "fg"}}
hi! cssImportant         {{.Purple.Vim     "fg"}}
hi! cssInclude           {{.White.Vim      "fg"}}
hi! cssIncludeKeyword    {{.Purple.Vim     "fg"}}
hi! cssMediaType         {{.DarkYellow.Vim "fg"}}
hi! cssProp              {{.White.Vim      "fg"}}
hi! cssPseudoClassId     {{.Cyan.Vim       "fg"}}
hi! cssPseudoClassId     {{.DarkYellow.Vim "fg"}}
hi! cssSelectorOp        {{.Purple.Vim     "fg"}}
hi! cssSelectorOp2       {{.Purple.Vim     "fg"}}
hi! cssTagName           {{.Red.Vim        "fg"}}
hi! cssUnitDecorators    {{.Red.Vim        "fg"}}

" scss
hi! scssSelectorChar {{.Type}}
hi! scssSelectorName {{.Type}}


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
hi! goCoverageCovered {{.OK}}
hi! goCoverageUncover {{.Error}}
" highlight GoDebugBreakpoint ctermfg=0 ctermbg=117 guifg=Black guibg=#BAD4F5
" highlight GoDebugCurrent ctermfg=7 ctermbg=12 guifg=White guibg=DarkBlue


" " HTML
hi! htmlArg            {{.DarkYellow.Vim "fg"}}
hi! htmlEndTag         {{.White.Vim      "fg"}}
hi! htmlH1             {{.White.Vim      "fg"}}
hi! htmlH2             {{.White.Vim      "fg"}}
hi! htmlH3             {{.White.Vim      "fg"}}
hi! htmlH4             {{.White.Vim      "fg"}}
hi! htmlH5             {{.White.Vim      "fg"}}
hi! htmlH6             {{.White.Vim      "fg"}}
hi! htmlLink           {{.White.Vim      "fg"}}
hi! htmlSpecialChar    {{.DarkYellow.Vim "fg"}}
hi! htmlSpecialTagName {{.Red.Vim        "fg"}}
hi! htmlTag            {{.White.Vim      "fg"}}
hi! htmlTagN           {{.Red.Vim        "fg"}}
hi! htmlTagName        {{.Red.Vim        "fg"}}
hi! htmlTitle          {{.White.Vim      "fg"}}

hi! htmlBold                term=bold                  cterm=bold                  gui=bold
hi! htmlBoldUnderline       term=bold,underline        cterm=bold,underline        gui=bold,underline
hi! htmlBoldItalic          term=bold,italic           cterm=bold,italic           gui=bold,italic
hi! htmlBoldUnderlineItalic term=bold,italic,underline cterm=bold,italic,underline gui=bold,italic,underline
hi! htmlUnderline           term=underline             cterm=underline             gui=underline
hi! htmlUnderlineItalic     term=italic,underline      cterm=italic,underline      gui=italic,underline
hi! htmlItalic              term=italic                cterm=italic                gui=italic



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme: groups
hi! todNormal          {{.White.Vim "fg"}}
hi! todModuleName      {{.Yellow.Vim "fg"}}
hi! todBoolean         {{.Cyan.Vim "fg"}}
hi! todBraces          {{.White.Vim "fg"}}
hi! todClassName       {{.Yellow.Vim "fg"}}
hi! todFunctionName    {{.Blue.Vim "fg"}}
hi! todNull            {{.DarkYellow.Vim "fg"}}
hi! todProperty        {{.Red.Vim "fg"}}
hi! todReturn          {{.Purple.Vim "fg"}}
hi! todVariable        {{.Purple.Vim "fg"}}
hi! todFunction        {{.Purple.Vim "fg"}}
hi! todKeyword         {{.Purple.Vim "fg"}}
hi! todImport          {{.Blue.Vim "fg"}}
hi! todNumber          {{.DarkYellow.Vim "fg"}}
hi! todStatic          {{.Purple.Vim "fg"}}
hi! todSuper           {{.Cyan.Vim "fg"}}
hi! todThis            {{.Cyan.Vim "fg"}}
hi! todOperatorSymbol  {{.Cyan.Vim "fg"}}
hi! todOperatorKeyword {{.Cyan.Vim "fg"}}
hi! todVariableName    {{.White.Vim "fg"}}

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

" TODO

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

" hi! link jsDocParam                DraculaOrangeItalic
" hi! link jsDocTags                 Keyword
" hi! link jsDocType                 Type
" hi! link jsDocTypeBrackets         DraculaCyan
" hi! link jsFuncArgOperator         Operator
" hi! link jsFunction                Keyword
" hi! link jsTemplateBraces          Special

" " JSON
hi! jsonCommentError {{.Comment}}
" call s:h("jsonKeyword", { "fg": s:red })
hi! jsonBoolean  {{.Boolean}}
hi! jsonNumber   {{.Number}}
hi! jsonString   {{.String}}


" call s:h("jsonQuote", { "fg": s:white })
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
hi! mkdHeading {{.Identifier}}

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

hi! markdownCode {{.String}}
hi! markdownCodeBlock {{.String}}
hi! markdownCodeDelimiter {{.String}}
"
" call s:h("markdownRule", { "fg": s:comment_grey })
" call s:h("markdownHeadingRule", { "fg": s:comment_grey })

hi! markdownHeadingDelimiter {{.Identifier}}
hi! markdownH1 {{.Identifier}}
hi! markdownH2 {{.Identifier}}
hi! markdownH3 {{.Identifier}}
hi! markdownH4 {{.Identifier}}
hi! markdownH5 {{.Identifier}}
hi! markdownH6 {{.Identifier}}
" call s:h("markdownIdDelimiter", { "fg": s:purple })
" call s:h("markdownId", { "fg": s:purple })
hi! markdownBlockquote {{.Comment}}
" call s:h("markdownBlockquote", { "fg": s:comment_grey })
hi! markdownItalic {{.TextItalic}}
hi! markdownBold   {{.TextBold}}
" call s:h("markdownItalic", { "fg": s:purple, "gui": "italic", "cterm": "italic" })
" call s:h("markdownBold", { "fg": s:dark_yellow, "gui": "bold", "cterm": "bold" })
" call s:h("markdownListMarker", { "fg": s:red })
" call s:h("markdownOrderedListMarker", { "fg": s:red })
" call s:h("markdownIdDeclaration", { "fg": s:blue })
hi! markdownLinkText {{.Function}}
hi! markdownLinkDelimiter {{.Text}}
hi! markdownUrl {{.Constant}}
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
hi! phpClass         {{.ClassName}}
hi! phpFunction      {{.Function}}
hi! phpRegion        {{.Normal}}
hi! phpUseClass      {{.ClassName}}
hi! phpClassExtends  {{.ExtendsClassName}}
hi! phpParent        {{.Brace}}
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
hi! xmlTag     {{.TagSurround}}
hi! xmlEndTag  {{.TagSurround}}
hi! xmlTagName {{.TagName}}
hi! xmlAttrib  {{.TagAttr}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin: airblade/vim-gitgutter

hi! GitGutterAdd    {{.GutterAdded}}
hi! GitGutterChange {{.GutterChanged}}
hi! GitGutterDelete {{.GutterRemoved}}

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

hi! SignifySignAdd    {{.GutterAdded}}
hi! SignifySignChange {{.GutterChanged}}
hi! SignifySignDelete {{.GutterRemoved}}


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin: neomake/neomake

hi! NeomakeErrorSign   {{.Error}}
hi! NeomakeWarningSign {{.Warning}}
hi! NeomakeInfoSign    {{.Information}}


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin: tpope/vim-fugitive

hi! diffAdded    {{.GutterAdded}}
hi! diffRemoved  {{.GutterRemoved}}


" " Git Highlighting

hi! gitcommitComment {{.Comment}}
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

hi! CocHighlightText {{.Highlight}}
hi! CocUnderline     gui=underline cterm=underline
hi! CocCodeLens      {{.Comment}}
hi! link CocHighlightTextRead CocHighlightText
hi! link CocHighlightTextWrite CocHighlightText
"
hi! CocErrorSign           {{.Error}}
hi! link CocErrorFloat     CocErrorSign
hi! link CocErrorHighlight CocUnderline
hi! clear CocErrorLine

hi! CocWarningSign           {{.Warning}}
hi! link CocWarningFloat     CocWarningSign
hi! link CocWarningHighlight CocUnderline
hi! clear CocWarningLine

hi! CocInfoSign           {{.Information}}
hi! link CocInfoFloat     CocInfoSign
hi! link CocInfoHighlight CocUnderline
hi! clear CocInfoLine

hi! CocHintSign           {{.Hint}}
hi! link CocHintFloat     CocHintSign
hi! link CocHintHighlight CocUnderline
hi! clear CocHintLine


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