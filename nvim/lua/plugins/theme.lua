
local Color, c, Group, g, s = require("colorbuddy").setup()
local b = s.bold
local i = s.italic
local n = s.inverse
local uc = s.undercurl
local ul = s.underline
local r = s.reverse
local sto = s.standout
local no = s.NONE
local v = vim

Color.new('pink', "#d291e4")
v.g.colors_name = 'one'
if v.o.background == 'dark' then
    Color.new('mono_1', "#fefefe")
    Color.new('mono_2', "#828997")
    Color.new('mono_3', "#5c6370")
    Color.new('mono_4', "#4b5263")
    Color.new('cyan', "#56b6c2")
    Color.new('blue1', "#61afef")
    Color.new('blue2', "#528bff")
    Color.new('purple1', "#c678dd")
    Color.new('purple2', "#a626a4")
    Color.new('green1', "#98c379")
    Color.new('green2', "#1d6e1d")
    Color.new('red1', "#e06c75")
    Color.new('red2', "#be5046")
    Color.new('light_gold', "#d19a66")
    Color.new('dark_gold', "#e5c07b")
    Color.new('syntax_bg', "#282c34")
    Color.new('syntax_gutter', "#636d83")
    Color.new('syntax_cursor', "#2c323c")
    Color.new('syntax_accent', "#528bff")
    Color.new('vertsplit', "#181a1f")
    Color.new('special_grey', "#3b4048")
    Color.new('visual_grey', "#3e4452")
    Color.new('pmenu', "#333841")
    Color.new('statusline_bg', "#ced2d9")

    v.g.terminal_color_0  = "#828997"
    v.g.terminal_color_8  = "#828997"
    v.g.terminal_color_1  = "#e88388"
    v.g.terminal_color_9  = "#e88388"
    v.g.terminal_color_2  = "#a7cc8c"
    v.g.terminal_color_10 = "#a7cc8c"
    v.g.terminal_color_3  = "#ebca8d"
    v.g.terminal_color_11 = "#ebca8d"
    v.g.terminal_color_4  = "#72bef2"
    v.g.terminal_color_12 = "#72bef2"
    v.g.terminal_color_5  = "#d291e4"
    v.g.terminal_color_13 = "#d291e4"
    v.g.terminal_color_6  = "#65c2cd"
    v.g.terminal_color_14 = "#65c2cd"
    v.g.terminal_color_7  = "#e3e5e9"
    v.g.terminal_color_15 = "#e3e5e9"
    local theme_name = 'onedark'
else
    Color.new('mono_1', "#494b53")
    Color.new('mono_2', "#696c77")
    Color.new('mono_3', "#a0a1a7")
    Color.new('mono_4', "#c2c2c3")
    Color.new('cyan', "#0184bc")
    Color.new('blue1', "#4078f2")
    Color.new('blue2', "#8aaeff")
    Color.new('purple1', "#a626a4")
    Color.new('purple2', "#edb0ff")
    Color.new('green1', "#50a14f")
    Color.new('green2', "#c7edab")
    Color.new('red1', "#ff7569")
    Color.new('red2', "#ca1243")
    Color.new('light_gold', "#986801")
    Color.new('dark_gold', "#c18401")
    Color.new('syntax_bg', "#ffffff")
    Color.new('syntax_gutter', "#9e9e9e")
    Color.new('syntax_cursor', "#f0f0f0")
    Color.new('syntax_accent', "#526fff")
    Color.new('syntax_accent_2', "#0083be")
    Color.new('vertsplit', "#e7e9e1")
    Color.new('special_grey', "#d3d3d3")
    Color.new('visual_grey', "#d0d0d0")
    Color.new('pmenu', "#dfdfdf")
    Color.new('statusline_bg', "#696c77")

    v.g.terminal_color_0  = "#353a44"
    v.g.terminal_color_8  = "#353a44"
    v.g.terminal_color_1  = "#e88388"
    v.g.terminal_color_9  = "#e88388"
    v.g.terminal_color_2  = "#a7cc8c"
    v.g.terminal_color_10 = "#a7cc8c"
    v.g.terminal_color_3  = "#ebca8d"
    v.g.terminal_color_11 = "#ebca8d"
    v.g.terminal_color_4  = "#72bef2"
    v.g.terminal_color_12 = "#72bef2"
    v.g.terminal_color_5  = "#d291e4"
    v.g.terminal_color_13 = "#d291e4"
    v.g.terminal_color_6  = "#65c2cd"
    v.g.terminal_color_14 = "#65c2cd"
    v.g.terminal_color_7  = "#e3e5e9"
    v.g.terminal_color_15 = "#e3e5e9"
    
end

require('lualine').setup{
    options = {
        theme = v.g.colors_name..vim.o.background,

        section_separators = {'', ''},
        component_separators = {'', ''},
        icons_enabled = true,
    },
        sections = {
            lualine_a = { {'mode', upper = true} },
            lualine_b = { {'branch', icon = ''} },
            lualine_c = { {'filename', file_status = true} },
            lualine_x = { 'encoding', 'fileformat', 'filetype' },
            lualine_y = { 'progress' },
            lualine_z = { 'location'  },
            },
            inactive_sections = {
            lualine_a = {  },
            lualine_b = {  },
            lualine_c = { 'filename' },
            lualine_x = { 'location' },
            lualine_y = {  },
            lualine_z = {   }
        },
    extensions = { 'fzf' }
}
----------------------
-- Vim Editor Color --
----------------------

Group.new('Normal',       c.mono_1,       c.syntax_bg,      no)
Group.new('bold',         c.none,         c.none,      b)
Group.new('ColorColumn',  c.none,         c.syntax_cursor,  no)
Group.new('Conceal',      c.mono_4,       c.syntax_bg,      no)
Group.new('Cursor',       c.none,         c.syntax_accent,  no)
Group.new('CursorIM',     c.none,         c.none,      no)
Group.new('CursorColumn', c.none,         c.syntax_cursor,  no)
Group.new('CursorLine',   c.none,         c.syntax_cursor,  no)
Group.new('Directory',    c.blue1,        c.none,      no)
Group.new('ErrorMsg',     c.red1,        c.mono_3,         no)
Group.new('VertSplit',    c.vertsplit,    c.none,      no)
Group.new('Folded',       c.mono_3,       c.mono_3,         no)
Group.new('FoldColumn',   c.mono_3,       c.syntax_cursor,  no)
Group.new('IncSearch',    c.light_gold,        c.mono_1,      no)
Group.new('LineNr',       c.mono_4,       c.none,      no)
Group.new('CursorLineNr', c.mono_1,       c.syntax_cursor,  no)
Group.new('MatchParen',   c.red1,        c.syntax_cursor,  ul + b)
Group.new('Italic',       c.none,         c.none,      i)
Group.new('ModeMsg',      c.mono_1,       c.none,      no)
Group.new('MoreMsg',      c.mono_1,       c.none,      no)
Group.new('NonText',      c.mono_3,       c.none,      no)
Group.new('PMenu',        c.none,         c.pmenu,          no)
Group.new('PMenuSel',     c.none,         c.mono_4,         no)
Group.new('PMenuSbar',    c.none,         c.mono_3,         no)
Group.new('PMenuThumb',   c.none,         c.mono_1,         no)
Group.new('Question',     c.blue1,        c.none,      no)
Group.new('Search',       c.syntax_bg,       c.dark_gold,        no)
Group.new('SpecialKey',   c.special_grey, c.none,      no)
Group.new('Whitespace',   c.special_grey, c.none,      no)
Group.new('StatusLine',   c.syntax_bg,       c.statusline_bg,  no)
Group.new('StatusLineNC', c.syntax_bg,       c.statusline_bg,      no)
Group.new('TabLine',      c.mono_2,       c.visual_grey,    no)
Group.new('TabLineFill',  c.mono_3,       c.visual_grey,    no)
Group.new('TabLineSel',   c.mono_3,       c.blue1,          no)
Group.new('Title',        c.mono_1,       c.none,      b)
Group.new('Visual',       c.none,         c.visual_grey,    no)
Group.new('VisualNOS',    c.none,         c.visual_grey,    no)
Group.new('WarningMsg',   c.red1,        c.none,      no)
Group.new('TooLong',      c.red1,        c.none,      no)
Group.new('WildMenu',     c.mono_1,       c.mono_3,         no)
Group.new('SignColumn',   c.none,         c.none,         no)
Group.new('Special',      c.blue1,        c.none,      no)

---------------------------
-- Vim Help Highlighting --
---------------------------

Group.new('helpCommand',      c.dark_gold,  c.none,  no)
Group.new('helpExample',      c.dark_gold,  c.none,  no)
Group.new('helpHeader',       c.mono_1,   c.none,  b)
Group.new('helpSectionDelim', c.mono_3,   c.none,  no)

----------------------------------
-- Standard Syntax Highlighting --
----------------------------------

Group.new('Comment',        c.mono_3,        c.none, i)
Group.new('Constant',       c.green1,         c.none, no)
Group.new('String',         c.green1,         c.none, no)
Group.new('Character',      c.green1,         c.none, no)
Group.new('Number',         c.light_gold,         c.none, no)
Group.new('Boolean',        c.light_gold,         c.none, no)
Group.new('Float',          c.light_gold,         c.none, no)
Group.new('Identifier',     c.red1,         c.none, no)
Group.new('Function',       c.blue1,         c.none, no)
Group.new('Statement',      c.purple1,         c.none, no)
Group.new('Conditional',    c.purple1,         c.none, no)
Group.new('Repeat',         c.purple1,         c.none, no)
Group.new('Label',          c.purple1,         c.none, no)
Group.new('Operator',       c.syntax_accent, c.none, no)
Group.new('Keyword',        c.red1,         c.none, no)
Group.new('Exception',      c.purple1,         c.none, no)
Group.new('PreProc',        c.dark_gold,       c.none, no)
Group.new('Include',        c.blue1,         c.none, no)
Group.new('Define',         c.purple1,         c.none, no)
Group.new('Macro',          c.purple1,         c.none, no)
Group.new('PreCondit',      c.dark_gold,       c.none, no)
Group.new('Type',           c.dark_gold,       c.none, no)
Group.new('StorageClass',   c.dark_gold,       c.none, no)
Group.new('Structure',      c.dark_gold,       c.none, no)
Group.new('Typedef',        c.dark_gold,       c.none, no)
Group.new('Special',        c.blue1,         c.none, no)
Group.new('SpecialChar',    c.none,          c.none, no)
Group.new('Tag',            c.none,          c.none, no)
Group.new('Delimiter',      c.none,          c.none, no)
Group.new('SpecialComment', c.none,          c.none, no)
Group.new('Debug',          c.none,          c.none, no)
Group.new('Underlined',     c.none,          c.none, ul)
Group.new('Ignore',         c.none,          c.none, no)
Group.new('Error',          c.red1,         c.mono_3,    b)
Group.new('Todo',           c.red,         c.visual_grey,    no)

-----------------------
-- Diff Highlighting --
-----------------------

Group.new('DiffAdd',     c.green1, c.visual_grey, no)
Group.new('DiffChange',  c.light_gold, c.visual_grey, no)
Group.new('DiffDelete',  c.red1, c.visual_grey, no)
Group.new('DiffText',    c.blue1, c.visual_grey, no)
Group.new('DiffAdded',   c.green1, c.visual_grey, no)
Group.new('DiffFile',    c.red1, c.visual_grey, no)
Group.new('DiffNewFile', c.green1, c.visual_grey, no)
Group.new('DiffLine',    c.blue1, c.visual_grey, no)
Group.new('DiffRemoved', c.red1, c.visual_grey, no)

---------------------------
-- Filetype Highlighting --
---------------------------

-- Asciidoc
Group.new('asciidocListingBlock', c.mono_2, c.none, no)

-- Git and git related plugins
Group.new('gitcommitComment',        c.mono_3,                 c.none,              no)
Group.new('gitcommitUnmerged',       c.green1,                  c.none,              no)
Group.new('gitcommitOnBranch',       c.none,                   c.none,              no)
Group.new('gitcommitBranch',         c.purple1,                  c.none,              no)
Group.new('gitcommitDiscardedType',  c.red1,                  c.none,              no)
Group.new('gitcommitSelectedType',   c.green1,                  c.none,              no)
Group.new('gitcommitHeader',         c.none,                   c.none,              no)
Group.new('gitcommitUntrackedFile',  c.cyan,                  c.none,              no)
Group.new('gitcommitDiscardedFile',  c.red1,                  c.none,              no)
Group.new('gitcommitSelectedFile',   c.green1,                  c.none,              no)
Group.new('gitcommitUnmergedFile',   c.dark_gold,                c.none,              no)
Group.new('gitcommitFile',           c.none,                   c.none,              no)
Group.new('gitcommitNoBranch',       g.gitcommitBranch,        g.gitcommitBranch,        g.gitcommitBranch)
Group.new('gitcommitUntracked',      g.gitcommitComment,       g.gitcommitComment,       g.gitcommitComment)
Group.new('gitcommitDiscarded',      g.gitcommitComment,       g.gitcommitComment,       g.gitcommitComment)
Group.new('gitcommitDiscardedArrow', g.gitcommitDiscardedFile, g.gitcommitDiscardedFile, g.gitcommitDiscardedFile)
Group.new('gitcommitSelectedArrow',  g.gitcommitSelectedFile,  g.gitcommitSelectedFile,  g.gitcommitSelectedFile)
Group.new('gitcommitUnmergedArrow',  g.gitcommitUnmergedFile,  g.gitcommitUnmergedFile,  g.gitcommitUnmergedFile)
Group.new('SignifySignAdd',          c.green1,                  c.none,              no)
Group.new('SignifySignChange',       c.dark_gold,                c.none,              no)
Group.new('SignifySignDelete',       c.red1,                  c.none,              no)
Group.new('GitGutterAdd',            g.SignifySignAdd,         g.SignifySignAdd,         g.SignifySignAdd)
Group.new('GitGutterChange',         g.SignifySignChange,      g.SignifySignChange,      g.SignifySignChange)
Group.new('GitGutterDelete',         g.SignifySignDelete,      g.SignifySignDelete,      g.SignifySignDelete)
Group.new('diffAdded',               c.green1,                  c.none,              no)
Group.new('diffRemoved',             c.red1,                  c.none,              no)

-- HTML
Group.new('htmlArg',            c.light_gold,  c.none,     no)
Group.new('htmlTagName',        c.red1,  c.none,     no)
Group.new('htmlTagN',           c.red1,  c.none,     no)
Group.new('htmlSpecialTagName', c.red1,  c.none,     no)
Group.new('htmlTag',            c.mono_2, c.none,     no)
Group.new('htmlEndTag',         c.mono_2, c.none,     no)
Group.new('MatchTag',           c.red1,  c.syntax_cursor, ul + b)

-- JSON
Group.new('jsonCommentError',       c.mono_1, c.none, no)
Group.new('jsonKeyword',            c.red1,  c.none, no)
Group.new('jsonQuote',              c.mono_3, c.none, no)
Group.new('jsonTrailingCommaError', c.red1,  c.none, r)
Group.new('jsonMissingCommaError',  c.red1,  c.none, r)
Group.new('jsonNoQuotesError',      c.red1,  c.none, r)
Group.new('jsonNumError',           c.red1,  c.none, r)
Group.new('jsonString',             c.green1,  c.none, no)
Group.new('jsonBoolean',            c.purple1,  c.none, no)
Group.new('jsonNumber',             c.light_gold,  c.none, no)
Group.new('jsonStringSQError',      c.red1,  c.none, r)
Group.new('jsonSemicolonError',     c.red1,  c.none, r)

-- Markdown
Group.new('markdownUrl',              c.mono_3,  c.none, no)
Group.new('markdownBold',             c.light_gold,   c.none, b)
Group.new('markdownItalic',           c.light_gold,   c.none, b)
Group.new('markdownCode',             c.green1,   c.none, no)
Group.new('markdownCodeBlock',        c.red1,   c.none, no)
Group.new('markdownCodeDelimiter',    c.green1,   c.none, no)
Group.new('markdownHeadingDelimiter', c.red2, c.none, no)
Group.new('markdownH1',               c.red1,   c.none, no)
Group.new('markdownH2',               c.red1,   c.none, no)
Group.new('markdownH3',               c.red1,   c.none, no)
Group.new('markdownH3',               c.red1,   c.none, no)
Group.new('markdownH4',               c.red1,   c.none, no)
Group.new('markdownH5',               c.red1,   c.none, no)
Group.new('markdownH6',               c.red1,   c.none, no)
Group.new('markdownListMarker',       c.red1,   c.none, no)

-- Spelling
Group.new('SpellBad',   c.mono_3, c.none, uc)
Group.new('SpellLocal', c.mono_3, c.none, uc)
Group.new('SpellCap',   c.mono_3, c.none, uc)
Group.new('SpellRare',  c.mono_3, c.none, uc)

-- Vim
Group.new('vimCommand',      c.purple1,  c.none, no)
Group.new('vimCommentTitle', c.mono_3, c.none, b)
Group.new('vimFunction',     c.cyan,  c.none, no)
Group.new('vimFuncName',     c.purple1,  c.none, no)
Group.new('vimHighlight',    c.blue1,  c.none, no)
Group.new('vimLineComment',  c.mono_3, c.none, i)
Group.new('vimParenSep',     c.mono_2, c.none, no)
Group.new('vimSep',          c.mono_2, c.none, no)
Group.new('vimUserFunc',     c.cyan,  c.none, no)
Group.new('vimVar',          c.red1,  c.none, no)

-- Man
Group.new('manTitle',  g.String, g.String,    g.String)
Group.new('manFooter', c.mono_3, c.none, no)

-------------------------
-- Plugin Highlighting --
-------------------------

-- Neovim NERDTree Background fix
Group.new('NERDTreeFile', c.mono_1, c.none, no)

-- Coc.nvim Floating Background fix
Group.new('CocFloating', c.mono_1, c.none, no)
Group.new('NormalFloating', c.mono_1, c.none, no)
-----------------------------
--     LSP Highlighting    --
-----------------------------
Group.new('LspDiagnosticsDefaultError',           c.red1,   c.none,  no)
Group.new('LspDiagnosticsDefaultWarning',         c.dark_gold,   c.none,  no)
Group.new('LspDiagnosticsDefaultInformation',     c.cyan,   c.none,  no)
Group.new('LspDiagnosticsDefaultHint',            c.green1,   c.none,  no)
Group.new('LspDiagnosticsVirtualTextError',       c.red1,   c.none,  no)
Group.new('LspDiagnosticsVirtualTextWarning',     c.dark_gold,   c.none,  no)
Group.new('LspDiagnosticsVirtualTextInformation', c.cyan,   c.none,  no)
Group.new('LspDiagnosticsVirtualTextHint',        c.green1,   c.none,  no)
Group.new('LspDiagnosticsUnderlineError',         c.red1,   c.none,  ul)
Group.new('LspDiagnosticsUnderlineWarning',       c.dark_gold, c.none,  ul)
Group.new('LspDiagnosticsUnderlineInformation',   c.cyan,   c.none,  ul)
Group.new('LspDiagnosticsUnderlineHint',          c.green1,   c.none,  ul)
Group.new('LspDiagnosticsFloatingError',          c.red1,   g.pmenu, ul)
Group.new('LspDiagnosticsFloatingWarning',        c.dark_gold, g.pmenu, ul)
Group.new('LspDiagnosticsFloatingInformation',    c.cyan,   g.pmenu, ul)
Group.new('LspDiagnosticsFloatingHint',           c.green1,   g.pmenu, ul)
Group.new('LspDiagnosticsSignError',              c.red1,   c.none,  no)
Group.new('LspDiagnosticsSignWarning',            c.dark_gold, c.none,  no)
Group.new('LspDiagnosticsSignInformation',        c.cyan,   c.none,  no)
Group.new('LspDiagnosticsSignHint',               c.green1,   c.none,  no)
-----------------------------
-- TreeSitter Highlighting --
-----------------------------
Group.new('TSAnnotation',         c.dark_gold, c.none, no)
Group.new('TSAttribute',          c.cyan, c.none, no)
Group.new('TSBoolean',            c.light_gold, c.none, no)
Group.new('TSCharacter',          c.green1, c.none, no)
Group.new('TSConditional',        c.pink, c.none, no)
Group.new('TSConstant',           c.blue1, c.none, no)
Group.new('TSConstBuiltin',       c.light_gold, c.none, no)
Group.new('TSConstMacro',         c.cyan, c.none, no)
Group.new('TSConstructor',        c.cyan, c.none, no)
Group.new('TSEmphasis',           c.dark_gold, c.none, no)
Group.new('TSError',              c.red1, c.none, no)
Group.new('TSException',          c.pink, c.none, no)
Group.new('TSField',              c.red1, c.none, no)
Group.new('TSFloat',              c.green1, c.none, no)
Group.new('TSFunction',           c.blue1, c.none, no)
Group.new('TSFuncBuiltin',        c.blue1, c.none, no)
Group.new('TSFuncMacro',          c.dark_gold, c.none, no)
Group.new('TSInclude',            c.pink, c.none, no)
Group.new('TSKeyword',            c.pink, c.none, no)
Group.new('TSKeywordFunction',    c.pink, c.none, no)
Group.new('TSKeywordOperator',    c.pink, c.none, no)
Group.new('TSLabel',              c.blue1, c.none, no)
Group.new('TSLiteral',            c.dark_gold, c.none, no)
Group.new('TSMethod',             c.blue1, c.none, no)
Group.new('TSNamespace',          c.pink, c.none, no)
Group.new('TSNumber',             c.light_gold, c.none, no)
Group.new('TSOperator',           c.mono_1, c.none, no)
Group.new('TSParameter',          c.cyan, c.none, no)
Group.new('TSParameterReference', c.cyan, c.none, no)
Group.new('TSProperty',           c.dark_gold, c.none, no)
Group.new('TSPunctBracket',       c.mono_1, c.none, no)
Group.new('TSPunctDelimiter',     c.mono_1, c.none, no)
Group.new('TSPunctSpecial',       c.mono_1, c.none, no)
Group.new('TSRepeat',             c.pink, c.none, no)
Group.new('TSString',             c.green1, c.none, no)
Group.new('TSStringEscape',       c.cyan, c.none, no)
Group.new('TSStringRegex',        c.green1, c.none, no)
Group.new('TSStrong',             c.dark_gold, c.none, no)
Group.new('TSStructure',          c.dark_gold, c.none, no)
Group.new('TSTag',                c.red1, c.none, no)
Group.new('TSTagDelimiter',       c.mono_3, c.none, no)
Group.new('TSText',               c.dark_gold, c.none, no)
Group.new('TSTitle',              c.dark_gold, c.none, no)
Group.new('TSType',               c.blue1, c.none, no)
Group.new('TSTypeBuiltin',        c.blue1, c.none, no)
Group.new('TSUnderline',          c.dark_gold, c.none, no)
Group.new('TSURI',                c.dark_gold, c.none, no)
Group.new('TSVariable',           c.cyan, c.none, no)
Group.new('TSVariableBuiltin',    c.dark_gold, c.none, no)

