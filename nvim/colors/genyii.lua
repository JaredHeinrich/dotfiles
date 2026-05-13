vim.cmd('highlight clear')
vim.cmd('syntax reset')

local colors = {
    background = "#282739",
    float_background = "#33374f",
    bg_highlight = "#3a3954",

    night_blue = "#737aa2",
    violett = "#b9b7e8",

    white = "#eef0f0",
    light_gray = "#b5b5b5",
    gray = "#898989",
    dark_gray = "#494949",
    black = "#0C0E14",


    light_blue = "#89ddff",
    cyan = "#7dcfff",
    blue = "#7aa2f7",
    dark_blue = "#4156b5",
    teal = "#1abc9c",
    dark_teal = "#309898",
    light_green = "#a6da95",
    green = "#9ece6a",
    dark_green = "#3e8439",
    yellow = "#f9d791",
    dark_yellow = "#e0af68",
    light_orange = "#f5a97f",
    orange = "#ff9e64",
    light_red = "#f7768e",
    red = "#ff5d62",
    dark_red = "#914c54",
    magenta = "#ff007c",
    light_purple = "#c6a0f6",
    purple = "#9d7cd8",
}

local highlights = {
-- Base
    Comment = { fg = colors.gray, italic = true }, -- any comment
    ColorColumn = { bg = colors.light_red }, -- used for the columns set with 'colorcolumn'
    Conceal = { fg = colors.night_blue }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor = { fg = colors.bg, bg = colors.white }, -- character under the cursor
    CursorColumn = { bg = colors.bg_highlight }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine = { bg = colors.bg_highlight }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory = { fg = colors.blue }, -- directory names (and other special names in listings)
    DiffAdd = { bg = colors.dark_green }, -- diff mode: Added line |diff.txt|
    DiffChange = { bg = colors.dark_blue }, -- diff mode: Changed line |diff.txt|
    DiffDelete = { bg = colors.dark_red }, -- diff mode: Deleted line |diff.txt|
    DiffText = { bg = colors.dark_yellow }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer = { fg = colors.background }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    ErrorMsg = { fg = colors.red }, -- error messages on the command line
    -- SignColumn = { bg = "transparent" and colors.background, fg = colors.light_gray }, -- column where |signs| are displayed
    -- SignColumnSB = { bg = colors.background, fg = colors.light_gray }, -- column where |signs| are displayed
    Substitute = { bg = colors.red, fg = colors.black }, -- |:substitute| replacement text highlighting
    LineNr = { fg = colors.light_orange }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr = { fg = colors.orange, bold = true }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- LineNrAbove = { fg = colors.gray },
    -- LineNrBelow = { fg = colors.gray },
    MatchParen = { fg = colors.orange, bold = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg = { fg = colors.light_green, bold = true }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea = { fg = colors.white }, -- Area for messages and cmdline
--     MoreMsg                     = { fg = c.blue }, -- |more-prompt|
--     NonText                     = { fg = c.dark3 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal = { fg = colors.white, bg = colors.background }, -- normal text
    NormalNC = { fg = colors.white }, -- normal text in non-current windows
    NormalSB = { fg = colors.white, bg = colors.background }, -- normal text in sidebar
    NormalFloat = { fg = colors.white, bg = colors.black }, -- Normal text in floating windows.
    FloatBorder = { fg = colors.magenta, bg = colors.black },
    FloatTitle = { fg = colors.magenta, bg = colors.black },
--     Pmenu                       = { bg = c.bg_popup, fg = c.fg }, -- Popup menu: normal item.
--     PmenuMatch                  = { bg = c.bg_popup, fg = c.blue1 }, -- Popup menu: Matched text in normal item.
--     PmenuSel                    = { bg = Util.blend_bg(c.fg_gutter, 0.8) }, -- Popup menu: selected item.
--     PmenuMatchSel               = { bg = Util.blend_bg(c.fg_gutter, 0.8), fg = c.blue1 }, -- Popup menu: Matched text in selected item.
--     PmenuSbar                   = { bg = Util.blend_fg(c.bg_popup, 0.95) }, -- Popup menu: scrollbar.
--     PmenuThumb                  = { bg = c.fg_gutter }, -- Popup menu: Thumb of the scrollbar.
    Question = { fg = colors.blue }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine = { bg = colors.bg_highlight, bold = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search = { bg = colors.orange, fg = colors.black }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch = { bg = colors.blue, fg = colors.black }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    CurSearch =  { bg = colors.yellow, fg = colors.black },
    SpecialKey = { fg = colors.gray }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad = { sp = colors.red, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap = { sp = colors.yellow, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal = { sp = colors.light_blue, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare = { sp = colors.light_blue, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine = { fg = colors.white, bg = colors.float_background }, -- status line of current window
    StatusLineNC = { fg = colors.white, bg = colors.float_background }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine = { bg = colors.black, fg = colors.white }, -- tab pages line, not active tab page label
    TabLineFill = { bg = colors.black }, -- tab pages line, where there are no labels
    TabLineSel = { fg = colors.black, bg = colors.cyan }, -- tab pages line, active tab page label
    Title = { fg = colors.dark_blue, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
    Visual = { bg = colors.bg_highlight }, -- Visual mode selection
    VisualNOS = { bg = colors.bg_highlight }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg = { fg = colors.yellow }, -- warning messages
    Whitespace = { fg = colors.gray }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu = { bg = colors.bg_highlight }, -- current match in 'wildmenu' completion
    WinBar = { fg = colors.white, bg = colors.float_background }, -- window bar
    WinBarNC = { fg = colors.white, bg = colors.float_background }, -- window bar in inactive windows
    Bold = { bold = true, fg = colors.white }, -- (preferred) any bold text
    Character = { fg = colors.light_orange }, --  a character constant: 'c', '\n'
    Constant = { fg = colors.orange }, -- (preferred) any constant
    Debug = { fg = colors.orange }, --    debugging statements
    Delimiter = { fg = colors.light_blue }, --  character that needs attention
    Error = { fg = colors.red }, -- (preferred) any erroneous construct
    Function = { fg = colors.blue, italic = true }, -- function name (also: methods for classes)
    Identifier = { fg = colors.yellow }, -- (preferred) any variable name
    Italic = { italic = true, fg = colors.white }, -- (preferred) any italic text
    Keyword = { fg = colors.red, bold = true }, --  any other keyword
    Operator = { fg = colors.white }, -- "sizeof", "+", "*", etc.
    PreProc = { fg = colors.light_purple }, -- (preferred) generic Preprocessor
    Special = { fg = colors.blue }, -- (preferred) any special symbol
    Statement = { fg = colors.magenta }, -- (preferred) any statement
    String = { fg = colors.light_green }, --   a string constant: "this is a string"
    Structure = { fg = colors.yellow },
    Boolean = { fg = colors.light_purple },
    Number = { fg = colors.light_red },
    Todo = { bg = colors.yellow, fg = colors.background }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Type = { fg = colors.dark_teal }, -- (preferred) int, long, char, etc.
    Underlined = { underline = true }, -- (preferred) text that stands out, HTML links

--     -- These groups are for the native LSP client. Some other LSP clients may
--     -- use these groups, or use their own.
--     LspReferenceText            = { bg = c.fg_gutter }, -- used for highlighting "text" references
--     LspReferenceRead            = { bg = c.fg_gutter }, -- used for highlighting "read" references
--     LspReferenceWrite           = { bg = c.fg_gutter }, -- used for highlighting "write" references
--     LspSignatureActiveParameter = { bg = Util.blend_bg(c.bg_visual, 0.4), bold = true },
--     LspCodeLens                 = { fg = c.comment },
--     LspInlayHint                = { bg = Util.blend_bg(c.blue7, 0.1), fg = c.dark3 },
--     LspInfoBorder               = { fg = c.border_highlight, bg = c.bg_float },
--     ComplHint                   = { fg = c.terminal_black },

     -- diagnostics
    DiagnosticError = { fg = colors.red }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticWarn = { fg = colors.yellow }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticInfo = { fg = colors.light_blue }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticHint = { fg = colors.light_blue }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticUnderlineError = { undercurl = true, sp = colors.red }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn = { undercurl = true, sp = colors.yellow }, -- Used to underline "Warning" diagnostics
    DiagnosticUnderlineInfo = { undercurl = true, sp = colors.light_blue }, -- Used to underline "Information" diagnostics
    DiagnosticUnderlineHint = { undercurl = true, sp = colors.light_blue }, -- Used to underline "Hint" diagnostics
    -- Health
    healthError = { fg = colors.red },
    healthSuccess = { fg = colors.green },
    healthWarning = { fg = colors.yellow },

-- Telescope
    TelescopeNormal = { bg = colors.black },
    TelescopeBorder = { bg = colors.black, fg = colors.light_blue },

-- Mason
    MasonNormal = { bg = colors.black },

-- Snacks
    -- Notifier
    SnacksNotifierDebug = { fg = colors.white, bg = colors.black },
    SnacksNotifierBorderDebug = { fg = colors.light_orange, bg = colors.black },
    SnacksNotifierIconDebug = { fg = colors.blue, bg = colors.black },
    SnacksNotifierTitleDebug = { fg = colors.light_orange, bg = colors.black },
    SnacksNotifierError = { fg = colors.white, bg = colors.black },
    SnacksNotifierBorderError = { fg = colors.red, bg = colors.black },
    SnacksNotifierIconError = { fg = colors.red, bg = colors.black },
    SnacksNotifierTitleError = { fg = colors.red, bg = colors.black },
    SnacksNotifierInfo = { fg = colors.white, bg = colors.black },
    SnacksNotifierBorderInfo = { fg = colors.light_blue, bg = colors.black },
    SnacksNotifierIconInfo = { fg = colors.light_blue, bg = colors.black },
    SnacksNotifierTitleInfo = { fg = colors.light_blue, bg = colors.black },
    SnacksNotifierTrace = { fg = colors.white, bg = colors.black },
    SnacksNotifierBorderTrace = { fg = colors.purple, bg = colors.black },
    SnacksNotifierIconTrace = { fg = colors.purple, bg = colors.black },
    SnacksNotifierTitleTrace = { fg = colors.purple, bg = colors.black},
    SnacksNotifierWarn = { fg = colors.white, bg = colors.black },
    SnacksNotifierBorderWarn = { fg = colors.yellow, bg = colors.black },
    SnacksNotifierIconWarn = { fg = colors.yellow, bg = colors.black },
    SnacksNotifierTitleWarn = { fg = colors.yellow, bg = colors.black },
    -- Input
    SnacksInputIcon = { fg = colors.blue },
    SnacksInputBorder = { fg = colors.blue },
    SnacksInputTitle = { fg = colors.blue },
    -- Picker
    SnacksPickerInputBorder = { fg = colors.blue, bg = colors.black },
    SnacksPickerSelected = { fg = colors.white, bg = colors.bg_highlight },
    SnacksPickerDir = { fg = colors.white },

-- Blink
    BlinkCmpDoc = { fg = colors.white, bg = colors.black },
    BlinkCmpDocBorder = { fg = colors.orange, bg = colors.black },
    BlinkCmpGhostText = { fg = colors.gray },
    BlinkCmpKind = { fg = colors.red, bg = colors.black },
    BlinkCmpScrollBarThumb = { bg = colors.white },
    BlinkCmpScrollBarGutter = { bg = colors.black },
    BlinkCmpLabelDetail = { fg = colors.light_blue, bg = colors.black },
    BlinkCmpLabelDescription = { fg = colors.light_blue, bg = colors.black },
    BlinkCmpKindClass = { fg = colors.yellow },
    BlinkCmpKindColor = { fg = colors.green },
    BlinkCmpKindField = { fg = colors.yellow },
    BlinkCmpKindValue = { fg = colors.yellow },
    BlinkCmpKindFolder = { fg = colors.blue },
    BlinkCmpKindMethod = { fg = colors.blue },
    BlinkCmpKindModule = { fg = colors.yellow },
    BlinkCmpKindStruct = { fg = colors.yellow },
    BlinkCmpKindKeyword = { fg = colors.red },
    BlinkCmpKindSnippet = { fg = colors.violett },
    BlinkCmpKindConstant = { fg = colors.orange },
    BlinkCmpKindFunction = { fg = colors.blue },
    BlinkCmpKindInterface = { fg = colors.yellow },
    BlinkCmpKindEnumMember = { fg = colors.orange },
    BlinkCmpKindConstructor = { fg = colors.blue },
    BlinkCmpLabel = { fg = colors.white, bg = colors.black },
    BlinkCmpLabelDeprecated = { fg = colors.white, strikethrough = true },
    BlinkCmpLabelMatch = { fg = colors.blue },
    BlinkCmpMenu = { fg = colors.white, bg = colors.black },
    BlinkCmpMenuSelection = { bg = colors.bg_highlight },

-- Git Signs
    GitSignsAdd    = { fg = colors.green }, -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = colors.light_blue }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = colors.red }, -- diff mode: Deleted line |diff.txt|
--
-- -- Noice
--     NoiceCmdlineIconInput          = { fg = c.yellow },
--     NoiceCmdlineIconLua            = { fg = c.blue1 },
--     NoiceCmdlinePopupBorderInput   = { fg = c.yellow },
--     NoiceCmdlinePopupBorderLua     = { fg = c.blue1 },
--     NoiceCmdlinePopupTitleInput    = { fg = c.yellow },
--     NoiceCmdlinePopupTitleLua      = { fg = c.blue1 },
--     NoiceCompletionItemKindDefault = { fg = c.fg_dark, bg = c.none },
--
-- Treesitter
    ["@annotation"] = { link = "PreProc" },
    ["@attribute"] = { link = "PreProc" },
    ["@boolean"] = { link = "Boolean" },
    ["@character"] = { link = "Character" },
    ["@character.printf"] = { link = "SpecialChar" },
    ["@character.special"] = { link = "SpecialChar" },
    ["@comment"] = { link = "Comment" },
    ["@comment.error"] = { fg = colors.red },
    ["@comment.hint"] = { fg = colors.light_blue },
    ["@comment.info"] = { fg = colors.light_blue },
    ["@comment.note"] = { fg = colors.light_blue },
    ["@comment.todo"] = { fg = colors.yellow },
    ["@comment.warning"] = { fg = colors.yellow },
    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { link = "Special" },
    ["@constant.macro"] = { link = "Define" },
    ["@constructor"] = { fg = colors.magenta },
    ["@diff.delta"] = { link = "DiffChange" },
    ["@diff.minus"] = { link = "DiffDelete" },
    ["@diff.plus"] = { link = "DiffAdd" },
    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { link = "Special" },
    ["@function.call"] = { link = "@function" },
    ["@function.macro"] = { link = "Macro" },
    ["@function.method"] = { link = "Function" },
    ["@function.method.call"] = { link = "@function.method" },
    ["@keyword"] = { fg = colors.red, italic = true }, -- For keywords that don't fall in previous categories.
    ["@keyword.conditional"] = { link = "@keyword" },
    ["@keyword.coroutine"] = { link = "@keyword" },
    ["@keyword.debug"] = { link = "Debug" },
    ["@keyword.directive"] = { link = "PreProc" },
    ["@keyword.directive.define"] = { link = "Define" },
    ["@keyword.exception"] = { link = "Exception" },
    ["@keyword.function"] = { fg = colors.red, italic = true }, -- For keywords used to define a function.
    ["@keyword.import"] = { link = "@keyword" },
    ["@keyword.operator"] = { link = "@operator" },
    ["@keyword.repeat"] = { link = "Repeat" },
    ["@keyword.return"] = { link = "@keyword" },
    ["@keyword.storage"] = { link = "StorageClass" },
    ["@label"] = { fg = colors.blue }, -- For labels: `label:` in C and `:label:` in Lua.
    ["@markup"] = { link = "@none" },
    ["@markup.emphasis"] = { italic = true },
    ["@markup.environment"] = { link = "Macro" },
    ["@markup.environment.name"] = { link = "Type" },
    ["@markup.heading"] = { link = "Title" },
    ["@markup.italic"] = { italic = true },
    ["@markup.link"] = { fg = colors.cyan },
    ["@markup.link.label"] = { link = "SpecialChar" },
    ["@markup.link.label.symbol"] = { link = "Identifier" },
    ["@markup.link.url"] = { link = "Underlined" },
    ["@markup.list"] = { fg = colors.blue }, -- For special punctutation that does not fall in the categories before.
    ["@markup.list.checked"] = { fg = colors.green }, -- For brackets and parens.
    ["@markup.list.markdown"] = { fg = colors.orange, bold = true },
    ["@markup.list.unchecked"] = { fg = colors.blue }, -- For brackets and parens.
    ["@markup.raw.markdown_inline"] = { fg = colors.light_purple },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.strong"] = { bold = true },
    ["@markup.underline"] = { underline = true },
    ["@module"] = { fg = colors.yellow },
    ["@module.builtin"] = { fg = colors.red }, -- Variable names that are defined by the languages, like `this` or `self`.
    ["@namespace.builtin"] = { link = "@variable.builtin" },
    ["@none"] = {},
    ["@number"] = { link = "Number" },
    ["@number.float"] = { link = "Float" },
    ["@operator"] = { fg = colors.white }, -- For any operator: `+`, but also `->` and `*` in C.
    ["@property"] = { fg = colors.green },
    ["@punctuation.bracket"] = { fg = colors.white }, -- For brackets and parens.
    ["@punctuation.delimiter"] = { fg = colors.white }, -- For delimiters ie: `.`
    ["@punctuation.special"] = { fg = colors.blue }, -- For special symbols (e.g. `{}` in string interpolation)
    ["@punctuation.special.markdown"] = { fg = colors.orange }, -- For special symbols (e.g. `{}` in string interpolation)
    ["@string"] = { link = "String" },
    ["@string.documentation"] = { fg = colors.yellow },
    ["@string.escape"] = { fg = colors.magenta }, -- For escape characters within a string.
    ["@string.regexp"] = { fg = colors.blue }, -- For regexes.
    ["@tag"] = { link = "Label" },
    ["@tag.attribute"] = { link = "@property" },
    ["@tag.delimiter"] = { link = "Delimiter" },
    ["@tag.delimiter.tsx"] = { fg = colors.blue },
    ["@tag.tsx"] = { fg = colors.red },
    ["@tag.javascript"] = { fg = colors.red },
    ["@type"] = { link = "Structure" },
    ["@type.builtin"] = { fg = colors.light_blue },
    ["@type.definition"] = { link = "Typedef" },
    ["@type.qualifier"] = { link = "@keyword" },
    ["@variable"] = { fg = colors.white, bold = true }, -- Any variable name that does not have another highlight.
    ["@variable.builtin"] = { fg = colors.red }, -- Variable names that are defined by the languages, like `this` or `self`.
    ["@variable.member"] = { fg = colors.yellow }, -- For fields.
    ["@variable.parameter"] = { fg = colors.yellow }, -- For parameters of a function.
    ["@variable.parameter.builtin"] = { fg = colors.yellow }, -- For builtin parameters of a function, e.g. "..." or Smali's p[1-99]
}

for group, opt in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, opt)
end

