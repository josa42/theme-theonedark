vim.o.termguicolors = true

local hi = function(name, val)
  local ok, err = pcall(vim.api.nvim_set_hl, 0, name, val)
  if not ok then
    print('-> ' .. name .. ' > ' .. err)
  end
end

local ln = function(target, source)
  vim.cmd.hi({ 'link', target, source, bang = true })
end

local clear = function(name)
  vim.cmd.hi({ 'clear', name, bang = true })
end

vim.cmd.hi({ 'clear', bang = true })
vim.cmd.syntax('reset')

--------------------------------------------------------------------------------
-- Theme: groups
--

-- stylua: ignore start
local colors = {
  Blue           = "#61afef",
  Cyan           = "#56b6c2",
  DarkYellow     = "#d19a66",
  Green          = "#98c379",
  Purple         = "#c678dd",
  Red            = "#e06c75",
  White          = "#abb2bf",
  BackgroundGrey = "#2c323c",
  Black          = "#282c34",
  BlackDark      = "#21252B",
  MenuGrey       = "#1e2127",
  VisualGrey     = "#3E4452",
  GutterGreyy     = "#4b5263",
  Grey           = "#5c6370",
  DarkRed        = "#be5046",
}

local theme = {
  Boolean         = { fg = colors.Cyan       },
  Braces          = { fg = colors.White      },
  ClassName       = { fg = colors.Cyan       },
  Comment         = { fg = colors.Grey,      italic = true  },
  CommentTag      = { fg = colors.White,     bold   = true  },
  CommentTitle    = { fg = colors.White,     italic = true, underline = true },
  CommentValue    = { fg = colors.White      },
  Function        = { fg = colors.Purple     },
  FunctionName    = { fg = colors.Blue       },
  Import          = { fg = colors.Blue       },
  Keyword         = { fg = colors.Purple     },
  Module          = { fg = colors.Blue       },
  ModuleName      = { fg = colors.Cyan       },
  Normal          = { fg = colors.White      },
  Null            = { fg = colors.DarkYellow },
  Number          = { fg = colors.DarkYellow },
  OperatorKeyword = { fg = colors.Cyan       },
  OperatorSymbol  = { fg = colors.Cyan       },
  Property        = { fg = colors.Red        },
  Return          = { fg = colors.Purple     },
  Static          = { fg = colors.Purple     },
  String          = { fg = colors.Green      },
  Super           = { fg = colors.Cyan       },
  Tag             = { fg = colors.Red        },
  TagAttribute    = { fg = colors.DarkYellow },
  TagName         = { fg = colors.Red        },
  This            = { fg = colors.Cyan       },
  Type            = { fg = colors.Purple     },
  TypeName        = { fg = colors.Cyan       },
  Variable        = { fg = colors.Purple     },
  VariableName    = { fg = colors.White      },
  Link            = { fg = colors.Blue       },
  Url             = { fg = colors.Cyan       },
  Brackets        = { fg = colors.White      },
  Parens          = { fg = colors.White      },

  Error =       { fg = colors.Red },
  Warning =     { fg = colors.DarkYellow },
  Information = { fg = colors.Yellow },
  Hint =        { fg = colors.Blue },

  GutterAdded   = { fg = colors.Green },
  GutterChanged = { fg = colors.Yellow },
  GutterRemoved = { fg = colors.Red },
}
-- stylua: ignore end

--------------------------------------------------------------------------------
-- Defaults: Syntax Groups (descriptions and ordering from `:h w18`)
hi('Character', { fg = colors.Green })
hi('Conditional', { fg = colors.Purple })
hi('Constant', { fg = colors.Cyan })
hi('Debug', {})
hi('Define', { fg = colors.Purple })
hi('Delimiter', {})
hi('Exception', { fg = colors.Purple })
hi('Function', { fg = colors.Blue })
hi('Identifier', { fg = colors.Red })
hi('Ignore', {})
hi('Include', { fg = colors.Blue })
hi('Keyword', { fg = colors.Purple })
hi('Label', { fg = colors.Purple })
hi('Macro', { fg = colors.Purple })
hi('Operator', { fg = colors.Cyan })
hi('PreCondit', { fg = colors.Yellow })
hi('PreProc', { fg = colors.Yellow })
hi('Repeat', { fg = colors.Purple })
hi('Special', { fg = colors.Blue })
hi('SpecialChar', {})
hi('SpecialComment', {})
hi('Statement', { fg = colors.Red })
hi('StorageClass', { fg = colors.Purple })
hi('Structure', { fg = colors.Purple })
hi('Tag', {})
hi('Todo', { fg = colors.Purple })
hi('Type', { fg = colors.Cyan })
hi('Typedef', { fg = colors.Yellow })
hi('Underlined', { underline = true })

hi('Boolean', theme.Boolean)
hi('Comment', theme.Comment)
hi('Error', theme.Error)
hi('Float', theme.Number)
hi('Number', theme.Number)
hi('String', theme.String)

--------------------------------------------------------------------------------
-- Defaults: Highlighting Groups (descriptions and ordering from `:h highlight-groups`)

hi('ColorColumn', { bg = colors.BackgroundGrey })
hi('Conceal', {})
hi('Cursor', { fg = colors.Black, bg = colors.Blue })
hi('CursorIM', { bg = colors.BackgroundGrey })
hi('CursorColumn', { bg = colors.BackgroundGrey })
hi('CursorLine', { bg = colors.BackgroundGrey })
hi('Directory', { fg = colors.Blue })
hi('DiffAdd', { fg = colors.Black, bg = colors.Green })
hi('DiffChange', { fg = colors.Yellow, underline = true })
hi('DiffDelete', { fg = colors.Black, bg = colors.Red })
hi('DiffText', { fg = colors.Black, bg = colors.Yellow })
hi('EndOfBuffer', { fg = colors.Black })
hi('ErrorMsg', { fg = colors.Red })
hi('VertSplit', { fg = colors.BlackDark, bg = colors.BlackDark })
hi('Folded', { fg = colors.Grey })
hi('FoldColumn', {})
hi('SignColumn', {})
hi('IncSearch', { fg = colors.Black, bg = colors.Blue })
hi('LineNr', { fg = '#4B5263' })
hi('CursorLineNr', {})
hi('MatchParen', { fg = colors.Blue, underline = true })
hi('ModeMsg', {})
hi('MoreMsg', {})
hi('NonText', { fg = '#3B4048' })
hi('Normal', { fg = colors.White, bg = colors.Black })
hi('Pmenu', { fg = colors.White, bg = colors.MenuGrey })
hi('PmenuSel', { fg = colors.White, bg = '#3B3F4A' })
hi('PmenuSbar', { fg = colors.MenuGrey, bg = colors.MenuGrey })
hi('PmenuThumb', { fg = colors.Grey, bg = colors.Grey })
hi('Question', { fg = colors.Purple })
hi('QuickFixLine', { fg = colors.Black, bg = colors.Yellow })
hi('Search', { fg = colors.Black, bg = colors.Blue })
hi('SpecialKey', { fg = '#3B4048' })
hi('SpellBad', { undercurl = true, sp = colors.Red })
hi('SpellCap', { undercurl = true, sp = colors.Blue })
hi('SpellLocal', { undercurl = true, sp = colors.Purple })
hi('SpellRare', { undercurl = true, sp = colors.Yellow })
hi('StatusLine', { fg = colors.White, bg = colors.BackgroundGrey })
hi('StatusLineNC', { fg = colors.Grey })
hi('StatusLineTerm', { fg = colors.White, bg = colors.BackgroundGrey })
hi('StatusLineTermNC', {})
hi('TabLine', { fg = colors.Grey })
hi('TabLineFill', {})
hi('TabLineSel', { fg = colors.White })
hi('Terminal', { fg = colors.White, bg = colors.Black })
hi('Title', { fg = colors.Green })
hi('Visual', { bg = colors.VisualGrey })
hi('VisualNOS', { bg = colors.VisualGrey })
hi('WarningMsg', { fg = colors.Yellow })
hi('WildMenu', { fg = colors.Black, bg = colors.Blue })

--------------------------------------------------------------------------------
-- Float

hi('NormalFloat', { fg = colors.White, bg = colors.MenuGrey })
hi('FloatBorder', { fg = colors.Grey, bg = colors.MenuGrey })
hi('FloatTitle', { fg = colors.White, bg = colors.MenuGrey, bold = true })
-- Language
-- highlight   ClassName          guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
-- highlight   Property           guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

--------------------------------------------------------------------------------
-- Diff
if vim.o.diff then
  hi('CursorLine', { underline = true })
end
--------------------------------------------------------------------------------
-- Neovim:
hi('NvimInternalError', { bg = colors.Red, fg = colors.Black })
hi('RedrawDebugClear', { bg = colors.Yellow, fg = colors.Black })
hi('RedrawDebugComposed', { bg = colors.Green, fg = colors.Black })
hi('RedrawDebugRecompose', { bg = colors.Red, fg = colors.Black })
--
--------------------------------------------------------------------------------
-- Neovim: LSP
hi('DiagnosticError', theme.Error)
hi('DiagnosticWarn', theme.Warning)
hi('DiagnosticInfo', theme.Information)
hi('DiagnosticHint', theme.Hint)

hi('DiagnosticSignAction', { fg = colors.Purple })

-- Quickfix:
hi('QuickFixLine', { fg = colors.Black, bg = colors.Blue })

--------------------------------------------------------------------------------
-- Plugin: Termdebug highlighting for Vim 8.1+
--
-- " See `:h hl-debugPC` and `:h hl-debugBreakpoint`.
-- call s:h("debugPC", { "bg": s:special_grey }) " the current position
-- call s:h("debugBreakpoint", { "fg": s:black, "bg": s:red }) " a breakpoint
--

--------------------------------------------------------------------------------
-- Tree sitter
--
-- => https://github.com/nvim-treesitter/nvim-treesitter/blob/master/doc/nvim-treesitter.txt
-- => https://github.com/nvim-treesitter/nvim-treesitter/blob/master/plugin/nvim-treesitter.vim
--
-- > curl -sSL 'https://raw.githubusercontent.com/nvim-treesitter/nvim-treesitter/master/doc/nvim-treesitter.txt' | grep '^`TS' | sed 's#^`\([^`]*\)`.*#\1#' | sort | uniq

hi('TSTagAttribute', theme.TagAttribute)
hi('TSTag', theme.Tag)
hi('TSTagDelimiter', theme.Tag)

ln('TSInclude', 'Keyword')

--------------------------------------------------------------------------------
-- Language: CSS
--
-- => https://github.com/neovim/neovim/blob/dd7355358edc40734afcce695432756859377eb8/runtime/syntax/css.vim

hi('cssAttrComma', { fg = colors.Purple })
hi('cssAttributeSelector', { fg = colors.Green })
hi('cssBraces', { fg = colors.White })
hi('cssClassName', { fg = colors.DarkYellow })
hi('cssClassNameDot', { fg = colors.DarkYellow })
hi('cssDefinition', { fg = colors.Purple })
hi('cssFontAttr', { fg = colors.DarkYellow })
hi('cssFontDescriptor', { fg = colors.Purple })
hi('cssFunctionName', { fg = colors.Blue })
hi('cssIdentifier', { fg = colors.Blue })
hi('cssImportant', { fg = colors.Purple })
hi('cssInclude', { fg = colors.White })
hi('cssIncludeKeyword', { fg = colors.Purple })
hi('cssMediaType', { fg = colors.DarkYellow })
hi('cssProp', { fg = colors.White })
hi('cssPseudoClassId', { fg = colors.Cyan })
hi('cssPseudoClassId', { fg = colors.DarkYellow })
hi('cssSelectorOp', { fg = colors.Purple })
hi('cssSelectorOp2', { fg = colors.Purple })
hi('cssTagName', { fg = colors.Red })
hi('cssUnitDecorators', { fg = colors.DarkYellow })
hi('cssVendor', { fg = colors.Grey })

--------------------------------------------------------------------------------
-- Language: scss

ln('sassId', 'cssIdentifier')
ln('sassClass', 'cssClassName')

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

hi('htmlArg', theme.TagAttribute)
hi('htmlEndTag', theme.Tag)
hi('htmlH1', theme.Normal)
hi('htmlH2', theme.Normal)
hi('htmlH3', theme.Normal)
hi('htmlH4', theme.Normal)
hi('htmlH5', theme.Normal)
hi('htmlH6', theme.Normal)
hi('htmlLink', theme.Normal)
hi('htmlSpecialTagName', theme.TagName)
hi('htmlTag', theme.Tag)
hi('htmlTagName', theme.TagName)
hi('htmlTitle', theme.Normal)

hi('htmlBold', { bold = true })
hi('htmlBoldUnderline', { bold = true, underline = true })
hi('htmlBoldItalic', { bold = true, italic = true })
hi('htmlBoldUnderlineItalic', { bold = true, italic = true, underline = true })
hi('htmlUnderline', { underline = true })
hi('htmlUnderlineItalic', { italic = true, underline = true })
hi('htmlItalic', { italic = true })

--------------------------------------------------------------------------------
-- Language: XML

hi('xmlTag', theme.Tag)
hi('xmlEndTag', theme.TagName)
hi('xmlTagName', theme.TagName)

--------------------------------------------------------------------------------
-- Language: Typescript

hi('typescriptArrowFunc', theme.Function)
hi('typescriptAssign', theme.OperatorSymbol)
hi('typescriptBinaryOp', theme.OperatorSymbol)
hi('typescriptBoolean', theme.Boolean)
hi('typescriptBraces', theme.Braces)
hi('typescriptCall', theme.VariableName)
hi('typescriptClassHeritage', theme.ClassName)
hi('typescriptClassName', theme.ClassName)
hi('typescriptFunctionMethod', theme.FunctionName)
hi('typescriptNull', theme.Null)
hi('typescriptObjectLabel', theme.Property)
hi('typescriptOperator', theme.OperatorKeyword)
hi('typescriptParens', theme.Parens)
hi('typescriptProp', theme.Property)
hi('typescriptReflectMethod', theme.FunctionName)
hi('typescriptTypeReference', theme.TypeName)
hi('typescriptUnaryOp', theme.OperatorSymbol)
hi('typescriptVariable', theme.Variable)

--------------------------------------------------------------------------------
-- Language: Go

-- fatih/vim-go => sheerun/vim-polyglot

hi('goImport', theme.Import)
hi('goPackage', theme.Module)
hi('goType', theme.TypeName)
hi('goDeclaration', theme.Type)
hi('goDeclType', theme.Type)
hi('goBoolean', theme.Boolean)
hi('goFunctionCall', theme.FunctionName)
hi('goVarAssign', theme.VariableName)

hi('goCoverageCovered', { fg = colors.Green })
hi('goCoverageUncover', { fg = colors.Red })

--------------------------------------------------------------------------------
-- Language: JavaScript

-- pangloss/vim-javascript => sheerun/vim-polyglot
--
-- not perfect:
-- - arrow function braces

hi('jsArrowFunction', theme.Function)
hi('jsBooleanFalse', theme.Boolean)
hi('jsBooleanTrue', theme.Boolean)
hi('jsClassDefinition', theme.ClassName)
hi('jsClassFuncName', theme.FunctionName)
hi('jsFuncName', theme.FunctionName)
hi('jsFunction', theme.Function)
hi('jsFunctionKey', theme.Property)
hi('jsModuleKeyword', theme.ModuleName)
hi('jsObjectKey', theme.Property)
hi('jsObjectProp', theme.Property)
hi('jsOperator', theme.OperatorSymbol)
hi('jsOperatorKeyword', theme.OperatorKeyword)
hi('jsReturn', theme.Return)
hi('jsStatic', theme.Static)
hi('jsThis', theme.This)
hi('jsxAttrib', theme.TagAttribute)
hi('jsxClosePunct', theme.Tag)
hi('jsxEqual', theme.Tag)
hi('jsxOpenPunct', theme.Tag)
hi('jsTemplateBraces', theme.Parens)
hi('jsxBraces', theme.Braces)
hi('jsBrackets', theme.Brackets)
-- yuezk/vim-js

hi('jsBraces', theme.Braces)
hi('jsClassMethodType', theme.Static)
hi('jsClassName', theme.ClassName)
hi('jsComma', theme.Normal)
hi('jsConstructor', theme.FunctionName)
hi('jsDocIdentifier', theme.CommentValue)
hi('jsDocModuleName', theme.CommentValue)
hi('jsDocTags', theme.CommentTag)
hi('jsIdentifierProp', theme.Property)
hi('jsIfCondition', theme.OperatorSymbol)
hi('jsImport', theme.Import)
hi('jsModuleName', theme.ModuleName)
hi('jsNew', theme.OperatorKeyword)
hi('jsNewClassName', theme.ClassName)
hi('jsNumberDot', theme.Number)
hi('jsParens', theme.Parens)
hi('jsReturn', theme.Return)
hi('jsSuper', theme.Super)
hi('jsTopOperator', theme.OperatorSymbol)
hi('jsVariableType', theme.Variable)

-- axmellon/vim-jsx-pretty

-- TODO

-- othree/yajs.vim
--
-- not perfect:
-- - moduleName
-- - property
-- - new className

hi('javascriptArrowFunc', theme.Keyword)
hi('javascriptArrowFuncArg', theme.VariableName)
hi('javascriptBoolean', theme.Boolean)
hi('javascriptBraces', theme.Braces)
hi('javascriptClassName', theme.ClassName)
hi('javascriptClassSuper', theme.Super)
hi('javascriptClassSuperName', theme.ClassName)
hi('javascriptDocComment', theme.Comment)
hi('javascriptDocParamName', theme.CommentValue)
hi('javascriptDocTags', theme.CommentTag)
ln('javascriptEndColons', 'toEndColon')
hi('javascriptFunctionMethod', theme.FunctionName)
hi('javascriptNull', theme.Null)
hi('javascriptNumber', theme.Number)
hi('javascriptObjectLabel', theme.Property)
hi('javascriptObjectMethodName', theme.FunctionName)
hi('javascriptOpSymbol', theme.OperatorSymbol)
hi('javascriptOpSymbols', theme.OperatorSymbol)
hi('javascriptOperator', theme.OperatorKeyword)
hi('javascriptProp', theme.Property)
hi('javascriptReflectMethod', theme.FunctionName)
hi('javascriptReturn', theme.Return)
hi('javascriptUndefined', theme.Null)
hi('javascriptVariable', theme.Variable)

--------------------------------------------------------------------------------
-- Language: JSON

hi('jsonBoolean', theme.Boolean)
hi('jsonBraces', theme.Braces)
hi('jsonCommentError', theme.Comment)
hi('jsonKeyword', theme.Property)
hi('jsonMissingCommaError', theme.Error)
hi('jsonNoQuotesError', theme.Error)
hi('jsonNumError', theme.Error)
hi('jsonNumber', theme.Number)
hi('jsonQuote', theme.Normal)
hi('jsonSemicolonError', theme.Error)
hi('jsonString', theme.String)
hi('jsonStringSQError', theme.Error)

--------------------------------------------------------------------------------
-- Language: YAML

hi('yamlBlockCollectionItemStart', theme.Normal)
hi('yamlBlockMappingKey', theme.Property)
hi('yamlBool', theme.Boolean)
hi('yamlFlowIndicator', theme.Normal)
hi('yamlKeyValueDelimiter', theme.Normal)
hi('yamlNodeTag', theme.FunctionName)
hi('yamlPlainScalar', theme.String)

--------------------------------------------------------------------------------
-- Language: LESS

-- call s:h("lessVariable", { "fg": s:purple })
-- call s:h("lessAmpersandChar", { "fg": s:white })
-- call s:h("lessClass", { "fg": s:dark_yellow })

--------------------------------------------------------------------------------
-- Language: Markdown

hi('markdownBlockquote', theme.Comment)
hi('markdownCode', theme.String)
hi('markdownCodeBlock', theme.String)
hi('markdownCodeDelimiter', theme.String)
hi('markdownLinkDelimiter', theme.Normal)

hi('markdownBold', { bold = true })
hi('markdownH1', { bold = true })
hi('markdownH2', { bold = true })
hi('markdownH3', { bold = true })
hi('markdownH4', { bold = true })
hi('markdownH5', { bold = true })
hi('markdownH6', { bold = true })

hi('markdownHeadingDelimiter', { fg = colors.Red })

hi('markdownLinkText', theme.Link)
hi('markdownUrl', theme.Url)

hi('mkdHeading', { fg = colors.Red })
hi('mkdLink', theme.Link)
hi('mkdUrl', theme.Url)

--------------------------------------------------------------------------------
-- Language: PHP

ln('phpInclude', 'Keyword')
ln('phpVarSelector', 'Identifier')
hi('phpClass', theme.ClassName)
hi('phpClassExtends', theme.ClassName)
hi('phpParent', theme.Parens)
hi('phpMethodsVar', theme.Property)

-- hi! phpClassExtends    guifg=#98c379 ctermfg=108 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
-- hi! phpFunction        guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
-- hi! phpParent          guifg=#abb2bf ctermfg=249 gui=NONE cterm=NONE
-- hi! phpRegion          guifg=#abb2bf ctermfg=249 guibg=#282c34 ctermbg=236 gui=NONE cterm=NONE
-- hi! phpUseClass        guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

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
--

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

hi('GitGutterAdd', theme.GutterAdded)
hi('GitGutterChange', theme.GutterChanged)
hi('GitGutterDelete', theme.GutterRemoved)

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
-- highlight luaFuncTable        guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
-- highlight link luaFuncKeyword      luaFunction
-- highlight link luaFunction         Function
-- highlight link luaFuncParens       Text
-- highlight link luaGoto             luaStatement
-- highlight link luaGotoLabel        Noise
-- highlight link luaIn               Repeat
-- highlight link luaLabel            Label
ln('luaLocal', 'StorageClass')
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
ln('vimLet', 'StorageClass')
ln('vimVar', 'Normal')
ln('vimCommand', 'Structure')
hi('vimCommentTitle', theme.CommentTitle)

--------------------------------------------------------------------------------
-- Plugin: mhinz/vim-signify

hi('SignifySignAdd', theme.GutterAdded)
hi('SignifySignChange', theme.GutterChanged)
hi('SignifySignDelete', theme.GutterRemoved)

--------------------------------------------------------------------------------
-- Plugin: neomake/neomake

hi('NeomakeErrorSign', theme.Error)
hi('NeomakeWarningSign', theme.Warning)
hi('NeomakeInfoSign', theme.Information)

--------------------------------------------------------------------------------
-- Plugin: tpope/vim-fugitive

hi('diffAdded', theme.GutterAdded)
hi('diffRemoved', theme.GutterRemoved)

--------------------------------------------------------------------------------
-- Plugin: Git Highlighting

hi('gitcommitComment', theme.Comment)

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

hi('CocSelectedText', { fg = colors.Red })
hi('CocHighlightText', { fg = colors.Black })
hi('CocUnderline', { underline = true })
hi('CocCodeLens', { fg = colors.Grey, italic = true })
ln('CocHighlightTextRead', 'CocHighlightText')
ln('CocHighlightTextWrite', 'CocHighlightText')

hi('CocErrorSign', theme.Error)
ln('CocErrorFloat', 'CocErrorSign')
ln('CocErrorHighlight', 'CocUnderline')
clear('CocErrorLine')

hi('CocWarningSign', theme.Warning)
ln('CocWarningFloat', 'CocWarningSign')
ln('CocWarningHighlight', 'CocUnderline')
clear('CocWarningLine')

hi('CocInfoSign', theme.Information)
ln('CocInfoFloat', 'CocInfoSign')
ln('CocInfoHighlight', 'CocUnderline')
clear('CocInfoLine')

hi('CocHintSign', theme.Hint)
ln('CocHintFloat', 'CocHintSign')
ln('CocHintHighlight', 'CocUnderline')
clear('CocHintLine')

--------------------------------------------------------------------------------
-- Neovim: terminal colors
--
vim.g.terminal_color_0 = colors.Black
vim.g.terminal_color_1 = colors.Red
vim.g.terminal_color_2 = colors.Green
vim.g.terminal_color_3 = colors.Yellow
vim.g.terminal_color_4 = colors.Blue
vim.g.terminal_color_5 = colors.Purple
vim.g.terminal_color_6 = colors.Cyan
vim.g.terminal_color_7 = colors.White

vim.g.terminal_color_8 = colors.Grey -- s:visual_grey.gui
vim.g.terminal_color_9 = colors.Grey
vim.g.terminal_color_10 = colors.Green -- No dark version
vim.g.terminal_color_11 = colors.DarkYellow -- s:dark_yellow.gui
vim.g.terminal_color_12 = colors.Blue -- No dark version
vim.g.terminal_color_13 = colors.Purple -- No dark version
vim.g.terminal_color_14 = colors.Cyan -- No dark version
vim.g.terminal_color_15 = colors.White -- s:comment_grey.gui
vim.g.terminal_color_background = vim.g.terminal_color_0
vim.g.terminal_color_foreground = vim.g.terminal_color_7

--------------------------------------------------------------------------------
-- Plugin: indentLine
vim.g.indentLine_setColors = 1
vim.g.indentLine_color_gui = colors.Grey

--------------------------------------------------------------------------------
-- Plugin: NERDTree
--
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

hi('TreeNormal', { fg = colors.White, bg = colors.BlackDark })

-- Plugin: Telescope
ln('TelescopeNormal', 'NormalFloat')
ln('TelescopeBorder', 'FloatBorder')

ln('TelescopePromptNormal', 'TelescopeNormal')
ln('TelescopeResultsNormal', 'TelescopeNormal')
ln('TelescopePreviewNormal', 'TelescopeNormal')

-- hi! TelescopeNormal         guibg=#2c323c
-- hi! TelescopeBorder         guibg=#2c323c guifg=#5c6370
-- hi! TelescopePreviewBorder  guibg=#282c34 guifg=#5c6370
hi('TelescopeSelection', { fg = '#ffffff' })
hi('TelescopeMultiSelection', { fg = colors.Blue, bold = true })
hi('TelescopeSelectionCaret', { fg = colors.Blue })

-- Plugin: rhysd/conflict-marker.vim

-- TODO use correct theme colors

hi('ConflictMarkerBegin', { bg = '#2f7366' })
hi('ConflictMarkerOurs', { bg = '#2e5049' })
hi('ConflictMarkerTheirs', { bg = '#344f69' })
--                                           guibg=#2f628e
hi('ConflictMarkerEnd', { bg = colors.Blue })
--                                           guibg=#754a81
hi('ConflictMarkerCommonAncestorsHunk', { bg = colors.Purple })

hi('DiffText', { bg = '#25403a' })
hi('DiffAdd', { bg = '#344f69' })
hi('DiffAncestor', { bg = '#4a2648' })

-- Plugin: hrsh7th/nvim-cmp
-- https://github.com/hrsh7th/nvim-cmp/wiki/Menu-Appearance

ln('CmpItemMenu', 'Comment')

-- TODO use correct theme colors

-- gray
hi('CmpItemAbbrDeprecated', { bg = 'NONE', strikethrough = true, fg = colors.Blue })
-- blue
hi('CmpItemAbbrMatch', { bg = 'NONE', fg = '#569CD6' })
hi('CmpItemAbbrMatchFuzzy', { bg = 'NONE', fg = '#569CD6' })
-- light blue
hi('CmpItemKindVariable', { bg = 'NONE', fg = '#9CDCFE' })
hi('CmpItemKindInterface', { bg = 'NONE', fg = '#9CDCFE' })
hi('CmpItemKindText', { bg = 'NONE', fg = '#9CDCFE' })
-- pink
hi('CmpItemKindFunction', { bg = 'NONE', fg = '#C586C0' })
hi('CmpItemKindMethod', { bg = 'NONE', fg = '#C586C0' })
-- front
hi('CmpItemKindKeyword', { bg = 'NONE', fg = '#D4D4D4' })
hi('CmpItemKindProperty', { bg = 'NONE', fg = '#D4D4D4' })
hi('CmpItemKindUnit', { bg = 'NONE', fg = '#D4D4D4' })

-- local k_color = {
--   -- light blue
--   light_blue = '#9CDCFE',
--   pink = '#C586C0',
--   front = '#D4D4D4',
-- }
--
-- local kinds = {
--   Text = k_color.light_blue,
--   Method = k_color.pink,
--   Function = k_color.pink,
--   Constructor = colors.DarkRed,
--   Field = colors.DarkRed,
--   Variable = k_color.light_blue,
--   Class = colors.DarkRed,
--   Interface = k_color.light_blue,
--   Module = colors.DarkRed,
--   Property = k_color.front,
--   Unit = k_color.front,
--   Value = colors.DarkRed,
--   Enum = colors.DarkRed,
--   Keyword = k_color.front,
--   Snippet = colors.DarkRed,
--   Color = colors.DarkRed,
--   File = colors.DarkRed,
--   Reference = colors.DarkRed,
--   Folder = colors.DarkRed,
--   EnumMember = colors.DarkRed,
--   Constant = colors.DarkRed,
--   Struct = colors.DarkRed,
--   Event = colors.DarkRed,
--   Operator = colors.DarkRed,
--   TypeParameter = colors.DarkRed,
-- }
--
-- for kind, color in pairs(kinds) do
--   hi('CmpItemKind' .. kind, { fg = colors.White, bg = color })
-- end

-- Plugin: rcarriga/nvim-notify

-- error:                       { foreground: *red,            background: *none                            }
-- warning:                     { foreground: *darkYellow,     background: *none                            }
-- information:                 { foreground: *yellow,         background: *none                            }
-- hint:                        { foreground: *blue,           background: *none                            }
-- ok:                          { foreground: *green,          background: *none                            }
-- todo:                        { foreground: *purple,         background: *none                            }

-- hi! link TelescopeNormal NormalFloat
-- hi! link TelescopeBorder FloatBorder

-- hi! DiagnosticError   guifg=#e06c75 ctermfg=168 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
-- hi! DiagnosticWarn    guifg=#d19a66 ctermfg=173 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
-- hi! DiagnosticInfo    guifg=#e5c07b ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
-- hi! DiagnosticHint    guifg=#61afef ctermfg=75 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

hi('NotifyERRORTitle', theme.Error)
hi('NotifyERRORBorder', { fg = '#653c3f' })
hi('NotifyERRORIcon', theme.Error)

hi('NotifyWARNTitle', theme.Warning)
hi('NotifyWARNBorder', { fg = '#603d1d' })
hi('NotifyWARNIcon', theme.Warning)

hi('NotifyINFOTitle', theme.Normal)
hi('NotifyINFOBorder', { fg = colors.Grey })
hi('NotifyINFOIcon', theme.Normal)

hi('NotifyDEBUGTitle', theme.Hint)
hi('NotifyDEBUGBorder', { fg = colors.Grey })
hi('NotifyDEBUGIcon', theme.Hint)

hi('NotifyTRACETitle', theme.Hint)
hi('NotifyTRACEBorder', { fg = colors.Grey })
hi('NotifyTRACEIcon', theme.Hint)

ln('@text.title', 'markdownBold')
ln('@punctuation.special', 'markdownHeadingDelimiter')
ln('@text.reference', 'markdownLinkText')
ln('@text.uri', 'markdownUrl')
ln('@text.literal', 'markdownCode')
