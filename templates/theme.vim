hi! clear
if exists("syntax_on") | syntax reset | endif

set t_Co=256

if has("nvim") | let $NVIM_TUI_ENABLE_TRUE_COLOR=1 | endif
if has("termguicolors") | set termguicolors | endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Theme: groups

hi! todBoolean         {{.Cyan.Vim "fg"}}
hi! todBraces          {{.White.Vim "fg"}}
hi! todClassName       {{.Cyan.Vim "fg"}}
hi! todComment         {{.Grey.Vim "fg"}} term=italic cterm=italic gui=italic
hi! todError           {{.Red.Vim "fg"}}
hi! todFunction        {{.Purple.Vim "fg"}}
hi! todFunctionName    {{.Blue.Vim "fg"}}
hi! todImport          {{.Blue.Vim "fg"}}
hi! todKeyword         {{.Purple.Vim "fg"}}
hi! todModule          {{.Blue.Vim "fg"}}
hi! todModuleName      {{.Cyan.Vim "fg"}}
hi! todNormal          {{.White.Vim "fg"}}
hi! todNull            {{.DarkYellow.Vim "fg"}}
hi! todNumber          {{.DarkYellow.Vim "fg"}}
hi! todOperatorKeyword {{.Cyan.Vim "fg"}}
hi! todOperatorSymbol  {{.Cyan.Vim "fg"}}
hi! todProperty        {{.Red.Vim "fg"}}
hi! todReturn          {{.Purple.Vim "fg"}}
hi! todStatic          {{.Purple.Vim "fg"}}
hi! todString          {{.Green.Vim "fg"}}
hi! todSuper           {{.Cyan.Vim "fg"}}
hi! todThis            {{.Cyan.Vim "fg"}}
hi! todType            {{.Purple.Vim "fg"}}
hi! todTypeName        {{.Cyan.Vim "fg"}}
hi! todVariable        {{.Purple.Vim "fg"}}
hi! todVariableName    {{.White.Vim "fg"}}
hi! todCommentTag      {{.White.Vim "fg"}}  term=bold cterm=bold gui=bold
hi! todCommentValue    {{.White.Vim "fg"}}
hi! todCommentTitle    {{.White.Vim "fg"}}  term=bold,underline cterm=bold,underline gui=bold,underline


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Defaults: Syntax Groups (descriptions and ordering from `:h w18`)

hi!   Character        {{.Character}}
hi!   Conditional      {{.Conditional}}
hi!   Constant         {{.Constant}}
hi!   Debug            {{.Debug}}
hi!   Define           {{.Define}}
hi!   Delimiter        {{.Delimiter}}
hi!   Exception        {{.Exception}}
hi!   Function         {{.Function}}
hi!   Identifier       {{.Identifier}}
hi!   Ignore           {{.Ignore}}
hi!   Include          {{.Include}}
hi!   Keyword          {{.Keyword}}
hi!   Label            {{.Label}}
hi!   Macro            {{.Macro}}
hi!   Operator         {{.Operator}}
hi!   PreCondit        {{.PreCondit}}
hi!   PreProc          {{.PreProc}}
hi!   Repeat           {{.Repeat}}
hi!   Special          {{.Special}}
hi!   SpecialChar      {{.SpecialChar}}
hi!   SpecialComment   {{.SpecialComment}}
hi!   Statement        {{.Statement}}
hi!   StorageClass     {{.StorageClass}}
hi!   Structure        {{.Structure}}
hi!   Tag              {{.Tag}}
hi!   Todo             {{.Todo}}
hi!   Type             {{.Type}}
hi!   Typedef          {{.Typedef}}
hi!   Underlined       {{.Underlined}}
hi! link Boolean       todBoolean
hi! link Comment       todComment
hi! link Error         todError
hi! link Float         todNumber
hi! link Number        todNumber
hi! link String        todString

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Defaults: Highlighting Groups (descriptions and ordering from `:h highlight-groups`)

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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Neovim: LSP

hi! LspDiagnosticsError {{.Red.Vim "fg"}}


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin: Termdebug highlighting for Vim 8.1+
"
" " See `:h hl-debugPC` and `:h hl-debugBreakpoint`.
" call s:h("debugPC", { "bg": s:special_grey }) " the current position
" call s:h("debugBreakpoint", { "fg": s:black, "bg": s:red }) " a breakpoint
"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language: CSS
"
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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language: scss

hi! scssSelectorChar {{.Type}}
hi! scssSelectorName {{.Type}}


" " https://github.com/cakebaker/scss-syntax.vim
" call s:h("scssExtend", { "fg": s:purple })
" call s:h("scssImport", { "fg": s:purple })
" call s:h("scssInclude", { "fg": s:purple })
" call s:h("scssMixin", { "fg": s:purple })
" call s:h("scssSelectorName", { "fg": s:dark_yellow })
" call s:h("scssVariable", { "fg": s:purple })


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language: Sass

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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language: Fish Shell

" call s:h("fishKeyword", { "fg": s:purple })
" call s:h("fishConditional", { "fg": s:purple })


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language: HTML

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
" Language: Typescript

hi! link typescriptArrowFunc      todFunction
hi! link typescriptAssign         todOperatorSymbol
hi! link typescriptBinaryOp       todOperatorSymbol
hi! link typescriptBoolean        todBoolean
hi! link typescriptBraces         todBraces
hi! link typescriptCall           todVariableName
hi! link typescriptClassHeritage  todClassName
hi! link typescriptClassName      todClassName
hi! link typescriptFunctionMethod todFunctionName
hi! link typescriptNull           todNull
hi! link typescriptObjectLabel    todProperty
hi! link typescriptOperator       todOperatorKeyword
hi! link typescriptParens         todParens
hi! link typescriptProp           todProperty
hi! link typescriptReflectMethod  todFunctionName
hi! link typescriptTypeReference  todTypeName
hi! link typescriptUnaryOp        todOperatorSymbol
hi! link typescriptVariable       todVariable


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language: Go

" fatih/vim-go => sheerun/vim-polyglot

hi! link goImport      todImport
hi! link goPackage     todModule
hi! link goType        todTypeName
hi! link goDeclaration todType
hi! link goDeclType    todType
hi! link goBoolean     todBoolean
hi! link goFunctionCall todFunctionName
hi! link goVarAssign  todVariableName


hi! goCoverageCovered {{.OK}}
hi! goCoverageUncover {{.Error}}


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
hi! link jsObjectKey       todProperty
hi! link jsOperator        todOperatorSymbol
hi! link jsOperatorKeyword todOperatorKeyword
hi! link jsReturn          todReturn
hi! link jsStatic          todStatic
hi! link jsThis            todThis

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
hi! link jsClassMethodType todStatic
hi! link jsDocTags                   todCommentTag
hi! link jsDocModuleName             todCommentValue
hi! link jsDocIdentifier             todCommentValue

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
hi! link javascriptDocTags           todCommentTag
hi! link javascriptDocParamName      todCommentValue
hi! link javascriptDocComment        todComment

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language: JSON

hi! link jsonBoolean           todBoolean
hi! link jsonBraces            todBraces
hi! link jsonCommentError      todComment
hi! link jsonKeyword           todProperty
hi! link jsonMissingCommaError todError
hi! link jsonNoQuotesError     todError
hi! link jsonNumError          todError
hi! link jsonNumber            todNumber
hi! link jsonQuote             todNormal
hi! link jsonSemicolonError    todError
hi! link jsonString            todString
hi! link jsonStringSQError     todError


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language: LESS

" call s:h("lessVariable", { "fg": s:purple })
" call s:h("lessAmpersandChar", { "fg": s:white })
" call s:h("lessClass", { "fg": s:dark_yellow })

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language: Markdown

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

hi! markdownItalic term=italic cterm=italic gui=italic
hi! markdownBold   term=bold   cterm=bold   gui=bold
"
" call s:h("markdownListMarker", { "fg": s:red })
" call s:h("markdownOrderedListMarker", { "fg": s:red })
" call s:h("markdownIdDeclaration", { "fg": s:blue })
hi! markdownLinkText {{.Function}}
hi! markdownLinkDelimiter {{.Text}}
hi! markdownUrl {{.Constant}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language: Perl

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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language: PHP

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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language: Ruby

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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language: TeX

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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language: XML

hi! xmlTag     {{.TagSurround}}
hi! xmlEndTag  {{.TagSurround}}
hi! xmlTagName {{.TagName}}
hi! xmlAttrib  {{.TagAttr}}


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin: airblade/vim-gitgutter

hi! GitGutterAdd    {{.GutterAdded}}
hi! GitGutterChange {{.GutterChanged}}
hi! GitGutterDelete {{.GutterRemoved}}


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin: easymotion/vim-easymotion

" call s:h("EasyMotionTarget", { "fg": s:red, "gui": "bold", "cterm": "bold" })
" call s:h("EasyMotionTarget2First", { "fg": s:yellow, "gui": "bold", "cterm": "bold" })
" call s:h("EasyMotionTarget2Second", { "fg": s:dark_yellow, "gui": "bold", "cterm": "bold" })
" call s:h("EasyMotionShade",  { "fg": s:comment_grey })


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language:  Lua

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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Language: viml
hi! link vimLet          StorageClass
hi! link vimVar          Normal
hi! link vimCommand      Structure
hi! link vimCommentTitle todCommentTitle


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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin: Git Highlighting

hi! link gitcommitComment todComment

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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Neovim: terminal colors
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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin: NERDTree
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
