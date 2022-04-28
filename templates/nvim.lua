local pallet = {}

vim.cmd([[ hi! clear ]])
vim.cmd([[ syntax reset ]])
vim.cmd([[ set t_Co=256 ]])

vim.cmd([[ let $NVIM_TUI_ENABLE_TRUE_COLOR=1 ]])
vim.cmd([[ set termguicolors ]])

--------------------------------------------------------------------------------
-- Theme: groups

vim.cmd([[ hi! todBoolean         {{.Cyan.Vim       "fg"}} ]])
vim.cmd([[ hi! todBraces          {{.White.Vim      "fg"}} ]])
vim.cmd([[ hi! todClassName       {{.Cyan.Vim       "fg"}} ]])
vim.cmd([[ hi! todComment         {{.Grey.Vim       "fg"}} term=italic         cterm=italic         gui=italic ]])
vim.cmd([[ hi! todCommentTag      {{.White.Vim      "fg"}} term=bold           cterm=bold           gui=bold ]])
vim.cmd(
  [[ hi! todCommentTitle    {{.White.Vim      "fg"}} term=bold,underline cterm=bold,underline gui=bold,underline ]]
)
vim.cmd([[ hi! todCommentValue    {{.White.Vim      "fg"}} ]])
vim.cmd([[ hi! todError           {{.Red.Vim        "fg"}} ]])
vim.cmd([[ hi! todFunction        {{.Purple.Vim     "fg"}} ]])
vim.cmd([[ hi! todFunctionName    {{.Blue.Vim       "fg"}} ]])
vim.cmd([[ hi! todImport          {{.Blue.Vim       "fg"}} ]])
vim.cmd([[ hi! todKeyword         {{.Purple.Vim     "fg"}} ]])
vim.cmd([[ hi! todModule          {{.Blue.Vim       "fg"}} ]])
vim.cmd([[ hi! todModuleName      {{.Cyan.Vim       "fg"}} ]])
vim.cmd([[ hi! todNormal          {{.White.Vim      "fg"}} ]])
vim.cmd([[ hi! todNull            {{.DarkYellow.Vim "fg"}} ]])
vim.cmd([[ hi! todNumber          {{.DarkYellow.Vim "fg"}} ]])
vim.cmd([[ hi! todOperatorKeyword {{.Cyan.Vim       "fg"}} ]])
vim.cmd([[ hi! todOperatorSymbol  {{.Cyan.Vim       "fg"}} ]])
vim.cmd([[ hi! todProperty        {{.Red.Vim        "fg"}} ]])
vim.cmd([[ hi! todReturn          {{.Purple.Vim     "fg"}} ]])
vim.cmd([[ hi! todStatic          {{.Purple.Vim     "fg"}} ]])
vim.cmd([[ hi! todString          {{.Green.Vim      "fg"}} ]])
vim.cmd([[ hi! todSuper           {{.Cyan.Vim       "fg"}} ]])
vim.cmd([[ hi! todTag             {{.Red.Vim        "fg"}} ]])
vim.cmd([[ hi! todTagAttribute    {{.DarkYellow.Vim "fg"}} ]])
vim.cmd([[ hi! todTagName         {{.Red.Vim        "fg"}} ]])
vim.cmd([[ hi! todThis            {{.Cyan.Vim       "fg"}} ]])
vim.cmd([[ hi! todType            {{.Purple.Vim     "fg"}} ]])
vim.cmd([[ hi! todTypeName        {{.Cyan.Vim       "fg"}} ]])
vim.cmd([[ hi! todVariable        {{.Purple.Vim     "fg"}} ]])
vim.cmd([[ hi! todVariableName    {{.White.Vim      "fg"}} ]])
vim.cmd([[ hi! todLink            {{.Blue.Vim       "fg"}} ]])
vim.cmd([[ hi! todUrl             {{.Cyan.Vim       "fg"}} ]])
vim.cmd([[ hi! todBrackets        {{.White.Vim      "fg"}} ]])

--------------------------------------------------------------------------------
-- Defaults: Syntax Groups (descriptions and ordering from `:h w18`)

vim.cmd([[ hi!   Character        {{.Character}} ]])
vim.cmd([[ hi!   Conditional      {{.Conditional}} ]])
vim.cmd([[ hi!   Constant         {{.Constant}} ]])
vim.cmd([[ hi!   Debug            {{.Debug}} ]])
vim.cmd([[ hi!   Define           {{.Define}} ]])
vim.cmd([[ hi!   Delimiter        {{.Delimiter}} ]])
vim.cmd([[ hi!   Exception        {{.Exception}} ]])
vim.cmd([[ hi!   Function         {{.Function}} ]])
vim.cmd([[ hi!   Identifier       {{.Identifier}} ]])
vim.cmd([[ hi!   Ignore           {{.Ignore}} ]])
vim.cmd([[ hi!   Include          {{.Include}} ]])
vim.cmd([[ hi!   Keyword          {{.Keyword}} ]])
vim.cmd([[ hi!   Label            {{.Label}} ]])
vim.cmd([[ hi!   Macro            {{.Macro}} ]])
vim.cmd([[ hi!   Operator         {{.Operator}} ]])
vim.cmd([[ hi!   PreCondit        {{.PreCondit}} ]])
vim.cmd([[ hi!   PreProc          {{.PreProc}} ]])
vim.cmd([[ hi!   Repeat           {{.Repeat}} ]])
vim.cmd([[ hi!   Special          {{.Special}} ]])
vim.cmd([[ hi!   SpecialChar      {{.SpecialChar}} ]])
vim.cmd([[ hi!   SpecialComment   {{.SpecialComment}} ]])
vim.cmd([[ hi!   Statement        {{.Statement}} ]])
vim.cmd([[ hi!   StorageClass     {{.StorageClass}} ]])
vim.cmd([[ hi!   Structure        {{.Structure}} ]])
vim.cmd([[ hi!   Tag              {{.Tag}} ]])
vim.cmd([[ hi!   Todo             {{.Todo}} ]])
vim.cmd([[ hi!   Type             {{.Type}} ]])
vim.cmd([[ hi!   Typedef          {{.Typedef}} ]])
vim.cmd([[ hi!   Underlined       {{.Underlined}} ]])
vim.cmd([[ hi! link Boolean       todBoolean ]])
vim.cmd([[ hi! link Comment       todComment ]])
vim.cmd([[ hi! link Error         todError ]])
vim.cmd([[ hi! link Float         todNumber ]])
vim.cmd([[ hi! link Number        todNumber ]])
vim.cmd([[ hi! link String        todString ]])

--------------------------------------------------------------------------------
-- Defaults: Highlighting Groups (descriptions and ordering from `:h highlight-groups`)

vim.cmd([[ hi!   ColorColumn        {{.ColorColumn}} ]])
vim.cmd([[ hi!   Conceal            {{.Conceal}} ]])
vim.cmd([[ hi!   Cursor             {{.Cursor}} ]])
vim.cmd([[ hi!   CursorIM           {{.CursorIM}} ]])
vim.cmd([[ hi!   CursorColumn       {{.CursorColumn}} ]])
vim.cmd([[ hi!   CursorLine         {{.CursorLine}} ]])
vim.cmd([[ hi!   Directory          {{.Directory}} ]])
vim.cmd([[ hi!   DiffAdd            {{.DiffAdd}} ]])
vim.cmd([[ hi!   DiffChange         {{.DiffChange}} ]])
vim.cmd([[ hi!   DiffDelete         {{.DiffDelete}} ]])
vim.cmd([[ hi!   DiffText           {{.DiffText}} ]])
vim.cmd([[ hi!   EndOfBuffer        {{.EndOfBuffer}} ]])
vim.cmd([[ hi!   ErrorMsg           {{.ErrorMsg}} ]])
vim.cmd([[ hi!   VertSplit          {{.VertSplit}} ]])
vim.cmd([[ hi!   Folded             {{.Folded}} ]])
vim.cmd([[ hi!   FoldColumn         {{.FoldColumn}} ]])
vim.cmd([[ hi!   SignColumn         {{.SignColumn}} ]])
vim.cmd([[ hi!   IncSearch          {{.IncSearch}} ]])
vim.cmd([[ hi!   LineNr             {{.LineNr}} ]])
vim.cmd([[ hi!   CursorLineNr       {{.CursorLineNr}} ]])
vim.cmd([[ hi!   MatchParen         {{.MatchParen}} ]])
vim.cmd([[ hi!   ModeMsg            {{.ModeMsg}} ]])
vim.cmd([[ hi!   MoreMsg            {{.MoreMsg}} ]])
vim.cmd([[ hi!   NonText            {{.NonText}} ]])
vim.cmd([[ hi!   Normal             {{.Normal}} ]])
vim.cmd([[ hi!   Pmenu              {{.White.Vim "fg"}} {{.MenuGrey.Vim "bg"}} ]])
vim.cmd([[ hi!   PmenuSel           {{.PmenuSel}} ]])
vim.cmd([[ hi!   PmenuSbar          {{.MenuGrey.Vim "fg"}} {{.MenuGrey.Vim "bg"}} ]])
vim.cmd([[ hi!   PmenuThumb         {{.Grey.Vim "fg"}} {{.Grey.Vim "bg"}} ]])
vim.cmd([[ hi!   Question           {{.Question}} ]])
vim.cmd([[ hi!   QuickFixLine       {{.QuickFixLine}} ]])
vim.cmd([[ hi!   Search             {{.Search}} ]])
vim.cmd([[ hi!   SpecialKey         {{.SpecialKey}} ]])
vim.cmd([[ hi!   SpellBad           {{.SpellBad}}   guisp={{.Red.Hex}} ]])
vim.cmd([[ hi!   SpellCap           {{.SpellCap}}   guisp={{.Blue.Hex}} ]])
vim.cmd([[ hi!   SpellLocal         {{.SpellLocal}} guisp={{.Purple.Hex}} ]])
vim.cmd([[ hi!   SpellRare          {{.SpellRare}}  guisp={{.Yellow.Hex}} ]])
vim.cmd([[ hi!   StatusLine         {{.StatusLine}} ]])
vim.cmd([[ hi!   StatusLineNC       {{.StatusLineNC}} ]])
vim.cmd([[ hi!   StatusLineTerm     {{.StatusLineTerm}} ]])
vim.cmd([[ hi!   StatusLineTermNC   {{.StatusLineTermNC}} ]])
vim.cmd([[ hi!   TabLine            {{.TabLine}} ]])
vim.cmd([[ hi!   TabLineFill        {{.TabLineFill}} ]])
vim.cmd([[ hi!   TabLineSel         {{.TabLineSel}} ]])
vim.cmd([[ hi!   Terminal           {{.Terminal}} ]])
vim.cmd([[ hi!   Title              {{.Title}} ]])
vim.cmd([[ hi!   Visual             {{.Visual}} ]])
vim.cmd([[ hi!   VisualNOS          {{.VisualNOS}} ]])
vim.cmd([[ hi!   WarningMsg         {{.WarningMsg}} ]])
vim.cmd([[ hi!   WildMenu           {{.WildMenu}} ]])

--------------------------------------------------------------------------------
-- Float

vim.cmd([[ hi! FloatBorder {{.Colors.black.Vim "fg"}} {{.MenuGrey.Vim "bg"}} ]])
vim.cmd([[ hi! NormalFloat {{.White.Vim "fg"}} {{.MenuGrey.Vim "bg"}} ]])

-- Language
-- highlight   ClassName          {{.ClassName}}
-- highlight   Property           {{.Property}}

--------------------------------------------------------------------------------
-- Diff

vim.cmd([[ if &diff ]])
vim.cmd([[ highlight! CursorLine         {{.DiffCursorLine}} ]])
vim.cmd([[ endif ]])

--------------------------------------------------------------------------------
-- Neovim:

vim.cmd([[ hi! NvimInternalError    {{.Red.Vim "bg"}}    {{.Black.Vim "fg"}} ]])

vim.cmd([[ hi! RedrawDebugClear     {{.Yellow.Vim "bg"}} {{.Black.Vim "fg"}} ]])
vim.cmd([[ hi! RedrawDebugComposed  {{.Green.Vim "bg"}}  {{.Black.Vim "fg"}} ]])
vim.cmd([[ hi! RedrawDebugRecompose {{.Red.Vim "bg"}}    {{.Black.Vim "fg"}} ]])

--------------------------------------------------------------------------------
-- Neovim: LSP

vim.cmd([[ hi! DiagnosticError   {{.Error}} ]])
vim.cmd([[ hi! DiagnosticWarn    {{.Warning}} ]])
vim.cmd([[ hi! DiagnosticInfo    {{.Information}} ]])
vim.cmd([[ hi! DiagnosticHint    {{.Hint}} ]])

vim.cmd([[ hi! DiagnosticSignAction  {{.Purple.Vim "fg"}} ]])

-- Quickfix:

vim.cmd([[ hi QuickFixLine {{.Black.Vim "fg"}} {{.Blue.Vim "bg"}} ]])

--------------------------------------------------------------------------------
-- Plugin: Termdebug highlighting for Vim 8.1+
vim.cmd([[ " ]])
-- " See `:h hl-debugPC` and `:h hl-debugBreakpoint`.
-- call s:h("debugPC", { "bg": s:special_grey }) " the current position
-- call s:h("debugBreakpoint", { "fg": s:black, "bg": s:red }) " a breakpoint
vim.cmd([[ " ]])

--------------------------------------------------------------------------------
-- Language: CSS
vim.cmd([[ " ]])
-- => https://github.com/neovim/neovim/blob/dd7355358edc40734afcce695432756859377eb8/runtime/syntax/css.vim

vim.cmd([[ hi! cssAttrComma         {{.Purple.Vim     "fg"}} ]])
vim.cmd([[ hi! cssAttributeSelector {{.Green.Vim      "fg"}} ]])
vim.cmd([[ hi! cssBraces            {{.White.Vim      "fg"}} ]])
vim.cmd([[ hi! cssClassName         {{.DarkYellow.Vim "fg"}} ]])
vim.cmd([[ hi! cssClassNameDot      {{.DarkYellow.Vim "fg"}} ]])
vim.cmd([[ hi! cssDefinition        {{.Purple.Vim     "fg"}} ]])
vim.cmd([[ hi! cssFontAttr          {{.DarkYellow.Vim "fg"}} ]])
vim.cmd([[ hi! cssFontDescriptor    {{.Purple.Vim     "fg"}} ]])
vim.cmd([[ hi! cssFunctionName      {{.Blue.Vim       "fg"}} ]])
vim.cmd([[ hi! cssIdentifier        {{.Blue.Vim       "fg"}} ]])
vim.cmd([[ hi! cssImportant         {{.Purple.Vim     "fg"}} ]])
vim.cmd([[ hi! cssInclude           {{.White.Vim      "fg"}} ]])
vim.cmd([[ hi! cssIncludeKeyword    {{.Purple.Vim     "fg"}} ]])
vim.cmd([[ hi! cssMediaType         {{.DarkYellow.Vim "fg"}} ]])
vim.cmd([[ hi! cssProp              {{.White.Vim      "fg"}} ]])
vim.cmd([[ hi! cssPseudoClassId     {{.Cyan.Vim       "fg"}} ]])
vim.cmd([[ hi! cssPseudoClassId     {{.DarkYellow.Vim "fg"}} ]])
vim.cmd([[ hi! cssSelectorOp        {{.Purple.Vim     "fg"}} ]])
vim.cmd([[ hi! cssSelectorOp2       {{.Purple.Vim     "fg"}} ]])
vim.cmd([[ hi! cssTagName           {{.Red.Vim        "fg"}} ]])
vim.cmd([[ hi! cssUnitDecorators    {{.DarkYellow.Vim "fg"}} ]])
vim.cmd([[ hi! cssVendor            {{.Grey.Vim       "fg"}} ]])

--------------------------------------------------------------------------------
-- Language: scss

vim.cmd([[ hi! link sassId    cssIdentifier ]])
vim.cmd([[ hi! link sassClass cssClassName ]])

-- " https://github.com/cakebaker/scss-syntax.vim
-- call s:h("scssExtend", { "fg": s:purple })
-- call s:h("scssImport", { "fg": s:purple })
-- call s:h("scssInclude", { "fg": s:purple })
-- call s:h("scssMixin", { "fg": s:purple })
-- call s:h("scssSelectorName", { "fg": s:dark_yellow })
-- call s:h("scssVariable", { "fg": s:purple })

--------------------------------------------------------------------------------
-- Language: Sass

-- " https://github.com/tpope/vim-haml
-- call s:h("sassAmpersand", { "fg": s:red })
-- call s:h("sassClass", { "fg": s:dark_yellow })
-- call s:h("sassControl", { "fg": s:purple })
-- call s:h("sassExtend", { "fg": s:purple })
-- call s:h("sassFor", { "fg": s:white })
-- call s:h("sassFunction", { "fg": s:cyan })
-- call s:h("sassId", { "fg": s:blue })
-- call s:h("sassInclude", { "fg": s:purple })
-- call s:h("sassMedia", { "fg": s:purple })
-- call s:h("sassMediaOperators", { "fg": s:white })
-- call s:h("sassMixin", { "fg": s:purple })
-- call s:h("sassMixinName", { "fg": s:blue })
-- call s:h("sassMixing", { "fg": s:purple })
-- call s:h("sassVariable", { "fg": s:purple })

--------------------------------------------------------------------------------
-- Language: Fish Shell

-- call s:h("fishKeyword", { "fg": s:purple })
-- call s:h("fishConditional", { "fg": s:purple })

--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Language: HTML

vim.cmd([[ hi! link htmlArg            todTagAttribute ]])
vim.cmd([[ hi! link htmlEndTag         todTag ]])
vim.cmd([[ hi! link htmlH1             todNormal ]])
vim.cmd([[ hi! link htmlH2             todNormal ]])
vim.cmd([[ hi! link htmlH3             todNormal ]])
vim.cmd([[ hi! link htmlH4             todNormal ]])
vim.cmd([[ hi! link htmlH5             todNormal ]])
vim.cmd([[ hi! link htmlH6             todNormal ]])
vim.cmd([[ hi! link htmlLink           todNormal ]])
vim.cmd([[ hi! link htmlSpecialTagName todTagName ]])
vim.cmd([[ hi! link htmlTag            todTag ]])
vim.cmd([[ hi! link htmlTagName        todTagName ]])
vim.cmd([[ hi! link htmlTitle          todNormal ]])

vim.cmd([[ hi! htmlBold                term=bold                  cterm=bold                  gui=bold ]])
vim.cmd([[ hi! htmlBoldUnderline       term=bold,underline        cterm=bold,underline        gui=bold,underline ]])
vim.cmd([[ hi! htmlBoldItalic          term=bold,italic           cterm=bold,italic           gui=bold,italic ]])
vim.cmd(
  [[ hi! htmlBoldUnderlineItalic term=bold,italic,underline cterm=bold,italic,underline gui=bold,italic,underline ]]
)
vim.cmd([[ hi! htmlUnderline           term=underline             cterm=underline             gui=underline ]])
vim.cmd([[ hi! htmlUnderlineItalic     term=italic,underline      cterm=italic,underline      gui=italic,underline ]])
vim.cmd([[ hi! htmlItalic              term=italic                cterm=italic                gui=italic ]])

--------------------------------------------------------------------------------
-- Language: XML

vim.cmd([[ hi! link xmlTag     todTag ]])
vim.cmd([[ hi! link xmlEndTag  todTagName ]])
vim.cmd([[ hi! link xmlTagName todTagName ]])

--------------------------------------------------------------------------------
-- Language: Typescript

vim.cmd([[ hi! link typescriptArrowFunc      todFunction ]])
vim.cmd([[ hi! link typescriptAssign         todOperatorSymbol ]])
vim.cmd([[ hi! link typescriptBinaryOp       todOperatorSymbol ]])
vim.cmd([[ hi! link typescriptBoolean        todBoolean ]])
vim.cmd([[ hi! link typescriptBraces         todBraces ]])
vim.cmd([[ hi! link typescriptCall           todVariableName ]])
vim.cmd([[ hi! link typescriptClassHeritage  todClassName ]])
vim.cmd([[ hi! link typescriptClassName      todClassName ]])
vim.cmd([[ hi! link typescriptFunctionMethod todFunctionName ]])
vim.cmd([[ hi! link typescriptNull           todNull ]])
vim.cmd([[ hi! link typescriptObjectLabel    todProperty ]])
vim.cmd([[ hi! link typescriptOperator       todOperatorKeyword ]])
vim.cmd([[ hi! link typescriptParens         todParens ]])
vim.cmd([[ hi! link typescriptProp           todProperty ]])
vim.cmd([[ hi! link typescriptReflectMethod  todFunctionName ]])
vim.cmd([[ hi! link typescriptTypeReference  todTypeName ]])
vim.cmd([[ hi! link typescriptUnaryOp        todOperatorSymbol ]])
vim.cmd([[ hi! link typescriptVariable       todVariable ]])

--------------------------------------------------------------------------------
-- Language: Go

-- fatih/vim-go => sheerun/vim-polyglot

vim.cmd([[ hi! link goImport       todImport ]])
vim.cmd([[ hi! link goPackage      todModule ]])
vim.cmd([[ hi! link goType         todTypeName ]])
vim.cmd([[ hi! link goDeclaration  todType ]])
vim.cmd([[ hi! link goDeclType     todType ]])
vim.cmd([[ hi! link goBoolean      todBoolean ]])
vim.cmd([[ hi! link goFunctionCall todFunctionName ]])
vim.cmd([[ hi! link goVarAssign    todVariableName ]])

vim.cmd([[ hi! goCoverageCovered {{.OK}} ]])
vim.cmd([[ hi! goCoverageUncover {{.Error}} ]])

--------------------------------------------------------------------------------
-- Language: JavaScript

-- pangloss/vim-javascript => sheerun/vim-polyglot
vim.cmd([[ " ]])
-- not perfect:
-- - arrow function braces

vim.cmd([[ hi! link jsArrowFunction   todFunction ]])
vim.cmd([[ hi! link jsBooleanFalse    todBoolean ]])
vim.cmd([[ hi! link jsBooleanTrue     todBoolean ]])
vim.cmd([[ hi! link jsClassDefinition todClassName ]])
vim.cmd([[ hi! link jsClassFuncName   todFunctionName ]])
vim.cmd([[ hi! link jsFuncName        todFunctionName ]])
vim.cmd([[ hi! link jsFunction        todFunction ]])
vim.cmd([[ hi! link jsFunctionKey     todProperty ]])
vim.cmd([[ hi! link jsModuleKeyword   todModuleName ]])
vim.cmd([[ hi! link jsObjectKey       todProperty ]])
vim.cmd([[ hi! link jsObjectProp      todProperty ]])
vim.cmd([[ hi! link jsOperator        todOperatorSymbol ]])
vim.cmd([[ hi! link jsOperatorKeyword todOperatorKeyword ]])
vim.cmd([[ hi! link jsReturn          todReturn ]])
vim.cmd([[ hi! link jsStatic          todStatic ]])
vim.cmd([[ hi! link jsThis            todThis ]])
vim.cmd([[ hi! link jsxAttrib         todTagAttribute ]])
vim.cmd([[ hi! link jsxClosePunct     todTag ]])
vim.cmd([[ hi! link jsxEqual          todTag ]])
vim.cmd([[ hi! link jsxOpenPunct      todTag ]])
vim.cmd([[ hi! link jsTemplateBraces  todParens ]])
vim.cmd([[ hi! link jsxBraces         todBraces ]])
vim.cmd([[ hi! link jsBrackets        todBrackets ]])
-- yuezk/vim-js

vim.cmd([[ hi! link jsBraces          todBraces ]])
vim.cmd([[ hi! link jsClassMethodType todStatic ]])
vim.cmd([[ hi! link jsClassName       todClassName ]])
vim.cmd([[ hi! link jsComma           todNormal ]])
vim.cmd([[ hi! link jsConstructor     todFunctionName ]])
vim.cmd([[ hi! link jsDocIdentifier   todCommentValue ]])
vim.cmd([[ hi! link jsDocModuleName   todCommentValue ]])
vim.cmd([[ hi! link jsDocTags         todCommentTag ]])
vim.cmd([[ hi! link jsIdentifierProp  todProperty ]])
vim.cmd([[ hi! link jsIfCondition     todOperatorSymbol ]])
vim.cmd([[ hi! link jsImport          todImport ]])
vim.cmd([[ hi! link jsModuleName      todModuleName ]])
vim.cmd([[ hi! link jsNew             todOperatorKeyword ]])
vim.cmd([[ hi! link jsNewClassName    todClassName ]])
vim.cmd([[ hi! link jsNumberDot       todNumber ]])
vim.cmd([[ hi! link jsParens          todParens ]])
vim.cmd([[ hi! link jsReturn          todReturn ]])
vim.cmd([[ hi! link jsSuper           todSuper ]])
vim.cmd([[ hi! link jsTopOperator     todOperatorSymbol ]])
vim.cmd([[ hi! link jsVariableType    todVariable ]])

-- axmellon/vim-jsx-pretty

-- TODO

-- othree/yajs.vim
vim.cmd([[ " ]])
-- not perfect:
-- - moduleName
-- - property
-- - new className

vim.cmd([[ hi! link javascriptArrowFunc         todKeyword ]])
vim.cmd([[ hi! link javascriptArrowFuncArg      todVariableName ]])
vim.cmd([[ hi! link javascriptBoolean           todBoolean ]])
vim.cmd([[ hi! link javascriptBraces            todBraces ]])
vim.cmd([[ hi! link javascriptClassName         todClassName ]])
vim.cmd([[ hi! link javascriptClassSuper        todSuper ]])
vim.cmd([[ hi! link javascriptClassSuperName    todClassName ]])
vim.cmd([[ hi! link javascriptDocComment        todComment ]])
vim.cmd([[ hi! link javascriptDocParamName      todCommentValue ]])
vim.cmd([[ hi! link javascriptDocTags           todCommentTag ]])
vim.cmd([[ hi! link javascriptEndColons         toEndColon ]])
vim.cmd([[ hi! link javascriptFunctionMethod    todFunctionName ]])
vim.cmd([[ hi! link javascriptNull              todNull ]])
vim.cmd([[ hi! link javascriptNumber            todNumber ]])
vim.cmd([[ hi! link javascriptObjectLabel       todProperty ]])
vim.cmd([[ hi! link javascriptObjectMethodName  todFunctionName ]])
vim.cmd([[ hi! link javascriptOpSymbol          todOperatorSymbol ]])
vim.cmd([[ hi! link javascriptOpSymbols         todOperatorSymbol ]])
vim.cmd([[ hi! link javascriptOperator          todOperatorKeyword ]])
vim.cmd([[ hi! link javascriptProp              todProperty ]])
vim.cmd([[ hi! link javascriptReflectMethod     todFunctionName ]])
vim.cmd([[ hi! link javascriptReturn            todReturn ]])
vim.cmd([[ hi! link javascriptUndefined         todNull ]])
vim.cmd([[ hi! link javascriptVariable          todVariable ]])

--------------------------------------------------------------------------------
-- Language: JSON

vim.cmd([[ hi! link jsonBoolean           todBoolean ]])
vim.cmd([[ hi! link jsonBraces            todBraces ]])
vim.cmd([[ hi! link jsonCommentError      todComment ]])
vim.cmd([[ hi! link jsonKeyword           todProperty ]])
vim.cmd([[ hi! link jsonMissingCommaError todError ]])
vim.cmd([[ hi! link jsonNoQuotesError     todError ]])
vim.cmd([[ hi! link jsonNumError          todError ]])
vim.cmd([[ hi! link jsonNumber            todNumber ]])
vim.cmd([[ hi! link jsonQuote             todNormal ]])
vim.cmd([[ hi! link jsonSemicolonError    todError ]])
vim.cmd([[ hi! link jsonString            todString ]])
vim.cmd([[ hi! link jsonStringSQError     todError ]])

--------------------------------------------------------------------------------
-- Language: YAML

vim.cmd([[ hi! link yamlBlockCollectionItemStart todNormal ]])
vim.cmd([[ hi! link yamlBlockMappingKey          todProperty ]])
vim.cmd([[ hi! link yamlBool                     todBoolean ]])
vim.cmd([[ hi! link yamlFlowIndicator            todNorma ]])
vim.cmd([[ hi! link yamlKeyValueDelimiter        todNormal ]])
vim.cmd([[ hi! link yamlNodeTag                  todFunctionName ]])
vim.cmd([[ hi! link yamlPlainScalar              todString ]])

--------------------------------------------------------------------------------
-- Language: LESS

-- call s:h("lessVariable", { "fg": s:purple })
-- call s:h("lessAmpersandChar", { "fg": s:white })
-- call s:h("lessClass", { "fg": s:dark_yellow })

--------------------------------------------------------------------------------
-- Language: Markdown

vim.cmd([[ hi! link markdownBlockquote    todComment ]])
vim.cmd([[ hi! link markdownCode          todString ]])
vim.cmd([[ hi! link markdownCodeBlock     todString ]])
vim.cmd([[ hi! link markdownCodeDelimiter todString ]])
vim.cmd([[ hi! link markdownLinkDelimiter todNormal ]])

vim.cmd([[ hi! markdownBold             term=bold cterm=bold gui=bold ]])
vim.cmd([[ hi! markdownH1               term=bold cterm=bold gui=bold ]])
vim.cmd([[ hi! markdownH2               term=bold cterm=bold gui=bold ]])
vim.cmd([[ hi! markdownH3               term=bold cterm=bold gui=bold ]])
vim.cmd([[ hi! markdownH4               term=bold cterm=bold gui=bold ]])
vim.cmd([[ hi! markdownH5               term=bold cterm=bold gui=bold ]])
vim.cmd([[ hi! markdownH6               term=bold cterm=bold gui=bold ]])
vim.cmd([[ hi! markdownHeadingDelimiter {{.Red.Vim "fg"}} ]])
vim.cmd([[ hi! markdownItalic           term=italic cterm=italic gui=italic ]])
vim.cmd([[ hi! link markdownLinkText    todLink ]])
vim.cmd([[ hi! link markdownUrl         todUrl ]])

vim.cmd([[ hi! mkdHeading       {{.Red.Vim "fg"}} ]])
vim.cmd([[ hi! link mkdLink     todLink ]])
vim.cmd([[ hi! link mkdUrl      todUrl ]])

--------------------------------------------------------------------------------
-- Language: PHP

vim.cmd([[ hi! link phpInclude      Keyword ]])
vim.cmd([[ hi! link phpVarSelector  Identifier ]])
vim.cmd([[ hi! link phpClass        todClassName ]])
vim.cmd([[ hi! link phpClassExtends todClassName ]])
vim.cmd([[ hi! link phpParent       todParens ]])
vim.cmd([[ hi! link phpMethodsVar   todProperty ]])

-- hi! phpClassExtends    {{.ExtendsClassName}}
-- hi! phpFunction        {{.Function}}
-- hi! phpParent          {{.Brace}}
-- hi! phpRegion          {{.Normal}}
-- hi! phpUseClass        {{.ClassName}}

-- call s:h("phpVarSelector", { "fg": s:red })
-- call s:h("phpOperator", { "fg": s:white })
-- call s:h("phpParent", { "fg": s:white })
-- call s:h("phpMemberSelector", { "fg": s:white })
-- call s:h("phpType", { "fg": s:purple })
-- call s:h("phpKeyword", { "fg": s:purple })
-- call s:h("phpUseAlias", { "fg": s:white })
-- call s:h("phpInclude", { "fg": s:purple })
-- call s:h("phpDocTags", { "fg": s:white })
-- call s:h("phpFunction", { "fg": s:blue })
-- call s:h("phpFunctions", { "fg": s:cyan })
-- call s:h("phpMethodsVar", { "fg": s:dark_yellow })
-- call s:h("phpMagicConstants", { "fg": s:dark_yellow })
-- call s:h("phpSuperglobals", { "fg": s:red })
-- call s:h("phpConstants", { "fg": s:dark_yellow })

--------------------------------------------------------------------------------
-- Language: Ruby

-- call s:h("rubyBlockParameter", { "fg": s:red})
-- call s:h("rubyBlockParameterList", { "fg": s:red })
-- call s:h("rubyClass", { "fg": s:purple})
-- call s:h("rubyConstant", { "fg": s:yellow})
-- call s:h("rubyControl", { "fg": s:purple })
-- call s:h("rubyEscape", { "fg": s:red})
-- call s:h("rubyFunction", { "fg": s:blue})
-- call s:h("rubyGlobalVariable", { "fg": s:red})
-- call s:h("rubyInclude", { "fg": s:blue})
-- call s:h("rubyIncluderubyGlobalVariable", { "fg": s:red})
-- call s:h("rubyInstanceVariable", { "fg": s:red})
-- call s:h("rubyInterpolation", { "fg": s:cyan })
-- call s:h("rubyInterpolationDelimiter", { "fg": s:red })
-- call s:h("rubyInterpolationDelimiter", { "fg": s:red})
-- call s:h("rubyRegexp", { "fg": s:cyan})
-- call s:h("rubyRegexpDelimiter", { "fg": s:cyan})
-- call s:h("rubyStringDelimiter", { "fg": s:green})
-- call s:h("rubySymbol", { "fg": s:cyan})
vim.cmd([[ " ]])

--------------------------------------------------------------------------------
-- Language: TeX

-- call s:h("texStatement", { "fg": s:purple })
-- call s:h("texSubscripts", { "fg": s:dark_yellow })
-- call s:h("texSuperscripts", { "fg": s:dark_yellow })
-- call s:h("texTodo", { "fg": s:dark_red })
-- call s:h("texBeginEnd", { "fg": s:purple })
-- call s:h("texBeginEndName", { "fg": s:blue })
-- call s:h("texMathMatcher", { "fg": s:blue })
-- call s:h("texMathDelim", { "fg": s:blue })
-- call s:h("texDelimiter", { "fg": s:dark_yellow })
-- call s:h("texSpecialChar", { "fg": s:dark_yellow })
-- call s:h("texCite", { "fg": s:blue })
-- call s:h("texRefZone", { "fg": s:blue })

--------------------------------------------------------------------------------
-- Plugin: airblade/vim-gitgutter

vim.cmd([[ hi! GitGutterAdd    {{.GutterAdded}} ]])
vim.cmd([[ hi! GitGutterChange {{.GutterChanged}} ]])
vim.cmd([[ hi! GitGutterDelete {{.GutterRemoved}} ]])

--------------------------------------------------------------------------------
-- Plugin: easymotion/vim-easymotion

-- call s:h("EasyMotionTarget", { "fg": s:red, "gui": "bold", "cterm": "bold" })
-- call s:h("EasyMotionTarget2First", { "fg": s:yellow, "gui": "bold", "cterm": "bold" })
-- call s:h("EasyMotionTarget2Second", { "fg": s:dark_yellow, "gui": "bold", "cterm": "bold" })
-- call s:h("EasyMotionShade",  { "fg": s:comment_grey })

--------------------------------------------------------------------------------
-- Language:  Lua

-- highlight link luaParens           Text
-- highlight link luaBraces           Text
-- highlight link luaBrackets         Text
-- highlight link luaBuiltIn          Special
-- highlight link luaComment          Comment
-- highlight link luaCommentLongTag   luaCommentLong
-- highlight link luaCommentLong      luaComment
-- highlight link luaCommentTodo      Todo
-- highlight link luaCond             Conditional
-- highlight link luaConstant         Constant
-- highlight link luaDocTag           Underlined
-- highlight link luaEllipsis         Special
-- highlight link luaElse             Conditional
-- highlight link luaError            Error
-- highlight link luaFloat            Float
-- highlight link luaFuncArgName      Noise
-- highlight link luaFuncCall         PreProc
-- highlight link luaFuncId           Text
-- highlight link luaFuncName         Function
-- highlight luaFuncTable        {{.Error}}
-- highlight link luaFuncKeyword      luaFunction
-- highlight link luaFunction         Function
-- highlight link luaFuncParens       Text
-- highlight link luaGoto             luaStatement
-- highlight link luaGotoLabel        Noise
-- highlight link luaIn               Repeat
-- highlight link luaLabel            Label
vim.cmd([[ hi! link luaLocal            StorageClass ]])
-- highlight link luaNumber           Number
-- highlight link luaSymbolOperator   luaOperator
-- highlight link luaOperator         Operator
-- highlight link luaRepeat           Repeat
-- highlight link luaSemiCol          Delimiter
-- highlight link luaSpecialTable     Special
-- highlight link luaSpecialValue     PreProc
-- highlight link luaStatement        Statement
-- highlight link luaString           String
-- highlight link luaStringLong       luaString
-- highlight link luaStringSpecial    SpecialChar
-- highlight link luaErrHand          Exception

--------------------------------------------------------------------------------
-- Language: viml
vim.cmd([[ hi! link vimLet          StorageClass ]])
vim.cmd([[ hi! link vimVar          Normal ]])
vim.cmd([[ hi! link vimCommand      Structure ]])
vim.cmd([[ hi! link vimCommentTitle todCommentTitle ]])

--------------------------------------------------------------------------------
-- Plugin: mhinz/vim-signify

vim.cmd([[ hi! SignifySignAdd    {{.GutterAdded}} ]])
vim.cmd([[ hi! SignifySignChange {{.GutterChanged}} ]])
vim.cmd([[ hi! SignifySignDelete {{.GutterRemoved}} ]])

--------------------------------------------------------------------------------
-- Plugin: neomake/neomake

vim.cmd([[ hi! NeomakeErrorSign   {{.Error}} ]])
vim.cmd([[ hi! NeomakeWarningSign {{.Warning}} ]])
vim.cmd([[ hi! NeomakeInfoSign    {{.Information}} ]])

--------------------------------------------------------------------------------
-- Plugin: tpope/vim-fugitive

vim.cmd([[ hi! diffAdded    {{.GutterAdded}} ]])
vim.cmd([[ hi! diffRemoved  {{.GutterRemoved}} ]])

--------------------------------------------------------------------------------
-- Plugin: Git Highlighting

vim.cmd([[ hi! link gitcommitComment todComment ]])

-- call s:h("gitcommitUnmerged", { "fg": s:green })
-- call s:h("gitcommitOnBranch", {})
-- call s:h("gitcommitBranch", { "fg": s:purple })
-- call s:h("gitcommitDiscardedType", { "fg": s:red })
-- call s:h("gitcommitSelectedType", { "fg": s:green })
-- call s:h("gitcommitHeader", {})
-- call s:h("gitcommitUntrackedFile", { "fg": s:cyan })
-- call s:h("gitcommitDiscardedFile", { "fg": s:red })
-- call s:h("gitcommitSelectedFile", { "fg": s:green })
-- call s:h("gitcommitUnmergedFile", { "fg": s:yellow })
-- call s:h("gitcommitFile", {})
-- call s:h("gitcommitSummary", { "fg": s:white })
-- call s:h("gitcommitOverflow", { "fg": s:red })
-- hi link gitcommitNoBranch gitcommitBranch
-- hi link gitcommitUntracked gitcommitComment
-- hi link gitcommitDiscarded gitcommitComment
-- hi link gitcommitSelected gitcommitComment
-- hi link gitcommitDiscardedArrow gitcommitDiscardedFile
-- hi link gitcommitSelectedArrow gitcommitSelectedFile
-- hi link gitcommitUnmergedArrow gitcommitUnmergedFile

--------------------------------------------------------------------------------
-- Plugin: coc.nvim

vim.cmd([[ hi! CocSelectedText            {{.Red.Vim "fg"}} ]])
vim.cmd([[ hi! CocHighlightText           {{.Highlight}} ]])
vim.cmd([[ hi! CocUnderline               gui=underline cterm=underline ]])
vim.cmd([[ hi! CocCodeLens                {{.Comment}} ]])
vim.cmd([[ hi! link CocHighlightTextRead  CocHighlightText ]])
vim.cmd([[ hi! link CocHighlightTextWrite CocHighlightText ]])
vim.cmd([[ " ]])
vim.cmd([[ hi! CocErrorSign           {{.Error}} ]])
vim.cmd([[ hi! link CocErrorFloat     CocErrorSign ]])
vim.cmd([[ hi! link CocErrorHighlight CocUnderline ]])
vim.cmd([[ hi! clear CocErrorLine ]])

vim.cmd([[ hi! CocWarningSign           {{.Warning}} ]])
vim.cmd([[ hi! link CocWarningFloat     CocWarningSign ]])
vim.cmd([[ hi! link CocWarningHighlight CocUnderline ]])
vim.cmd([[ hi! clear CocWarningLine ]])

vim.cmd([[ hi! CocInfoSign           {{.Information}} ]])
vim.cmd([[ hi! link CocInfoFloat     CocInfoSign ]])
vim.cmd([[ hi! link CocInfoHighlight CocUnderline ]])
vim.cmd([[ hi! clear CocInfoLine ]])

vim.cmd([[ hi! CocHintSign           {{.Hint}} ]])
vim.cmd([[ hi! link CocHintFloat     CocHintSign ]])
vim.cmd([[ hi! link CocHintHighlight CocUnderline ]])
vim.cmd([[ hi! clear CocHintLine ]])

--------------------------------------------------------------------------------
-- Neovim: terminal colors
vim.cmd([[ " ]])
vim.cmd([[ if has("nvim") ]])
vim.cmd([[ let g:terminal_color_0 =         '{{.Black.Gui}}' ]])
vim.cmd([[ let g:terminal_color_1 =         '{{.Red.Gui}}' ]])
vim.cmd([[ let g:terminal_color_2 =         '{{.Green.Gui}}' ]])
vim.cmd([[ let g:terminal_color_3 =         '{{.Yellow.Gui}}' ]])
vim.cmd([[ let g:terminal_color_4 =         '{{.Blue.Gui}}' ]])
vim.cmd([[ let g:terminal_color_5 =         '{{.Purple.Gui}}' ]])
vim.cmd([[ let g:terminal_color_6 =         '{{.Cyan.Gui}}' ]])
vim.cmd([[ let g:terminal_color_7 =         '{{.White.Gui}}' ]])

-- TODO
vim.cmd([[ let g:terminal_color_8 =         '{{.Grey.Gui}}'    " s:visual_grey.gui ]])
vim.cmd([[ let g:terminal_color_9 =         '{{.DarkRed.Gui}}' ]])
vim.cmd([[ let g:terminal_color_10 =        '{{.Green.Gui}}'  " No dark version ]])
vim.cmd([[ let g:terminal_color_11 =        '{{.DarkYellow}}' " s:dark_yellow.gui ]])
vim.cmd([[ let g:terminal_color_12 =        '{{.Blue.Gui}}'   " No dark version ]])
vim.cmd([[ let g:terminal_color_13 =        '{{.Purple.Gui}}' " No dark version ]])
vim.cmd([[ let g:terminal_color_14 =        '{{.Cyan.Gui}}'   " No dark version ]])
vim.cmd([[ let g:terminal_color_15 =        '{{.White.Gui}}' " s:comment_grey.gui ]])
vim.cmd([[ let g:terminal_color_background = g:terminal_color_0 ]])
vim.cmd([[ let g:terminal_color_foreground = g:terminal_color_7 ]])
vim.cmd([[ endif ]])
vim.cmd([[ " ]])

--------------------------------------------------------------------------------
-- Plugin: indentLine

vim.cmd([[ let g:indentLine_setColors  = 1 ]])
vim.cmd([[ let g:indentLine_color_gui  = '{{.Comment.Foreground.Gui}}' ]])
vim.cmd([[ let g:indentLine_color_term = '{{.Comment.Foreground.Cterm}}' ]])

--------------------------------------------------------------------------------
-- Plugin: NERDTree
vim.cmd([[ " ]])
-- hi NERDTreePart     Special
-- hi NERDTreePartFile Type
-- hi NERDTreeExecFile Title
-- hi NERDTreeDirSlash Comment

-- hi NERDTreeLinkTarget Type
-- hi NERDTreeLinkFile   NERDTreeFile
-- hi NERDTreeLinkDir    NERDTreeDir

-- hi NERDTreeDir      Directory
-- hi NERDTreeFile     Normal
-- hi NERDTreeOpenable NERDTreeDir
-- hi NERDTreeClosable NERDTreeDir
-- hi NERDTreeIgnore   ignore
-- hi NERDTreeRO       WarningMsg
-- hi NERDTreeFlags    Number

--------------------------------------------------------------------------------
-- Plugin: josa42/nvim-filetree

vim.cmd([[ hi! TreeNormal {{.White.Vim "fg"}} {{.BlackDark.Vim "bg"}} ]])

-- Plugin: Telescope
vim.cmd([[ hi! link TelescopeNormal NormalFloat ]])
vim.cmd([[ hi! link TelescopeBorder FloatBorder ]])

vim.cmd([[ hi! link TelescopePromptNormal TelescopeNormal ]])
vim.cmd([[ hi! link TelescopeResultsNormal TelescopeNormal ]])
vim.cmd([[ hi! link TelescopePreviewNormal TelescopeNormal ]])

-- hi! TelescopeNormal         {{.BackgroundGrey.Vim "bg"}}
-- hi! TelescopeBorder         {{.BackgroundGrey.Vim "bg"}} {{.Grey.Vim "fg"}}
-- hi! TelescopePreviewBorder  {{.Black.Vim          "bg"}} {{.Grey.Vim "fg"}}
vim.cmd([[ hi! TelescopeSelection      guifg=#ffffff ]])
vim.cmd([[ hi! TelescopeMultiSelection {{.Blue.Vim           "fg"}} gui=bold ]])
vim.cmd([[ hi! TelescopeSelectionCaret {{.Blue.Vim           "fg"}} ]])

-- Plugin: rhysd/conflict-marker.vim

-- TODO use correct theme colors

vim.cmd([[ highlight ConflictMarkerBegin               guibg=#2f7366 ]])
vim.cmd([[ highlight ConflictMarkerOurs                guibg=#2e5049 ]])
vim.cmd([[ highlight ConflictMarkerTheirs              guibg=#344f69 ]])
--                                           guibg=#2f628e
vim.cmd([[ highlight ConflictMarkerEnd                 {{.Blue.Vim "bg"}}  ]])
--                                           guibg=#754a81
vim.cmd([[ highlight ConflictMarkerCommonAncestorsHunk {{.Purple.Vim "bg"}} ]])

-- Plugin: hrsh7th/nvim-cmp
-- https://github.com/hrsh7th/nvim-cmp/wiki/Menu-Appearance

vim.cmd([[ hi link CmpItemMenu Comment ]])

-- TODO use correct theme colors

-- gray
vim.cmd([[ highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough {{.Blue.Vim "fg"}} ]])
-- blue
vim.cmd([[ highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6 ]])
vim.cmd([[ highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6 ]])
-- light blue
vim.cmd([[ highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE ]])
vim.cmd([[ highlight! CmpItemKindInterface guibg=NONE guifg=#9CDCFE ]])
vim.cmd([[ highlight! CmpItemKindText guibg=NONE guifg=#9CDCFE ]])
-- pink
vim.cmd([[ highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0 ]])
vim.cmd([[ highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0 ]])
-- front
vim.cmd([[ highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4 ]])
vim.cmd([[ highlight! CmpItemKindProperty guibg=NONE guifg=#D4D4D4 ]])
vim.cmd([[ highlight! CmpItemKindUnit guibg=NONE guifg=#D4D4D4 ]])
