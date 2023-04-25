local glacier = require("glacier.colors")

local theme = {}

local italic = vim.g.glacier_italic == false and glacier.none or "italic"
local italic_undercurl = vim.g.glacier_italic == false and "undercurl" or "italic,undercurl"
local bold = vim.g.glacier_bold == false and glacier.none or "bold"
local reverse_bold = vim.g.glacier_bold == false and "reverse" or "reverse,bold"
local bold_underline = vim.g.glacier_bold == false and "underline" or "bold,underline"
local bold_italic;
if vim.g.glacier_bold == false then
	bold_italic = vim.g.glacier_italic == false and glacier.none or "italic"
elseif vim.g.glacier_italic == false then
	bold_italic = "bold"
else
	bold_italic = "bold,italic"
end

theme.loadSyntax = function()
	-- Syntax highlight groups
	return {
		Type = { fg = glacier.glacier9_gui }, -- int, long, char, etc.
		StorageClass = { fg = glacier.glacier9_gui }, -- static, register, volatile, etc.
		Structure = { fg = glacier.glacier9_gui }, -- struct, union, enum, etc.
		Constant = { fg = glacier.glacier4_gui }, -- any constant
		Character = { fg = glacier.glacier14_gui }, -- any character constant: 'c', '\n'
		Number = { fg = glacier.glacier15_gui }, -- a number constant: 5
		Boolean = { fg = glacier.glacier9_gui }, -- a boolean constant: TRUE, false
		Float = { fg = glacier.glacier15_gui }, -- a floating point constant: 2.3e10
		Statement = { fg = glacier.glacier9_gui }, -- any statement
		Label = { fg = glacier.glacier9_gui }, -- case, default, etc.
		Operator = { fg = glacier.glacier9_gui }, -- sizeof", "+", "*", etc.
		Exception = { fg = glacier.glacier9_gui }, -- try, catch, throw
		PreProc = { fg = glacier.glacier9_gui }, -- generic Preprocessor
		Include = { fg = glacier.glacier9_gui }, -- preprocessor #include
		Define = { fg = glacier.glacier9_gui }, -- preprocessor #define
		Macro = { fg = glacier.glacier9_gui }, -- same as Define
		Typedef = { fg = glacier.glacier9_gui }, -- A typedef
		PreCondit = { fg = glacier.glacier13_gui }, -- preprocessor #if, #else, #endif, etc.
		Special = { fg = glacier.glacier4_gui }, -- any special symbol
		SpecialChar = { fg = glacier.glacier13_gui }, -- special character in a constant
		Tag = { fg = glacier.glacier4_gui }, -- you can use CTRL-] on this
		Delimiter = { fg = glacier.glacier6_gui }, -- character that needs attention like , or .
		SpecialComment = { fg = glacier.glacier8_gui }, -- special things inside a comment
		Debug = { fg = glacier.glacier11_gui }, -- debugging statements
		Underlined = { fg = glacier.glacier14_gui, bg = glacier.none, style = "underline" }, -- text that stands out, HTML links
		Ignore = { fg = glacier.glacier1_gui }, -- left blank, hidden
		Todo = { fg = glacier.glacier13_gui, bg = glacier.none, style = bold_italic }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
		Conceal = { fg = glacier.none, bg = glacier.glacier0_gui },
		htmlLink = { fg = glacier.glacier14_gui, style = "underline" },
		markdownH1Delimiter = { fg = glacier.glacier8_gui },
		markdownH2Delimiter = { fg = glacier.glacier11_gui },
		markdownH3Delimiter = { fg = glacier.glacier14_gui },
		htmlH1 = { fg = glacier.glacier8_gui, style = bold },
		htmlH2 = { fg = glacier.glacier11_gui, style = bold },
		htmlH3 = { fg = glacier.glacier14_gui, style = bold },
		htmlH4 = { fg = glacier.glacier15_gui, style = bold },
		htmlH5 = { fg = glacier.glacier9_gui, style = bold },
		markdownH1 = { fg = glacier.glacier8_gui, style = bold },
		markdownH2 = { fg = glacier.glacier11_gui, style = bold },
		markdownH3 = { fg = glacier.glacier14_gui, style = bold },
		Error = { fg = glacier.glacier11_gui, bg = glacier.none, style = bold_underline }, -- any erroneous construct with bold
		Comment = { fg = glacier.glacier3_gui_bright, style = italic }, -- italic comments
		Conditional = { fg = glacier.glacier9_gui, style = italic }, -- italic if, then, else, endif, switch, etc.
		Function = { fg = glacier.glacier8_gui, style = italic }, -- italic funtion names
		Identifier = { fg = glacier.glacier9_gui, style = italic }, -- any variable name
		Keyword = { fg = glacier.glacier9_gui, style = italic }, -- italic for, do, while, etc.
		Repeat = { fg = glacier.glacier9_gui, style = italic }, -- italic any other keyword
		String = { fg = glacier.glacier14_gui, style = italic }, -- any string
	}
end

theme.loadEditor = function()
	-- Editor highlight groups

	local editor = {
		NormalFloat = { fg = glacier.glacier4_gui, bg = glacier.float }, -- normal text and background color
		FloatBorder = { fg = glacier.glacier4_gui, bg = glacier.float }, -- normal text and background color
		ColorColumn = { fg = glacier.none, bg = glacier.glacier1_gui }, -- used for the columns set with 'colorcolumn'
		Conceal = { fg = glacier.glacier1_gui }, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor = { fg = glacier.glacier4_gui, bg = glacier.none, style = "reverse" }, -- the character under the cursor
		CursorIM = { fg = glacier.glacier5_gui, bg = glacier.none, style = "reverse" }, -- like Cursor, but used when in IME mode
		Directory = { fg = glacier.glacier7_gui, bg = glacier.none }, -- directory names (and other special names in listings)
		EndOfBuffer = { fg = glacier.glacier1_gui },
		ErrorMsg = { fg = glacier.none },
		Folded = { fg = glacier.glacier3_gui_bright, bg = glacier.none, style = italic },
		FoldColumn = { fg = glacier.glacier7_gui },
		IncSearch = { fg = glacier.glacier6_gui, bg = glacier.glacier10_gui },
		LineNr = { fg = glacier.glacier3_gui_bright },
		CursorLineNr = { fg = glacier.glacier4_gui },
		MatchParen = { fg = glacier.glacier15_gui, bg = glacier.none, style = bold },
		ModeMsg = { fg = glacier.glacier4_gui },
		MoreMsg = { fg = glacier.glacier4_gui },
		NonText = { fg = glacier.glacier1_gui },
		Pmenu = { fg = glacier.glacier4_gui, bg = glacier.glacier2_gui },
		PmenuSel = { fg = glacier.glacier4_gui, bg = glacier.glacier10_gui },
		PmenuSbar = { fg = glacier.glacier4_gui, bg = glacier.glacier2_gui },
		PmenuThumb = { fg = glacier.glacier4_gui, bg = glacier.glacier4_gui },
		Question = { fg = glacier.glacier14_gui },
		QuickFixLine = { fg = glacier.glacier4_gui, bg = glacier.none, style = "reverse" },
		qfLineNr = { fg = glacier.glacier4_gui, bg = glacier.none, style = "reverse" },
		Search = { fg = glacier.glacier6_gui, bg = glacier.glacier10_gui },
		Substitute = { fg = glacier.glacier0_gui, bg = glacier.glacier12_gui },
		SpecialKey = { fg = glacier.glacier9_gui },
		SpellBad = { fg = glacier.glacier11_gui, bg = glacier.none, style = italic_undercurl },
		SpellCap = { fg = glacier.glacier7_gui, bg = glacier.none, style = italic_undercurl },
		SpellLocal = { fg = glacier.glacier8_gui, bg = glacier.none, style = italic_undercurl },
		SpellRare = { fg = glacier.glacier9_gui, bg = glacier.none, style = italic_undercurl },
		StatusLine = { fg = glacier.glacier4_gui, bg = glacier.glacier2_gui },
		StatusLineNC = { fg = glacier.glacier4_gui, bg = glacier.glacier1_gui },
		StatusLineTerm = { fg = glacier.glacier4_gui, bg = glacier.glacier2_gui },
		StatusLineTermNC = { fg = glacier.glacier4_gui, bg = glacier.glacier1_gui },
		TabLineFill = { fg = glacier.glacier4_gui, bg = glacier.none },
		TablineSel = { fg = glacier.glacier1_gui, bg = glacier.glacier9_gui },
		Tabline = { fg = glacier.glacier4_gui, bg = glacier.glacier1_gui },
		Title = { fg = glacier.glacier14_gui, bg = glacier.none, style = bold },
		Visual = { fg = glacier.none, bg = glacier.glacier2_gui },
		VisualNOS = { fg = glacier.none, bg = glacier.glacier2_gui },
		WarningMsg = { fg = glacier.glacier15_gui },
		WildMenu = { fg = glacier.glacier12_gui, bg = glacier.none, style = bold },
		CursorColumn = { fg = glacier.none, bg = glacier.cursorlinefg },
		CursorLine = { fg = glacier.none, bg = glacier.cursorlinefg },
		ToolbarLine = { fg = glacier.glacier4_gui, bg = glacier.glacier1_gui },
		ToolbarButton = { fg = glacier.glacier4_gui, bg = glacier.none, style = bold },
		NormalMode = { fg = glacier.glacier4_gui, bg = glacier.none, style = "reverse" },
		InsertMode = { fg = glacier.glacier14_gui, bg = glacier.none, style = "reverse" },
		ReplacelMode = { fg = glacier.glacier11_gui, bg = glacier.none, style = "reverse" },
		VisualMode = { fg = glacier.glacier9_gui, bg = glacier.none, style = "reverse" },
		CommandMode = { fg = glacier.glacier4_gui, bg = glacier.none, style = "reverse" },
		Warnings = { fg = glacier.glacier15_gui },

		healthError = { fg = glacier.glacier11_gui },
		healthSuccess = { fg = glacier.glacier14_gui },
		healthWarning = { fg = glacier.glacier15_gui },

		-- dashboard
		DashboardShortCut = { fg = glacier.glacier7_gui },
		DashboardHeader = { fg = glacier.glacier9_gui },
		DashboardCenter = { fg = glacier.glacier8_gui },
		DashboardFooter = { fg = glacier.glacier14_gui, style = italic },

		-- Barbar
		BufferTabpageFill = { bg = glacier.glacier0_gui },

		BufferCurrent = { bg = glacier.glacier1_gui },
		BufferCurrentMod = { bg = glacier.glacier1_gui, fg = glacier.glacier15_gui },
		BufferCurrentIcon = { bg = glacier.glacier1_gui },
		BufferCurrentSign = { bg = glacier.glacier1_gui },
		BufferCurrentIndex = { bg = glacier.glacier1_gui },
		BufferCurrentTarget = { bg = glacier.glacier1_gui, fg = glacier.glacier11_gui },

		BufferInactive = { bg = glacier.glacier0_gui, fg = glacier.glacier3_gui },
		BufferInactiveMod = { bg = glacier.glacier0_gui, fg = glacier.glacier15_gui },
		BufferInactiveIcon = { bg = glacier.glacier0_gui, fg = glacier.glacier3_gui },
		BufferInactiveSign = { bg = glacier.glacier0_gui, fg = glacier.glacier3_gui },
		BufferInactiveIndex = { bg = glacier.glacier0_gui, fg = glacier.glacier3_gui },
		BufferInactiveTarget = { bg = glacier.glacier0_gui, fg = glacier.glacier11_gui },

		BufferVisible = { bg = glacier.glacier2_gui },
		BufferVisibleMod = { bg = glacier.glacier2_gui, fg = glacier.glacier15_gui },
		BufferVisibleIcon = { bg = glacier.glacier2_gui },
		BufferVisibleSign = { bg = glacier.glacier2_gui },
		BufferVisibleIndex = { bg = glacier.glacier2_gui },
		BufferVisibleTarget = { bg = glacier.glacier2_gui, fg = glacier.glacier11_gui },

		-- nvim-notify
		NotifyDEBUGBorder = { fg = glacier.glacier3_gui },
		NotifyDEBUGIcon = { fg = glacier.glacier3_gui },
		NotifyDEBUGTitle = { fg = glacier.glacier3_gui },
		NotifyERRORBorder = { fg = glacier.glacier11_gui },
		NotifyERRORIcon = { fg = glacier.glacier11_gui },
		NotifyERRORTitle = { fg = glacier.glacier11_gui },
		NotifyINFOBorder = { fg = glacier.glacier14_gui },
		NotifyINFOIcon = { fg = glacier.glacier14_gui },
		NotifyINFOTitle = { fg = glacier.glacier14_gui },
		NotifyTRACEBorder = { fg = glacier.glacier15_gui },
		NotifyTRACEIcon = { fg = glacier.glacier15_gui },
		NotifyTRACETitle = { fg = glacier.glacier15_gui },
		NotifyWARNBorder = { fg = glacier.glacier13_gui },
		NotifyWARNIcon = { fg = glacier.glacier13_gui },
		NotifyWARNTitle = { fg = glacier.glacier13_gui },

		-- leap.nvim
		LeapMatch = { style = "underline,nocombine", fg = glacier.glacier13_gui },
		LeapLabelPrimary = { style = "nocombine", fg = glacier.glacier0_gui, bg = glacier.glacier13_gui },
		LeapLabelSecondary = { style = "nocombine", fg = glacier.glacier0_gui, bg = glacier.glacier15_gui },
	}

	-- Options:

	--Set transparent background
	if vim.g.glacier_disable_background then
		editor.Normal = { fg = glacier.glacier4_gui, bg = glacier.none } -- normal text and background color
		editor.SignColumn = { fg = glacier.glacier4_gui, bg = glacier.none }
	else
		editor.Normal = { fg = glacier.glacier4_gui, bg = glacier.glacier0_gui } -- normal text and background color
		editor.SignColumn = { fg = glacier.glacier4_gui, bg = glacier.glacier0_gui }
	end

	-- Remove window split borders
	if vim.g.glacier_borders then
		editor.VertSplit = { fg = glacier.glacier2_gui }
	else
		editor.VertSplit = { fg = glacier.glacier0_gui }
	end

	if vim.g.glacier_uniform_diff_background then
		editor.DiffAdd = { fg = glacier.glacier14_gui, bg = glacier.glacier1_gui } -- diff mode: Added line
		editor.DiffChange = { fg = glacier.glacier13_gui, bg = glacier.glacier1_gui } -- diff mode: Changed line
		editor.DiffDelete = { fg = glacier.glacier11_gui, bg = glacier.glacier1_gui } -- diff mode: Deleted line
		editor.DiffText = { fg = glacier.glacier15_gui, bg = glacier.glacier1_gui } -- diff mode: Changed text within a changed line
	else
		editor.DiffAdd = { fg = glacier.glacier14_gui, bg = glacier.none, style = "reverse" } -- diff mode: Added line
		editor.DiffChange = { fg = glacier.glacier13_gui, bg = glacier.none, style = "reverse" } -- diff mode: Changed line
		editor.DiffDelete = { fg = glacier.glacier11_gui, bg = glacier.none, style = "reverse" } -- diff mode: Deleted line
		editor.DiffText = { fg = glacier.glacier15_gui, bg = glacier.none, style = "reverse" } -- diff mode: Changed text within a changed line
	end

	return editor
end

theme.loadTerminal = function()
	vim.g.terminal_color_0 = glacier.glacier1_gui
	vim.g.terminal_color_1 = glacier.glacier11_gui
	vim.g.terminal_color_2 = glacier.glacier14_gui
	vim.g.terminal_color_3 = glacier.glacier13_gui
	vim.g.terminal_color_4 = glacier.glacier9_gui
	vim.g.terminal_color_5 = glacier.glacier15_gui
	vim.g.terminal_color_6 = glacier.glacier8_gui
	vim.g.terminal_color_7 = glacier.glacier5_gui
	vim.g.terminal_color_8 = glacier.glacier3_gui
	vim.g.terminal_color_9 = glacier.glacier11_gui
	vim.g.terminal_color_10 = glacier.glacier14_gui
	vim.g.terminal_color_11 = glacier.glacier13_gui
	vim.g.terminal_color_12 = glacier.glacier9_gui
	vim.g.terminal_color_13 = glacier.glacier15_gui
	vim.g.terminal_color_14 = glacier.glacier7_gui
	vim.g.terminal_color_15 = glacier.glacier6_gui
end

theme.loadTreeSitter = function()
	-- TreeSitter highlight groups

	local treesitter = {
		TSConstructor = { fg = glacier.glacier9_gui }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
		TSConstant = { fg = glacier.glacier13_gui }, -- For constants
		TSFloat = { fg = glacier.glacier15_gui }, -- For floats
		TSNumber = { fg = glacier.glacier15_gui }, -- For all number
		TSAttribute = { fg = glacier.glacier15_gui }, -- (unstable) TODO: docs
		TSError = { fg = glacier.glacier11_gui }, -- For syntax/parser errors.
		TSException = { fg = glacier.glacier15_gui }, -- For exception related keywords.
		TSFuncMacro = { fg = glacier.glacier7_gui }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
		TSInclude = { fg = glacier.glacier9_gui }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		TSLabel = { fg = glacier.glacier15_gui }, -- For labels: `label:` in C and `:label:` in Lua.
		TSOperator = { fg = glacier.glacier9_gui }, -- For any operator: `+`, but also `->` and `*` in C.
		TSParameter = { fg = glacier.glacier10_gui }, -- For parameters of a function.
		TSParameterReference = { fg = glacier.glacier10_gui }, -- For references to parameters of a function.
		TSPunctDelimiter = { fg = glacier.glacier8_gui }, -- For delimiters ie: `.`
		TSPunctBracket = { fg = glacier.glacier8_gui }, -- For brackets and parens.
		TSPunctSpecial = { fg = glacier.glacier8_gui }, -- For special punctutation that does not fall in the catagories before.
		TSSymbol = { fg = glacier.glacier15_gui }, -- For identifiers referring to symbols or atoms.
		TSType = { fg = glacier.glacier9_gui }, -- For types.
		TSTypeBuiltin = { fg = glacier.glacier9_gui }, -- For builtin types.
		TSTag = { fg = glacier.glacier4_gui }, -- Tags like html tag names.
		TSTagDelimiter = { fg = glacier.glacier15_gui }, -- Tag delimiter like `<` `>` `/`
		TSText = { fg = glacier.glacier4_gui }, -- For strings consideglacier11_gui text in a markup language.
		TSTextReference = { fg = glacier.glacier15_gui }, -- FIXME
		TSEmphasis = { fg = glacier.glacier10_gui }, -- For text to be represented with emphasis.
		TSUnderline = { fg = glacier.glacier4_gui, bg = glacier.none, style = "underline" }, -- For text to be represented with an underline.
		TSLiteral = { fg = glacier.glacier4_gui }, -- Literal text.
		TSURI = { fg = glacier.glacier14_gui }, -- Any URI like a link or email.
		TSAnnotation = { fg = glacier.glacier11_gui }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
		["@constructor"] = { fg = glacier.glacier9_gui },
		["@constant"] = { fg = glacier.glacier13_gui },
		["@float"] = { fg = glacier.glacier15_gui },
		["@number"] = { fg = glacier.glacier15_gui },
		["@attribute"] = { fg = glacier.glacier15_gui },
		["@error"] = { fg = glacier.glacier11_gui },
		["@exception"] = { fg = glacier.glacier15_gui },
		["@funtion.macro"] = { fg = glacier.glacier7_gui },
		["@include"] = { fg = glacier.glacier9_gui },
		["@label"] = { fg = glacier.glacier15_gui },
		["@operator"] = { fg = glacier.glacier9_gui },
		["@parameter"] = { fg = glacier.glacier10_gui },
		["@punctuation.delimiter"] = { fg = glacier.glacier8_gui },
		["@punctuation.bracket"] = { fg = glacier.glacier8_gui },
		["@punctuation.special"] = { fg = glacier.glacier8_gui },
		["@symbol"] = { fg = glacier.glacier15_gui },
		["@type"] = { fg = glacier.glacier9_gui },
		["@type.builtin"] = { fg = glacier.glacier9_gui },
		["@tag"] = { fg = glacier.glacier4_gui },
		["@tag.delimiter"] = { fg = glacier.glacier15_gui },
		["@text"] = { fg = glacier.glacier4_gui },
		["@text.reference"] = { fg = glacier.glacier15_gui },
		["@text.emphasis"] = { fg = glacier.glacier10_gui },
		["@text.underline"] = { fg = glacier.glacier4_gui, bg = glacier.none, style = "underline" },
		["@text.literal"] = { fg = glacier.glacier4_gui },
		["@text.uri"] = { fg = glacier.glacier14_gui },
		["@text.strike"] = { fg = glacier.glacier4_gui, style = "strikethrough" },

		-- @todo Missing highlights
		-- @function.call
		-- @method.call
		-- @type.qualifier
		-- @text.math (e.g. for LaTeX math environments)
		-- @text.environment (e.g. for text environments of markup languages)
		-- @text.environment.name (e.g. for the name/the string indicating the type of text environment)
		-- @text.note
		-- @text.warning
		-- @text.danger
		-- @tag.attribute
		-- @string.special
	}

	treesitter.TSVariableBuiltin = { fg = glacier.glacier4_gui, style = bold }
	treesitter.TSBoolean = { fg = glacier.glacier9_gui, style = bold }
	treesitter.TSConstBuiltin = { fg = glacier.glacier7_gui, style = bold }
	treesitter.TSConstMacro = { fg = glacier.glacier7_gui, style = bold }
	treesitter.TSVariable = { fg = glacier.glacier4_gui, style = bold }
	treesitter.TSTitle = { fg = glacier.glacier10_gui, bg = glacier.none, style = bold }
	treesitter["@variable"] = { fg = glacier.glacier4_gui, style = bold }
	treesitter["@variable.builtin"] = { fg = glacier.glacier4_gui, style = bold }
	treesitter["@variable.global"] = { fg = glacier.glacier4_gui, style = bold }
	treesitter["@boolean"] = { fg = glacier.glacier9_gui, style = bold }
	treesitter["@constant.builtin"] = { fg = glacier.glacier7_gui, style = bold }
	treesitter["@constant.macro"] = { fg = glacier.glacier7_gui, style = bold }
	treesitter["@text.title"] = { fg = glacier.glacier10_gui, bg = glacier.none, style = bold }
	treesitter["@text.strong"] = { fg = glacier.glacier10_gui, bg = glacier.none, style = bold }
	-- Comments
	treesitter.TSComment = { fg = glacier.glacier3_gui_bright, style = italic }
	-- Conditionals
	treesitter.TSConditional = { fg = glacier.glacier9_gui, style = italic } -- For keywords related to conditionnals.
	-- Function names
	treesitter.TSFunction = { fg = glacier.glacier8_gui, style = italic } -- For fuction (calls and definitions).
	treesitter.TSMethod = { fg = glacier.glacier7_gui, style = italic } -- For method calls and definitions.
	treesitter.TSFuncBuiltin = { fg = glacier.glacier8_gui, style = italic }
	-- Namespaces and property accessors
	treesitter.TSNamespace = { fg = glacier.glacier4_gui, style = italic } -- For identifiers referring to modules and namespaces.
	treesitter.TSField = { fg = glacier.glacier4_gui, style = italic } -- For fields.
	treesitter.TSProperty = { fg = glacier.glacier10_gui, style = italic } -- Same as `TSField`, but when accessing, not declaring.
	-- Language keywords
	treesitter.TSKeyword = { fg = glacier.glacier9_gui, style = italic } -- For keywords that don't fall in other categories.
	treesitter.TSKeywordFunction = { fg = glacier.glacier8_gui, style = italic }
	treesitter.TSKeywordReturn = { fg = glacier.glacier8_gui, style = italic }
	treesitter.TSKeywordOperator = { fg = glacier.glacier8_gui, style = italic }
	treesitter.TSRepeat = { fg = glacier.glacier9_gui, style = italic } -- For keywords related to loops.
	-- Strings
	treesitter.TSString = { fg = glacier.glacier14_gui, style = italic } -- For strings.
	treesitter.TSStringRegex = { fg = glacier.glacier7_gui, style = italic } -- For regexes.
	treesitter.TSStringEscape = { fg = glacier.glacier15_gui, style = italic } -- For escape characters within a string.
	treesitter.TSCharacter = { fg = glacier.glacier14_gui, style = italic } -- For characters.

	treesitter["@comment"] = { fg = glacier.glacier3_gui_bright, style = italic }
	treesitter["@conditional"] = { fg = glacier.glacier9_gui, style = italic }
	treesitter["@function"] = { fg = glacier.glacier8_gui, style = italic }
	treesitter["@method"] = { fg = glacier.glacier8_gui, style = italic }
	treesitter["@function.builtin"] = { fg = glacier.glacier8_gui, style = italic }
	treesitter["@namespace"] = { fg = glacier.glacier4_gui, style = italic }
	treesitter["@field"] = { fg = glacier.glacier4_gui, style = italic }
	treesitter["@property"] = { fg = glacier.glacier10_gui, style = italic }
	treesitter["@keyword"] = { fg = glacier.glacier9_gui, style = italic }
	treesitter["@keyword.function"] = { fg = glacier.glacier8_gui, style = italic }
	treesitter["@keyword.return"] = { fg = glacier.glacier8_gui, style = italic }
	treesitter["@keyword.operator"] = { fg = glacier.glacier8_gui, style = italic }
	treesitter["@repeat"] = { fg = glacier.glacier9_gui, style = italic }
	treesitter["@string"] = { fg = glacier.glacier14_gui, style = italic }
	treesitter["@string.regex"] = { fg = glacier.glacier7_gui, style = italic }
	treesitter["@string.escape"] = { fg = glacier.glacier15_gui, style = italic }
	treesitter["@character"] = { fg = glacier.glacier14_gui, style = italic }

	return treesitter
end

theme.loadFiletypes = function()
	-- Filetype-specific highlight groups

	local ft = {
		-- yaml
		yamlBlockMappingKey = { fg = glacier.glacier7_gui },
		yamlBool = { link = "Boolean" },
		yamlDocumentStart = { link = "Keyword" },
		yamlTSField = { fg = glacier.glacier7_gui },
		yamlTSString = { fg = glacier.glacier4_gui },
		yamlTSPunctSpecial = { link = "Keyword" },
		yamlKey = { fg = glacier.glacier7_gui }, -- stephpy/vim-yaml
	}

	return ft
end

theme.loadLSP = function()
	-- Lsp highlight groups

	local lsp = {
		LspDiagnosticsDefaultError = { fg = glacier.glacier11_gui }, -- used for "Error" diagnostic virtual text
		LspDiagnosticsSignError = { fg = glacier.glacier11_gui }, -- used for "Error" diagnostic signs in sign column
		LspDiagnosticsFloatingError = { fg = glacier.glacier11_gui }, -- used for "Error" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextError = { fg = glacier.glacier11_gui }, -- Virtual text "Error"
		LspDiagnosticsUnderlineError = { style = "undercurl", sp = glacier.glacier11_gui }, -- used to underline "Error" diagnostics.
		LspDiagnosticsDefaultWarning = { fg = glacier.glacier15_gui }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsSignWarning = { fg = glacier.glacier15_gui }, -- used for "Warning" diagnostic signs in sign column
		LspDiagnosticsFloatingWarning = { fg = glacier.glacier15_gui }, -- used for "Warning" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextWarning = { fg = glacier.glacier15_gui }, -- Virtual text "Warning"
		LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = glacier.glacier15_gui }, -- used to underline "Warning" diagnostics.
		LspDiagnosticsDefaultInformation = { fg = glacier.glacier10_gui }, -- used for "Information" diagnostic virtual text
		LspDiagnosticsSignInformation = { fg = glacier.glacier10_gui }, -- used for "Information" diagnostic signs in sign column
		LspDiagnosticsFloatingInformation = { fg = glacier.glacier10_gui }, -- used for "Information" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextInformation = { fg = glacier.glacier10_gui }, -- Virtual text "Information"
		LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = glacier.glacier10_gui }, -- used to underline "Information" diagnostics.
		LspDiagnosticsDefaultHint = { fg = glacier.glacier9_gui }, -- used for "Hint" diagnostic virtual text
		LspDiagnosticsSignHint = { fg = glacier.glacier9_gui }, -- used for "Hint" diagnostic signs in sign column
		LspDiagnosticsFloatingHint = { fg = glacier.glacier9_gui }, -- used for "Hint" diagnostic messages in the diagnostics float
		LspDiagnosticsVirtualTextHint = { fg = glacier.glacier9_gui }, -- Virtual text "Hint"
		LspDiagnosticsUnderlineHint = { style = "undercurl", sp = glacier.glacier10_gui }, -- used to underline "Hint" diagnostics.
		LspReferenceText = { fg = glacier.glacier4_gui, bg = glacier.glacier1_gui }, -- used for highlighting "text" references
		LspReferenceRead = { fg = glacier.glacier4_gui, bg = glacier.glacier1_gui }, -- used for highlighting "read" references
		LspReferenceWrite = { fg = glacier.glacier4_gui, bg = glacier.glacier1_gui }, -- used for highlighting "write" references

		DiagnosticError = { link = "LspDiagnosticsDefaultError" },
		DiagnosticWarn = { link = "LspDiagnosticsDefaultWarning" },
		DiagnosticInfo = { link = "LspDiagnosticsDefaultInformation" },
		DiagnosticHint = { link = "LspDiagnosticsDefaultHint" },
		DiagnosticVirtualTextWarn = { link = "LspDiagnosticsVirtualTextWarning" },
		DiagnosticUnderlineWarn = { link = "LspDiagnosticsUnderlineWarning" },
		DiagnosticFloatingWarn = { link = "LspDiagnosticsFloatingWarning" },
		DiagnosticSignWarn = { link = "LspDiagnosticsSignWarning" },
		DiagnosticVirtualTextError = { link = "LspDiagnosticsVirtualTextError" },
		DiagnosticUnderlineError = { link = "LspDiagnosticsUnderlineError" },
		DiagnosticFloatingError = { link = "LspDiagnosticsFloatingError" },
		DiagnosticSignError = { link = "LspDiagnosticsSignError" },
		DiagnosticVirtualTextInfo = { link = "LspDiagnosticsVirtualTextInformation" },
		DiagnosticUnderlineInfo = { link = "LspDiagnosticsUnderlineInformation" },
		DiagnosticFloatingInfo = { link = "LspDiagnosticsFloatingInformation" },
		DiagnosticSignInfo = { link = "LspDiagnosticsSignInformation" },
		DiagnosticVirtualTextHint = { link = "LspDiagnosticsVirtualTextHint" },
		DiagnosticUnderlineHint = { link = "LspDiagnosticsUnderlineHint" },
		DiagnosticFloatingHint = { link = "LspDiagnosticsFloatingHint" },
		DiagnosticSignHint = { link = "LspDiagnosticsSignHint" },
	}

	return lsp
end

theme.loadPlugins = function()
	-- Plugins highlight groups

	local plugins = {

		-- LspTrouble
		LspTroubleText = { fg = glacier.glacier4_gui },
		LspTroubleCount = { fg = glacier.glacier9_gui, bg = glacier.glacier10_gui },
		LspTroubleNormal = { fg = glacier.glacier4_gui, bg = glacier.sidebar },

		-- Diff
		diffAdded = { fg = glacier.glacier14_gui },
		diffRemoved = { fg = glacier.glacier11_gui },
		diffChanged = { fg = glacier.glacier15_gui },
		diffOldFile = { fg = glacier.yelow },
		diffNewFile = { fg = glacier.glacier12_gui },
		diffFile = { fg = glacier.glacier7_gui },
		diffLine = { fg = glacier.glacier3_gui },
		diffIndexLine = { fg = glacier.glacier9_gui },

		-- Neogit
		NeogitBranch = { fg = glacier.glacier10_gui },
		NeogitRemote = { fg = glacier.glacier9_gui },
		NeogitHunkHeader = { fg = glacier.glacier8_gui },
		NeogitHunkHeaderHighlight = { fg = glacier.glacier8_gui, bg = glacier.glacier1_gui },
		NeogitDiffContextHighlight = { bg = glacier.glacier1_gui },
		NeogitDiffDeleteHighlight = { fg = glacier.glacier11_gui, style = "reverse" },
		NeogitDiffAddHighlight = { fg = glacier.glacier14_gui, style = "reverse" },

		-- GitGutter
		GitGutterAdd = { fg = glacier.glacier14_gui }, -- diff mode: Added line |diff.txt|
		GitGutterChange = { fg = glacier.glacier13_gui }, -- diff mode: Changed line |diff.txt|
		GitGutterDelete = { fg = glacier.glacier11_gui }, -- diff mode: Deleted line |diff.txt|

		-- GitSigns
		GitSignsAdd = { fg = glacier.glacier14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsAddNr = { fg = glacier.glacier14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsAddLn = { fg = glacier.glacier14_gui }, -- diff mode: Added line |diff.txt|
		GitSignsChange = { fg = glacier.glacier13_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeNr = { fg = glacier.glacier13_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsChangeLn = { fg = glacier.glacier13_gui }, -- diff mode: Changed line |diff.txt|
		GitSignsDelete = { fg = glacier.glacier11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteNr = { fg = glacier.glacier11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsDeleteLn = { fg = glacier.glacier11_gui }, -- diff mode: Deleted line |diff.txt|
		GitSignsCurrentLineBlame = { fg = glacier.glacier3_gui_bright, style = bold },

		-- Telescope
		TelescopePromptBorder = { fg = glacier.glacier4_gui },
		TelescopeResultsBorder = { fg = glacier.glacier4_gui },
		TelescopePreviewBorder = { fg = glacier.glacier4_gui },
		TelescopeSelectionCaret = { fg = glacier.glacier9_gui },
		TelescopeSelection = { fg = glacier.glacier6_gui, bg = glacier.glacier2_gui },
		TelescopeMatching = { link = 'Search' },

		-- NvimTree
		NvimTreeRootFolder = { fg = glacier.glacier15_gui },
		NvimTreeSymlink = { fg = glacier.glacier5_gui },
		NvimTreeFolderName = { fg = glacier.glacier4_gui },
		NvimTreeFolderIcon = { fg = glacier.glacier9_gui },
		NvimTreeEmptyFolderName = { fg = glacier.glacier4_gui },
		NvimTreeOpenedFolderName = { fg = glacier.glacier5_gui },
		NvimTreeExecFile = { fg = glacier.glacier4_gui },
		NvimTreeOpenedFile = { fg = glacier.glacier6_gui },
		NvimTreeSpecialFile = { fg = glacier.glacier4_gui, style = bold},
		NvimTreeImageFile = { fg = glacier.glacier4_gui },
		NvimTreeMarkdownFile = { fg = glacier.glacier4_gui },
		NvimTreeIndentMarker = { fg = glacier.glacier9_gui },
		NvimTreeGitDirty = { fg = glacier.glacier13_gui }, -- diff mode: Changed line |diff.txt|
		NvimTreeGitStaged = { fg = glacier.glacier13_gui }, -- diff mode: Changed line |diff.txt|
		NvimTreeGitMerge = { fg = glacier.glacier13_gui }, -- diff mode: Changed line |diff.txt|
		NvimTreeGitRenamed = { fg = glacier.glacier13_gui }, -- diff mode: Changed line |diff.txt|
		NvimTreeGitNew = { fg = glacier.glacier14_gui }, -- diff mode: Added line |diff.txt|
		NvimTreeGitDeleted = { fg = glacier.glacier11_gui },	-- diff mode: Deleted line |diff.txt|
		NvimTreeGitIgnored = { fg = glacier.glacier3_gui_bright },
		LspDiagnosticsError = { fg = glacier.glacier12_gui },
		LspDiagnosticsWarning = { fg = glacier.glacier15_gui },
		LspDiagnosticsInformation = { fg = glacier.glacier10_gui },
		LspDiagnosticsHint = { fg = glacier.glacier9_gui },

		-- WhichKey
		WhichKey = { fg = glacier.glacier8_gui, style = bold },
		WhichKeyGroup = { fg = glacier.glacier5_gui },
		WhichKeyDesc = { fg = glacier.glacier7_gui, style = italic },
		WhichKeySeperator = { fg = glacier.glacier9_gui },
		WhichKeyFloating = { bg = glacier.glacier1_gui },
		WhichKeyFloat = { bg = glacier.glacier1_gui },
		WhichKeyValue = { fg = glacier.glacier7_gui },

		-- LspSaga
		DiagnosticError = { fg = glacier.glacier12_gui },
		DiagnosticWarning = { fg = glacier.glacier15_gui },
		DiagnosticInformation = { fg = glacier.glacier10_gui },
		DiagnosticHint = { fg = glacier.glacier9_gui },
		DiagnosticTruncateLine = { fg = glacier.glacier4_gui },
		LspFloatWinBorder = { fg = glacier.glacier4_gui, bg = glacier.float },
		LspSagaDefPreviewBorder = { fg = glacier.glacier4_gui, bg = glacier.float },
		DefinitionIcon = { fg = glacier.glacier7_gui },
		TargetWord = { fg = glacier.glacier6_gui, style = 'bold' },
		-- LspSaga code action
		LspSagaCodeActionTitle = { link = 'Title' },
		LspSagaCodeActionBorder = { fg = glacier.glacier4_gui, bg = glacier.float },
		LspSagaCodeActionTrunCateLine = { link = 'LspSagaCodeActionBorder' },
		LspSagaCodeActionContent = { fg = glacier.glacier4_gui },
		-- LspSag finder
		LspSagaLspFinderBorder = { fg = glacier.glacier4_gui, bg = glacier.float },
		LspSagaAutoPreview = { fg = glacier.glacier4_gui },
		LspSagaFinderSelection = { fg = glacier.glacier6_gui, bg = glacier.glacier2_gui },
		TargetFileName = { fg = glacier.glacier4_gui },
		FinderParam = { fg = glacier.glacier15_gui, bold = true },
		FinderVirtText = { fg = glacier.glacier15_gui15 , bg = glacier.none },
		DefinitionsIcon = { fg = glacier.glacier9_gui },
		Definitions = { fg = glacier.glacier15_gui, bold = true },
		DefinitionCount = { fg = glacier.glacier10_gui },
		ReferencesIcon = { fg = glacier.glacier9_gui },
		References = { fg = glacier.glacier15_gui, bold = true },
		ReferencesCount = { fg = glacier.glacier10_gui },
		ImplementsIcon = { fg = glacier.glacier9_gui },
		Implements = { fg = glacier.glacier15_gui, bold = true },
		ImplementsCount = { fg = glacier.glacier10_gui },
		-- LspSaga finder spinner
		FinderSpinnerBorder = { fg = glacier.glacier4_gui, bg = glacier.float },
		FinderSpinnerTitle = { link = 'Title' },
		FinderSpinner = { fg = glacier.glacier8_gui, bold = true },
		FinderPreviewSearch = { link = 'Search' },
		-- LspSaga definition
		DefinitionBorder = { fg = glacier.glacier4_gui, bg = glacier.float },
		DefinitionArrow = { fg = glacier.glacier8_gui },
		DefinitionSearch = { link = 'Search' },
		DefinitionFile = { fg = glacier.glacier4_gui, bg = glacier.float },
		-- LspSaga hover
		LspSagaHoverBorder = { fg = glacier.glacier4_gui, bg = glacier.float },
		LspSagaHoverTrunCateLine = { link = 'LspSagaHoverBorder' },
		-- Lsp rename
		LspSagaRenameBorder = { fg = glacier.glacier4_gui, bg = glacier.float },
		LspSagaRenameMatch = { fg = glacier.glacier6_gui, bg = glacier.glacier9_gui },
		-- Lsp diagnostic
		LspSagaDiagnosticSource = { link = 'Comment' },
		LspSagaDiagnosticError = { link = 'DiagnosticError' },
		LspSagaDiagnosticWarn = { link = 'DiagnosticWarn' },
		LspSagaDiagnosticInfo = { link = 'DiagnosticInfo' },
		LspSagaDiagnosticHint = { link = 'DiagnosticHint' },
		LspSagaErrorTrunCateLine = { link = 'DiagnosticError' },
		LspSagaWarnTrunCateLine = { link = 'DiagnosticWarn' },
		LspSagaInfoTrunCateLine = { link = 'DiagnosticInfo' },
		LspSagaHintTrunCateLine = { link = 'DiagnosticHint' },
		LspSagaDiagnosticBorder = { fg = glacier.glacier4_gui, bg = glacier.float },
		LspSagaDiagnosticHeader = { fg = glacier.glacier4_gui },
		DiagnosticQuickFix = { fg = glacier.glacier14_gui, bold = true },
		DiagnosticMap = { fg = glacier.glacier15_gui },
		DiagnosticLineCol = { fg = glacier.glacier4_gui },
		LspSagaDiagnosticTruncateLine = { link = 'LspSagaDiagnosticBorder' },
		ColInLineDiagnostic = { link = 'Comment' },
		-- LspSaga signture help
		LspSagaSignatureHelpBorder = { fg = glacier.glacier4_gui, bg = glacier.float },
		LspSagaShTrunCateLine = { link = 'LspSagaSignatureHelpBorder' },
		-- Lspsaga lightbulb
		LspSagaLightBulb = { link = 'DiagnosticSignHint' },
		-- LspSaga shadow
		SagaShadow = { fg = 'black' },
		-- LspSaga float
		LspSagaBorderTitle = { link = 'Title' },
		-- LspSaga Outline
		LSOutlinePreviewBorder = { fg = glacier.glacier4_gui, bg = glacier.float },
		OutlineIndentEvn = { fg = glacier.glacier15_gui },
		OutlineIndentOdd = { fg = glacier.glacier12_gui },
		OutlineFoldPrefix = { fg = glacier.glacier11_gui },
		OutlineDetail = { fg = glacier.glacier4_gui },
		-- LspSaga all floatwindow
		LspFloatWinNormal = { fg = glacier.glacier4_gui, bg = glacier.float },
		-- Saga End

		-- Sneak
		Sneak = { fg = glacier.glacier0_gui, bg = glacier.glacier4_gui },
		SneakScope = { bg = glacier.glacier1_gui },

		-- Cmp
		CmpItemKind = { fg = glacier.glacier15_gui },
		CmpItemAbbrMatch = { fg = glacier.glacier5_gui, style = bold },
		CmpItemAbbrMatchFuzzy = { fg = glacier.glacier5_gui, style = bold },
		CmpItemAbbr = { fg = glacier.glacier4_gui },
		CmpItemMenu = { fg = glacier.glacier14_gui },

		-- Indent Blankline
		IndentBlanklineChar = { fg = glacier.glacier3_gui },
		IndentBlanklineContextChar = { fg = glacier.glacier10_gui },

		-- headline
		-- bg = (10 * glacier0 + fg) / 11
		Headline1 = { fg = glacier.glacier12_gui, bg = "#3d3c44", bold = true },
		Headline2 = { fg = glacier.glacier13_gui, bg = "#3f4247", bold = true },
		Headline3 = { fg = glacier.glacier14_gui, bg = "#394147", bold = true },
		Headline4 = { fg = glacier.glacier9_gui, bg = "#363e4c", bold = true },
		Headline5 = { fg = glacier.glacier15_gui, bg = "#3a3c4a", bold = true },
		Headline6 = { fg = glacier.glacier4_gui, bg = "#3d434f", bold = true },

		Quote = { fg = glacier.glacier2_gui },
		CodeBlock = { bg = glacier.glacier1_gui },
		Dash = { glacier.glacier10_gui, bold = true },

		-- Illuminate
		illuminatedWord = { bg = glacier.glacier3_gui },
		illuminatedCurWord = { bg = glacier.glacier3_gui },
		IlluminatedWordText = { bg = glacier.glacier3_gui },
		IlluminatedWordRead = { bg = glacier.glacier3_gui },
		IlluminatedWordWrite = { bg = glacier.glacier3_gui },

		-- nvim-dap
		DapBreakpoint = { fg = glacier.glacier14_gui },
		DapStopped = { fg = glacier.glacier15_gui },

		-- nvim-dap-ui
		DapUIVariable = { fg = glacier.glacier4_gui },
		DapUIScope = { fg = glacier.glacier8_gui },
		DapUIType = { fg = glacier.glacier9_gui },
		DapUIValue = { fg = glacier.glacier4_gui },
		DapUIModifiedValue = { fg = glacier.glacier8_gui },
		DapUIDecoration = { fg = glacier.glacier8_gui },
		DapUIThread = { fg = glacier.glacier8_gui },
		DapUIStoppedThread = { fg = glacier.glacier8_gui },
		DapUIFrameName = { fg = glacier.glacier4_gui },
		DapUISource = { fg = glacier.glacier9_gui },
		DapUILineNumber = { fg = glacier.glacier8_gui },
		DapUIFloatBorder = { fg = glacier.glacier8_gui },
		DapUIWatchesEmpty = { fg = glacier.glacier11_gui },
		DapUIWatchesValue = { fg = glacier.glacier8_gui },
		DapUIWatchesError = { fg = glacier.glacier11_gui },
		DapUIBreakpointsPath = { fg = glacier.glacier8_gui },
		DapUIBreakpointsInfo = { fg = glacier.glacier8_gui },
		DapUIBreakpointsCurrentLine = { fg = glacier.glacier8_gui },
		DapUIBreakpointsLine = { fg = glacier.glacier8_gui },

		-- Hop
		HopNextKey = { fg = glacier.glacier4_gui, style = bold },
		HopNextKey1 = { fg = glacier.glacier8_gui, style = bold },
		HopNextKey2 = { fg = glacier.glacier4_gui },
		HopUnmatched = { fg = glacier.glacier3_gui },

		-- Fern
		FernBranchText = { fg = glacier.glacier3_gui_bright },

		-- nvim-ts-rainbow
		rainbowcol1 = { fg = glacier.glacier15_gui },
		rainbowcol2 = { fg = glacier.glacier13_gui },
		rainbowcol3 = { fg = glacier.glacier11_gui },
		rainbowcol4 = { fg = glacier.glacier7_gui },
		rainbowcol5 = { fg = glacier.glacier8_gui },
		rainbowcol6 = { fg = glacier.glacier15_gui },
		rainbowcol7 = { fg = glacier.glacier13_gui },

		-- lightspeed
		LightspeedLabel = { fg = glacier.glacier8_gui, style = bold },
		LightspeedLabelOverlapped = { fg = glacier.glacier8_gui, style = "bold,underline" },
		LightspeedLabelDistant = { fg = glacier.glacier15_gui, style = bold },
		LightspeedLabelDistantOverlapped = { fg = glacier.glacier15_gui, style = "bold,underline" },
		LightspeedShortcut = { fg = glacier.glacier10_gui, style = bold },
		LightspeedShortcutOverlapped = { fg = glacier.glacier10_gui, style = "bold,underline" },
		LightspeedMaskedChar = { fg = glacier.glacier4_gui, bg = glacier.glacier2_gui, style = bold },
		LightspeedGreyWash = { fg = glacier.glacier3_gui_bright },
		LightspeedUnlabeledMatch = { fg = glacier.glacier4_gui, bg = glacier.glacier1_gui },
		LightspeedOneCharMatch = { fg = glacier.glacier8_gui, style = "bold,reverse" },
		LightspeedUniqueChar = { style = "bold,underline" },

		-- copilot
		CopilotLabel = { fg = glacier.glacier3_gui, bg = glacier.none },

		-- Statusline
		StatusLineDull = { fg = glacier.glacier3_gui, bg = glacier.glacier1_gui },
		StatusLineAccent = { fg = glacier.glacier0_gui, bg = glacier.glacier13_gui },

		-- mini.nvim
		MiniCompletionActiveParameter = { style = "underline" },

		MiniCursorword = { bg = glacier.glacier3_gui },
		MiniCursorwordCurrent = { bg = glacier.glacier3_gui },

		MiniIndentscopeSymbol = { fg = glacier.glacier10_gui },
		MiniIndentscopePrefix = { style = "nocombine" }, -- Make it invisible

		MiniJump = { fg = glacier.glacier0_gui, bg = glacier.glacier4_gui },

		MiniJump2dSpot = { fg = glacier.glacier12_gui, style = "bold,nocombine" },

		MiniStarterCurrent = { style = "nocombine" },
		MiniStarterFooter = { fg = glacier.glacier14_gui, style = italic },
		MiniStarterHeader = { fg = glacier.glacier9_gui },
		MiniStarterInactive = { link = "Comment" },
		MiniStarterItem = { link = "Normal" },
		MiniStarterItemBullet = { fg = glacier.glacier4_gui },
		MiniStarterItemPrefix = { fg = glacier.glacier15_gui },
		MiniStarterSection = { fg = glacier.glacier4_gui },
		MiniStarterQuery = { fg = glacier.glacier10_gui },

		MiniStatuslineDevinfo = { fg = glacier.glacier4_gui, bg = glacier.glacier2_gui },
		MiniStatuslineFileinfo = { fg = glacier.glacier4_gui, bg = glacier.glacier2_gui },
		MiniStatuslineFilename = { fg = glacier.glacier4_gui, bg = glacier.glacier1_gui },
		MiniStatuslineInactive = { fg = glacier.glacier4_gui, bg = glacier.glacier0_gui, style = bold },
		MiniStatuslineModeCommand = { fg = glacier.glacier0_gui, bg = glacier.glacier15_gui, style = bold },
		MiniStatuslineModeInsert = { fg = glacier.glacier1_gui, bg = glacier.glacier4_gui, style = bold },
		MiniStatuslineModeNormal = { fg = glacier.glacier1_gui, bg = glacier.glacier9_gui, style = bold },
		MiniStatuslineModeOther = { fg = glacier.glacier0_gui, bg = glacier.glacier13_gui, style = bold },
		MiniStatuslineModeReplace = { fg = glacier.glacier0_gui, bg = glacier.glacier11_gui, style = bold },
		MiniStatuslineModeVisual = { fg = glacier.glacier0_gui, bg = glacier.glacier7_gui, style = bold },

		MiniSurround = { link = "IncSearch" },

		MiniTablineCurrent = { bg = glacier.glacier1_gui },
		MiniTablineFill = { link = "TabLineFill" },
		MiniTablineHidden = { bg = glacier.glacier0_gui, fg = glacier.glacier3_gui },
		MiniTablineModifiedCurrent = { bg = glacier.glacier1_gui, fg = glacier.glacier15_gui },
		MiniTablineModifiedHidden = { bg = glacier.glacier0_gui, fg = glacier.glacier15_gui },
		MiniTablineModifiedVisible = { bg = glacier.glacier2_gui, fg = glacier.glacier15_gui },
		MiniTablineTabpagesection = { fg = glacier.glacier10_gui, bg = glacier.glacier6_gui, style = reverse_bold },
		MiniTablineVisible = { bg = glacier.glacier2_gui },

		MiniTestEmphasis = { style = bold },
		MiniTestFail = { fg = glacier.glacier11_gui, style = bold },
		MiniTestPass = { fg = glacier.glacier14_gui, style = bold },

		MiniTrailspace = { bg = glacier.glacier11_gui },

		-- Aerail
		AerialLine = { bg = glacier.glacier2_gui },
		AerialLineNC = { bg = glacier.glacier2_gui },

		AerialArrayIcon = { fg = glacier.glacier13_gui },
		AerialBooleanIcon = { fg = glacier.glacier9_gui, style = bold },
		AerialClassIcon = { fg = glacier.glacier9_gui },
		AerialConstantIcon = { fg = glacier.glacier13_gui },
		AerialConstructorIcon = { fg = glacier.glacier9_gui },
		AerialEnumIcon = { fg = glacier.glacier9_gui },
		AerialEnumMemberIcon = { fg = glacier.glacier4_gui },
		AerialEventIcon = { fg = glacier.glacier9_gui },
		AerialFieldIcon = vim.g.glacier_italic and { fg = glacier.glacier4_gui, style = italic } or { fg = glacier.glacier4_gui },
		AerialFileIcon = { fg = glacier.glacier14_gui },
		AerialFunctionIcon = vim.g.glacier_italic and { fg = glacier.glacier8_gui, style = italic } or { fg = glacier.glacier8_gui },
		AerialInterfaceIcon = { fg = glacier.glacier9_gui },
		AerialKeyIcon = { fg = glacier.glacier9_gui },
		AerialMethodIcon = vim.g.glacier_italic and { fg = glacier.glacier7_gui, style = italic } or { fg = glacier.glacier7_gui },
		AerialModuleIcon = vim.g.glacier_italic and { fg = glacier.glacier4_gui, style = italic } or { fg = glacier.glacier4_gui },
		AerialNamespaceIcon = vim.g.glacier_italic and { fg = glacier.glacier4_gui, style = italic }
			or { fg = glacier.glacier4_gui },
		AerialNullIcon = { fg = glacier.glacier9_gui },
		AerialNumberIcon = { fg = glacier.glacier15_gui },
		AerialObjectIcon = { fg = glacier.glacier9_gui },
		AerialOperatorIcon = { fg = glacier.glacier9_gui },
		AerialPackageIcon = vim.g.glacier_italic and { fg = glacier.glacier4_gui, style = italic } or { fg = glacier.glacier4_gui },
		AerialPropertyIcon = vim.g.glacier_italic and { fg = glacier.glacier4_gui, style = italic }
			or { fg = glacier.glacier10_gui },
		AerialStringIcon = vim.g.glacier_italic and { fg = glacier.glacier14_gui, style = italic } or { fg = glacier.glacier14_gui },
		AerialStructIcon = { fg = glacier.glacier9_gui },
		AerialTypeParameterIcon = { fg = glacier.glacier10_gui },
		AerialVariableIcon = { fg = glacier.glacier4_gui, style = bold },

		AerialArray = { fg = glacier.glacier13_gui },
		AerialBoolean = { fg = glacier.glacier9_gui, style = bold },
		AerialClass = { fg = glacier.glacier9_gui },
		AerialConstant = { fg = glacier.glacier13_gui },
		AerialConstructor = { fg = glacier.glacier9_gui },
		AerialEnum = { fg = glacier.glacier9_gui },
		AerialEnumMember = { fg = glacier.glacier4_gui },
		AerialEvent = { fg = glacier.glacier9_gui },
		AerialField = vim.g.glacier_italic and { fg = glacier.glacier4_gui, style = italic } or { fg = glacier.glacier4_gui },
		AerialFile = { fg = glacier.glacier14_gui },
		AerialFunction = vim.g.glacier_italic and { fg = glacier.glacier8_gui, style = italic } or { fg = glacier.glacier8_gui },
		AerialInterface = { fg = glacier.glacier9_gui },
		AerialKey = { fg = glacier.glacier9_gui },
		AerialMethod = vim.g.glacier_italic and { fg = glacier.glacier7_gui, style = italic } or { fg = glacier.glacier7_gui },
		AerialModule = vim.g.glacier_italic and { fg = glacier.glacier4_gui, style = italic } or { fg = glacier.glacier4_gui },
		AerialNamespace = vim.g.glacier_italic and { fg = glacier.glacier4_gui, style = italic } or { fg = glacier.glacier4_gui },
		AerialNull = { fg = glacier.glacier9_gui },
		AerialNumber = { fg = glacier.glacier15_gui },
		AerialObject = { fg = glacier.glacier9_gui },
		AerialOperator = { fg = glacier.glacier9_gui },
		AerialPackage = vim.g.glacier_italic and { fg = glacier.glacier4_gui, style = italic } or { fg = glacier.glacier4_gui },
		AerialProperty = vim.g.glacier_italic and { fg = glacier.glacier4_gui, style = italic } or { fg = glacier.glacier10_gui },
		AerialString = vim.g.glacier_italic and { fg = glacier.glacier14_gui, style = italic } or { fg = glacier.glacier14_gui },
		AerialStruct = { fg = glacier.glacier9_gui },
		AerialTypeParameter = { fg = glacier.glacier10_gui },
		AerialVariable = { fg = glacier.glacier4_gui, style = bold },

		-- nvim-navic
		NavicIconsArray = { fg = glacier.glacier13_gui },
		NavicIconsBoolean = { fg = glacier.glacier9_gui, style = bold },
		NavicIconsClass = { fg = glacier.glacier9_gui },
		NavicIconsConstant = { fg = glacier.glacier13_gui },
		NavicIconsConstructor = { fg = glacier.glacier9_gui },
		NavicIconsEnum = { fg = glacier.glacier9_gui },
		NavicIconsEnumMember = { fg = glacier.glacier4_gui },
		NavicIconsEvent = { fg = glacier.glacier9_gui },
		NavicIconsField = { fg = glacier.glacier4_gui, style = italic },
		NavicIconsFile = { fg = glacier.glacier14_gui },
		NavicIconsFunction = { fg = glacier.glacier8_gui, style = italic },
		NavicIconsInterface = { fg = glacier.glacier9_gui },
		NavicIconsKey = { fg = glacier.glacier9_gui },
		NavicIconsMethod = { fg = glacier.glacier7_gui, style = italic },
		NavicIconsModule = { fg = glacier.glacier4_gui, style = italic },
		NavicIconsNamespace = { fg = glacier.glacier4_gui, style = italic },
		NavicIconsNull = { fg = glacier.glacier9_gui },
		NavicIconsNumber = { fg = glacier.glacier15_gui },
		NavicIconsObject = { fg = glacier.glacier9_gui },
		NavicIconsOperator = { fg = glacier.glacier9_gui },
		NavicIconsPackage = { fg = glacier.glacier4_gui, style = italic },
		NavicIconsProperty = { fg = glacier.glacier4_gui, style = italic },
		NavicIconsString = { fg = glacier.glacier14_gui, style = italic },
		NavicIconsStruct = { fg = glacier.glacier9_gui },
		NavicIconsTypeParameter = { fg = glacier.glacier10_gui },
		NavicIconsVariable = { fg = glacier.glacier4_gui, style = bold },
		NavicText = { fg = glacier.glacier4_gui },
		NavicSeparator = { fg = glacier.glacier4_gui },
	}
	-- Options:

	-- Disable nvim-tree background
	if vim.g.glacier_disable_background then
		plugins.NvimTreeNormal = { fg = glacier.glacier4_gui, bg = glacier.none }
	else
		plugins.NvimTreeNormal = { fg = glacier.glacier4_gui, bg = glacier.sidebar }
	end

	if vim.g.glacier_enable_sidebar_background then
		plugins.NvimTreeNormal = { fg = glacier.glacier4_gui, bg = glacier.sidebar }
	else
		plugins.NvimTreeNormal = { fg = glacier.glacier4_gui, bg = glacier.none }
	end

	return plugins
end

return theme
