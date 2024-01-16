--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`

-- Background and foreground
local black = "#080808"
local white = "#c6c6c6"
local bg = black
-- Variations of charcoal-grey
local grey0 = "#323437"
local grey1 = "#373c4d"
local grey254 = "#e4e4e4"
local grey249 = "#b2b2b2"
local grey247 = "#9e9e9e"
local grey246 = "#949494"
local grey244 = "#808080"
local grey241 = "#626262"
local grey239 = "#4e4e4e"
local grey238 = "#444444"
local grey237 = "#3a3a3a"
local grey236 = "#303030"
local grey235 = "#262626"
local grey234 = "#1c1c1c"
local grey233 = "#121212"
-- Core theme colors
local khaki = "#c2c292"
local yellow = "#e3c78a"
local orange = "#de935f"
local coral = "#f09479"
local orchid = "#e196a2"
local lime = "#85dc85"
local green = "#8cc85f"
local emerald = "#36c692"
local blue = "#80a0ff"
local sky = "#74b2ff"
local turquoise = "#79dac8"
local purple = "#ae81ff"
local cranberry = "#e65e72"
local violet = "#cf87e8"
local crimson = "#ff5189"
local red = "#ff5454"
-- Extra colors
local spring = "#00875f"
local mineral = "#314940"
local bay = "#4d5d8d"
local ocean = "#1A2034" -- a darker tint of blue

local lush = require('lush')
local hsl = lush.hsl

-- LSP/Linters mistakenly show `undefined global` errors in the spec, they may
-- support an annotation like the following. Consult your server documentation.
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
  local sym = injected_functions.sym
  return {
    -- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
    -- groups, mostly used for styling UI elements.
    -- Comment them out and add your own properties to override the defaults.
    -- An empty definition `{}` will clear all styling, leaving elements looking
    -- like the 'Normal' group.
    -- To be able to link to a group, it must already be defined, so you may have
    -- to reorder items as you go.
    --
    -- See :h highlight-groups
    --
    ColorColumn    { bg = black, fg = grey0 }, -- Columns set with 'colorcolumn'
    -- Conceal        { }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor         { bg = blue, fg = black }, -- Character under the cursor
    CurSearch      { bg = orange, fg = black }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
    -- lCursor        { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
    -- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
    CursorColumn   { bg = grey0 }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine     { bg = grey0 }, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory      { fg = blue }, -- Directory names (and other special names in listings)
    DiffAdd        { fg = green }, -- Diff mode: Added line |diff.txt|
    DiffChange     { fg = orange }, -- Diff mode: Changed line |diff.txt|
    DiffDelete     { fg = red }, -- Diff mode: Deleted line |diff.txt|
    DiffText       { fg = black, bg = red }, -- Diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
    -- TermCursor     { }, -- Cursor in a focused terminal
    -- TermCursorNC   { }, -- Cursor in an unfocused terminal
    ErrorMsg       { bg = red , fg = black }, -- Error messages on the command line
    VertSplit      { fg = green, bg = black }, -- Column separating vertically split windows
    Folded         { bg = black, fg = green }, -- Line used for closed folds
    FoldColumn     { bg = black, fg = green }, -- 'foldcolumn'
    SignColumn     { bg = black, fg = white}, -- Column where |signs| are displayed
    IncSearch      { bg = orange, fg = black }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute     { bg = purple, fg = black }, -- |:substitute| replacement text highlighting
    LineNr         { fg = blue, bg = black }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    LineNrAbove    { fg = grey0, bg = black }, -- Line number for when the 'relativenumber' option is set, above the cursor line
    LineNrBelow    { fg = grey0, bg = black}, -- Line number for when the 'relativenumber' option is set, below the cursor line
    CursorLineNr   { fg = blue, bg = black }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    -- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
    -- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
    MatchParen     { bg =  hsl(crimson).desaturate(40).darken(40)}, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg        { fg = white, bg = black }, -- 'showmode' message (e.g., "-- INSERT -- ")
    -- MsgArea        { }, -- Area for messages and cmdline
    -- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg        { fg = green }, -- |more-prompt|
    NonText        { fg = blue }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal         { fg = white }, -- Normal text
    NormalFloat    { fg = white, bg = black }, -- Normal text in floating windows.
    -- FloatBorder    { }, -- Border of floating windows.
    FloatTitle     { fg = blue }, -- Title of floating windows.
    NormalNC       { fg = white }, -- normal text in non-current windows
    Pmenu          { }, -- Popup menu: Normal item.
    PmenuSel       { fg = black, bg = blue }, -- Popup menu: Selected item.
    -- PmenuKind      { }, -- Popup menu: Normal item "kind"
    -- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
    -- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
    -- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
    -- PmenuSbar      { }, -- Popup menu: Scrollbar.
    -- PmenuThumb     { }, -- Popup menu: Thumb of the scrollbar.
    Question       { fg = green }, -- |hit-enter| prompt and yes/no questions
    -- QuickFixLine   { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search         { bg = purple, fg = black }, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
    -- SpecialKey     { }, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
    -- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    -- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    -- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    -- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
    -- StatusLine     { }, -- Status line of current window
    -- StatusLineNC   { }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    -- TabLine        { }, -- Tab pages line, not active tab page label
    -- TabLineFill    { }, -- Tab pages line, where there are no labels
    -- TabLineSel     { }, -- Tab pages line, active tab page label
    Title          { fg = purple }, -- Titles for output from ":set all", ":autocmd" etc.
    Visual         {  bg = bay }, -- Visual mode selection
    -- VisualNOS      { }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg     { fg = red }, -- Warning messages
    Whitespace     { fg = grey244 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    -- Winseparator   { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
    WildMenu       { }, -- Current match in 'wildmenu' completion
    -- WinBar         { }, -- Window bar of current window
    -- WinBarNC       { }, -- Window bar of not-current windows

    -- Common vim syntax groups used for all kinds of code and markup.
    -- Commented-out groups should chain up to their preferred (*) group
    -- by default.
    --
    -- See :h group-name
    --
    -- Uncomment and edit if you want more specific syntax highlighting.

    Comment        { fg = grey241 }, -- Any comment

    Constant       { fg = orange }, -- (*) Any constant
    String         { fg = yellow }, --   A string constant: "this is a string"
    Character      { fg = orange }, --   A character constant: 'c', '\n'
    Number         { fg = orange }, --   A number constant: 234, 0xff
    Boolean        { fg = orange }, --   A boolean constant: TRUE, false
    Float          { fg = orange }, --   A floating point constant: 2.3e10

    Identifier     { fg = white }, -- (*) Any variable name
    Function       { fg = violet }, --   Function name (also: methods for classes)

    Statement      { fg = sky }, -- (*) Any statement
    Conditional    { fg = sky }, --   if, then, else, endif, switch, etc.
    Repeat         { fg = sky }, --   for, do, while, etc.
    Label          { fg = sky }, --   case, default, etc.
    Operator       { fg = red }, --   "sizeof", "+", "*", etc.
    Keyword        { fg = sky }, --   any other keyword
    Exception      { fg = sky }, --   try, catch, throw

    PreProc        { fg = crimson }, -- (*) Generic Preprocessor
    -- Include        { }, --   Preprocessor #include
    -- Define         { }, --   Preprocessor #define
    -- Macro          { }, --   Same as Define
    -- PreCondit      { }, --   Preprocessor #if, #else, #endif, etc.

    Type           { fg = green }, -- (*) int, long, char, etc.
    -- StorageClass   { }, --   static, register, volatile, etc.
    -- Structure      { }, --   struct, union, enum, etc.
    -- Typedef        { }, --   A typedef

    Special        { fg = crimson }, -- (*) Any special symbol
    -- SpecialChar    { fg = red }, --   Special character in a constant
    -- Tag            { }, --   You can use CTRL-] on this
    Delimiter      { fg = grey254 }, --   Character that needs attention
    -- SpecialComment { }, --   Special things inside a comment (e.g. '\n')
    -- Debug          { }, --   Debugging statements

    Underlined     { }, -- Text that stands out, HTML links
    -- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
    Error          { fg = black, bg = red }, -- Any erroneous construct
    Todo           { fg = black, bg = sky }, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Note           { fg = black, bg = lime },

    -- These groups are for the native LSP client and diagnostic system. Some
    -- other LSP clients may use these groups, or use their own. Consult your
    -- LSP client's documentation.

    -- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
    --
    -- LspReferenceText            { } , -- Used for highlighting "text" references
    -- LspReferenceRead            { } , -- Used for highlighting "read" references
    -- LspReferenceWrite           { } , -- Used for highlighting "write" references
    -- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
    -- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
    -- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

    -- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
    --
    DiagnosticError            { fg = red } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticWarn             { fg = orange } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticInfo             { fg = blue } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticHint             { fg = green } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    DiagnosticOk               { fg = white } , -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
    -- DiagnosticVirtualTextError { fg = red } , -- Used for "Error" diagnostic virtual text.
    -- DiagnosticVirtualTextWarn  { fg = orange } , -- Used for "Warn" diagnostic virtual text.
    -- DiagnosticVirtualTextInfo  { fg = blue } , -- Used for "Info" diagnostic virtual text.
    -- DiagnosticVirtualTextHint  { } , -- Used for "Hint" diagnostic virtual text.
    -- DiagnosticVirtualTextOk    { fg = green } , -- Used for "Ok" diagnostic virtual text.
    -- DiagnosticUnderlineError   {  fg = red  } , -- Used to underline "Error" diagnostics.
    -- DiagnosticUnderlineWarn    {  fg = orange  } , -- Used to underline "Warn" diagnostics.
    -- DiagnosticUnderlineInfo    { fg = blue } , -- Used to underline "Info" diagnostics.
    -- DiagnosticUnderlineHint    { } , -- Used to underline "Hint" diagnostics.
    -- DiagnosticUnderlineOk      { fg = green } , -- Used to underline "Ok" diagnostics.
    -- DiagnosticFloatingError    { fg = red } , -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
    -- DiagnosticFloatingWarn     { fg = orange } , -- Used to color "Warn" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingInfo     { fg = blue } , -- Used to color "Info" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingHint     { } , -- Used to color "Hint" diagnostic messages in diagnostics float.
    -- DiagnosticFloatingOk       { fg = green } , -- Used to color "Ok" diagnostic messages in diagnostics float.
    -- DiagnosticSignError        { fg = red } , -- Used for "Error" signs in sign column.
    -- DiagnosticSignWarn         { fg = orange } , -- Used for "Warn" signs in sign column.
    -- DiagnosticSignInfo         { fg = blue } , -- Used for "Info" signs in sign column.
    -- DiagnosticSignHint         { } , -- Used for "Hint" signs in sign column.
    -- DiagnosticSignOk           { fg = green } , -- Used for "Ok" signs in sign column.

    -- neogit
    NeogitDiffAdd              { fg = green },
    NeogitDiffAddHighlight     { bg = green, fg = black},
    NeogitDiffContextHighlight { bg = hsl(blue).desaturate(80).darken(60) },
    NeogitDiffDelete           { fg = red },
    NeogitDiffDeleteHighlight  { bg = red, fg = black},
    NeogitHunkHeader           { fg = blue },
    NeogitHunkHeaderHighlight  { fg = black, bg = purple },
    NeogitSectionHeader        { fg = blue },
    NeogitChangeRenamed        { fg = yellow },
    NeogitChangeModified       { fg = orange },
    NeogitChangeAdded          { fg = green },
    NeogitChangeDeleted         { fg = red },
    NeogitBranch               { fg = purple },
    NeogitRemote               { fg = violet },
    NeogitBranchHead           { NeogitBranch },
    NeogitTagName              { fg = blue },
    NeogitTagDistance          { fg = blue },

    -- Rainbow Delimiters plugin
    RainbowDelimiterRed        { fg = crimson },
    RainbowDelimiterYellow     { fg = yellow },
    RainbowDelimiterBlue       { fg = blue },
    RainbowDelimiterOrange     { fg = orange },
    RainbowDelimiterGreen      { fg = green },
    RainbowDelimiterViolet     { fg = violet },
    RainbowDelimiterCyan       { fg = emerald },

    -- neo-tree
    NeoTreeTitleBar { bg = green, fg = black }, -- the border is green, stay consistent.

    -- LSP
    -- LspCodeLens { fg = grey234 },

    -- Tree-Sitter syntax groups.
    --
    -- See :h treesitter-highlight-groups, some groups may not be listed,
    -- submit a PR fix to lush-template!
    --
    -- Tree-Sitter groups are defined with an "@" symbol, which must be
    -- specially handled to be valid lua code, we do this via the special
    -- sym function. The following are all valid ways to call the sym function,
    -- for more details see https://www.lua.org/pil/5.html
    --
    -- sym("@text.literal")
    -- sym('@text.literal')
    -- sym"@text.literal"
    -- sym'@text.literal'
    --
    -- For more information see https://github.com/rktjmp/lush.nvim/issues/109
    sym"@text.literal"      { fg = white }, -- Comment
    sym"@text.reference"      { fg = blue }, -- Comment
    sym"@text.title"        { fg = purple }, -- Title
    -- sym"@text.uri"          { }, -- Underlined
    -- sym"@text.underline"    { }, -- Underlined
    -- sym"@text.todo"         { }, -- Todo
    sym"@attribute"               { fg = lime }, -- Comment
    sym"@comment"              { fg = grey244 }, -- Comment
    sym"@comment.documentation" { fg = green }, -- Comment
    sym"@punctuation.bracket"       { fg = crimson }, -- Delimiter
    sym"@punctuation.special"       { fg =crimson }, -- Delimiter
    sym"@punctuation.delimiter"       { fg = crimson }, -- Delimiter
    sym"@constant"          { fg = emerald }, -- Constant
    -- sym"@constant.builtin"  { }, -- Special
    -- sym"@constant.macro"    { }, -- Define
    -- sym"@define"            { }, -- Define
    -- sym"@macro"             { }, -- Macro
    -- sym"@string"            { }, -- Strng
    sym"@string.escape"     { fg = blue }, -- SpecialChar
    -- sym"@string.special"    { }, -- SpecialChar
    -- sym"@character"         { }, -- Character
    -- sym"@character.special" { }, -- SpecialChar
    -- sym"@number"            { }, -- Number
    -- sym"@boolean"           { }, -- Boolean
    -- sym"@float"             { }, -- Float
    sym"@function"             { fg = violet }, -- Function
    sym"@function.call"        { fg = white }, -- Function
    sym"@function.builtin"  { fg = cranberry }, -- Special
    sym"@function.macro"    { fg = orchid }, -- Macro
    sym"@parameter"         { fg = white }, -- Identifier
    sym"@method"            { fg = violet}, -- Function
    sym"@method.call"       { fg = white }, -- Function
    sym"@field"             { fg = violet }, -- Identifier
    sym"@property"          { fg = lime }, -- Identifier
    sym"@constructor"       { fg = white }, -- Special
    sym"@conditional"       { fg = crimson }, -- Conditional
    sym"@repeat"            { fg = crimson }, -- Repeat
    sym"@label"             { }, -- Label
    sym"@operator"          { fg = crimson }, -- Operator
    sym"@keyword"           { fg = crimson }, -- Keyword
    sym"@keyword.doxygen"   { fg = purple }, -- Keyword
    sym"@exception"         { fg = crimson }, -- Exception
    sym"@variable"          { fg = white }, -- Identifier
    sym"@variable.builtin"  { fg = crimson }, -- Identifier
    sym"@symbol"           { fg = purple }, -- Identifier
    sym"@type"              { fg = blue }, -- Typ
    sym"@type.qualifier"     { fg = crimson }, -- Type
    sym"@type.macro"     { fg = orchid }, -- Type
    -- sym"@lsp.type.macro"     { fg = orchid }, -- Type
    -- sym"@lsp.type.function"     { fg = white }, -- Type
    -- sym"@lsp.type.class"     { fg = blue }, -- Type
    -- sym"@lsp.type.method"     { fg = white }, -- Type
    -- sym"@lsp.type.variable"     { fg = white }, -- Type
    -- sym"@type.definition"   { }, -- Typedef
    sym"@storageclass"      { fg = crimson }, -- StorageClas
    -- sym"@structure"         { }, -- Structure
    sym"@namespace"         { fg = purple }, -- Identifier
    -- sym"@include"           { }, -- Include
    -- sym"@preproc"           { }, -- PreProc
    -- sym"@debug"             { }, -- Debug
    -- sym"@tag"               { }, -- Tag
}
end)

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
