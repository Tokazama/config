
local cortex = {}

if vim.o.background == 'dark' then
    cortex.grey_1        = '#abb2bf';
    cortex.grey_2        = '#828997';
    cortex.grey_3        = '#5c6370';
    cortex.grey_4        = '#4b5263';
    cortex.grey_5        = '#353a46';

    cortex.red_1         = '#e06c75';
    cortex.red_2         = '#be5046';
    cortex.orange_1      = '#d19a66';
    cortex.orange_2      = '#e5c07b';
    cortex.cyan          = '#56b6c2';
    cortex.blue_1        = '#61afef';
    cortex.purple        = '#c678dd';
    cortex.green_1       = '#98c379';
    cortex.brown         = '#c78665';
    cortex.cursor_bg     = '#4f5b66';

    cortex.syntax_fg     = '#abb2bf';
    cortex.syntax_bg     = '#1b1d21'; -- 282c34

    cortex.syntax_cursor = '#f0f0f0';
    cortex.none          = 'NONE';
    cortex.syntax_cursor = '#2c323c';
else
    cortex.grey_1        = '#494b53';
    cortex.grey_2        = '#696c77';
    cortex.grey_3        = '#a0a1a7';
    cortex.grey_4        = '#e1e1e3';
    cortex.grey_5        = '#f9f9f9';

    cortex.red_1         = '#e45649';
    cortex.red_2         = '#ca1243';
    cortex.orange_1      = '#e36209';
    cortex.orange_2      = '#c18401';
    cortex.green_1       = '#22863a';
    cortex.cyan          = '#0184bc';
    cortex.blue_1        = '#1149c2';
    cortex.blue_2        = '#032f62';
    cortex.purple        = '#a626a4';


    cortex.brown         = '#754a3b';
    cortex.yellow        = '#e8d525';
    cortex.cursor_bg     = '#4f5b66';
    cortex.syntax_fg     = '#000000';
    cortex.syntax_bg     = '#ffffff';
    cortex.syntax_cursor = '#f0f0f0';
    cortex.none          = 'NONE';
end

function cortex.terminal_color()
    vim.g.terminal_color_0 = cortex.syntax_bg
    vim.g.terminal_color_1 = cortex.red_1
    vim.g.terminal_color_2 = cortex.green_1
    vim.g.terminal_color_3 = cortex.yellow
    vim.g.terminal_color_4 = cortex.blue_1
    vim.g.terminal_color_5 = cortex.purple
    vim.g.terminal_color_6 = cortex.cyan
    vim.g.terminal_color_7 = cortex.syntax_bg
    vim.g.terminal_color_8 = cortex.brown
    vim.g.terminal_color_9 = cortex.red_1
    vim.g.terminal_color_10 = cortex.green_1
    vim.g.terminal_color_11 = cortex.yellow
    vim.g.terminal_color_12 = cortex.blue_1
    vim.g.terminal_color_13 = cortex.purple
    vim.g.terminal_color_14 = cortex.cyan
    vim.g.terminal_color_15 = cortex.syntax_fg
end

function cortex.load_syntax()
    local syntax = {
        Normal       = {fg=cortex.syntax_fg, bg=cortex.syntax_bg};
        Terminal     = {fg=cortex.syntax_fg, bg=cortex.syntax_bg};
        SignColumn   = {fg=cortex.syntax_fg, bg=cortex.syntax_bg};
        FoldColumn   = {fg=cortex.grey_4,    bg=cortex.grey_1};
        VertSplit    = {fg=cortex.black,     bg=cortex.syntax_bg};
        Folded       = {fg=cortex.grey_3,    bg=cortex.grey_4};
        EndOfBuffer  = {fg=cortex.syntax_bg, bg=cortex.none};
        IncSearch    = {fg=cortex.none,      bg=cortex.grey_4, style=cortex.none};
        Search       = {fg=cortex.none,      bg=cortex.grey_4};
        Conceal      = {fg=cortex.grey_3,    bg=cortex.none};
        Cursor       = {fg=cortex.none,      bg=cortex.none,style='reverse'};
        vCursor      = {fg=cortex.none,      bg=cortex.none,style='reverse'};
        iCursor      = {fg=cortex.none,      bg=cortex.none,style='reverse'};
        lCursor      = {fg=cortex.none,      bg=cortex.none,style='reverse'};
        CursorIM     = {fg=cortex.none,      bg=cortex.none,   style='reverse'};


        -- Standard syntax highlighting
        Comment        = {fg=cortex.grey_3};
        Constant       = {fg=cortex.green_1};
        Character      = {fg=cortex.red_1};
        Number         = {fg=cortex.orange_1};
        Boolean        = {fg=cortex.orange_1};
        Float          = {fg=cortex.orange_1};
        String         = {fg=cortex.orange_1};
        Function       = {fg=cortex.blue_1};

        Directory    = { fg = hue_2 },

        ColorColumn  = {fg=cortex.none, bg=cortex.grey_4};
        CursorColumn = {fg=cortex.grey_3};
        CursorLine   = {fg=cortex.grey_3};
        LineNr       = {fg=cortex.grey_3};
        qfLineNr     = {fg=cortex.cyan};
        CursorLineNr = {fg=cortex.blue_1};
        DiffAdd      = {fg=cortex.green_1};
        DiffChange   = {fg=cortex.orange_1};
        DiffDelete   = {fg=cortex.red_1};
        DiffText     = {fg=cortex.syntax_fg};

        Define       = {fg=cortex.purple};

        ErrorMsg     = {fg=cortex.red_1,     bg=cortex.none,style='bold'};
        WarningMsg   = {fg=cortex.yellow,    bg=cortex.none,style='bold'};
        ModeMsg      = {fg=cortex.syntax_fg, bg=cortex.none,style='bold'};
        MatchParen   = {fg=cortex.none,      bg=cortex.grey_4};
        NonText      = {fg=cortex.syntax_bg};
        Whitespace   = {fg=cortex.syntax_bg};
        SpecialKey   = {fg=cortex.syntax_bg};

        --PmenuSelBold = {fg=cortex.syntax_fg, bg=cortex.blue_1};
        Pmenu        = {fg=cortex.syntax_fg, bg=cortex.grey_4};
        PmenuSel     = {fg=cortex.syntax_fg, bg=cortex.grey_5};
        PmenuSbar    = {fg=cortex.none,      bg=cortex.grey_5};
        PmenuThumb   = {fg=cortex.purple,    bg=cortex.grey_1};
        WildMenu     = {fg=cortex.syntax_fg, bg=cortex.green_1};
        Question     = {fg=cortex.yellow};
        Title        = {fg=cortex.syntax_fg};

        --[[
        NormalFloat = {fg=cortex.base8,bg=cortex.syntax_bg};
        Tabline = {fg=cortex.base6,bg=cortex.base2};
        TabLineFill = {style=cortex.none};
        TabLineSel = {fg=cortex.syntax_fg,bg=cortex.blue_1};
        StatusLine = {fg=cortex.base8,bg=cortex.base2,style=cortex.none};
        StatusLineNC = {fg=cortex.grey,bg=cortex.base2,style=cortex.none};
        ]]--
        SpellBad          = {fg=cortex.red_1,  bg=cortex.none,style='undercurl'};
        SpellCap          = {fg=cortex.blue_1, bg=cortex.none,style='undercurl'};
        SpellLocal        = {fg=cortex.cyan,   bg=cortex.none,style='undercurl'};
        SpellRare         = {fg=cortex.purple, bg=cortex.none,style = 'undercurl'};
        Visual            = {bg=cortex.grey_4};
        VisualNOS         = {fg=cortex.none,   bg=cortex.syntax_bg};
        QuickFixLine      = {fg=cortex.purple,style='bold'};
        Debug             = {fg=cortex.orange_1};
        debugBreakpoint   = {fg=cortex.syntax_bg,bg=cortex.red_1};

        juliaImportLine   = {fg=cortex.red_1};
        juliaKeywordItems = {fg=cortex.red_1};
    }
    return syntax
end

function cortex.load_plugin_syntax()
    local plugin_syntax = {
        vimLet        = {fg=cortex.orange_1};
        vimVar        = {fg=cortex.cyan};
        vimFunction   = {fg=cortex.red_2};
        vimIsCommand  = {fg=cortex.syntax_fg};
        vimCommand    = {fg=cortex.blue_1};
        vimNotFunc    = {fg=cortex.purple, style='bold'};
        vimUserFunc   = {fg=cortex.yellow, style='bold'};
        vimFuncName   = {fg=cortex.yellow, style='bold'};

        diffAdded     = {fg = cortex.green_1};
        diffRemoved   = {fg = cortex.red_1};
        diffChanged   = {fg = cortex.orange_1};
        diffOldFile   = {fg = cortex.yellow};
        diffNewFile   = {fg = cortex.orange_1};
        diffFile      = {fg = cortex.aqua};
        diffLine      = {fg = cortex.grey_3};
        diffIndexLine = {fg = cortex.purple};

        gitcommitSummary = {fg = cortex.red_1};
        gitcommitUntracked = {fg = cortex.grey_3};
        gitcommitDiscarded = {fg = cortex.grey_3};
        gitcommitSelected = { fg=cortex.grey_3};
        gitcommitUnmerged = { fg=cortex.grey_3};
        gitcommitOnBranch = { fg=cortex.grey_3};
        gitcommitArrow  = {fg = cortex.grey_3};
        gitcommitFile  = {fg = cortex.dark_green_1};

        markdownUrl              = { fg = cortex.grey_3, stlye = 'underline' },
        markdownBold             = { fg = cortex.orange_1, style = 'bold' },
        markdownItalic           = { fg = cortex.orange_1, style = 'italic' },
        markdownCode             = { fg = cortex.green_1 },
        markdownCodeBlock        = { fg = cortex.red_1 },
        markdownCodeDelimiter    = { fg = cortex.green_1 },
        markdownHeadingDelimiter = { fg = cortex.red_2 },
        markdownH1               = { fg = cortex.red_1 },
        markdownH2               = { fg = cortex.red_1 },
        markdownH3               = { fg = cortex.red_1 },
        markdownH3               = { fg = cortex.red_1 },
        markdownH4               = { fg = cortex.red_1 },
        markdownH5               = { fg = cortex.red_1 },
        markdownH6               = { fg = cortex.red_1 },
        markdownListMarker       = { fg = cortex.red_1 },

        GitGutterAdd          = {fg=cortex.green_1};
        GitGutterChange       = {fg=cortex.blue_1};
        GitGutterDelete       = {fg=cortex.red_1};
        GitGutterChangeDelete = {fg=cortex.purple};

        GitSignsAdd = {fg=cortex.dark_green_1};
        GitSignsChange = {fg=cortex.blue_1};
        GitSignsDelete = {fg=cortex.red_1};
        GitSignsAddNr = {fg=cortex.dark_green_1};
        GitSignsChangeNr = {fg=cortex.blue_1};
        GitSignsDeleteNr = {fg=cortex.red_1};
        GitSignsAddLn = {bg=cortex.selected};
        GitSignsChangeLn = {bg=cortex.blue_1};
        GitSignsDeleteLn = {bg=cortex.syntax_bg};

        SignifySignAdd = {fg=cortex.dark_green_1};
        SignifySignChange = {fg=cortex.blue_1};
        SignifySignDelete = {fg=cortex.red_1};

        dbui_tables = {fg=cortex.blue_1};

        LspDiagnosticsSignError = {fg=cortex.red_2};
        LspDiagnosticsSignWarning = {fg=cortex.orange_1};
        LspDiagnosticsSignInformation = {fg=cortex.blue_1};
        LspDiagnosticsSignHint = {fg=cortex.cyan};

        LspDiagnosticsVirtualTextError = {fg=cortex.red_2};
        LspDiagnosticsVirtualTextWarning= {fg=cortex.orange_1};
        LspDiagnosticsVirtualTextInformation = {fg=cortex.blue_1};
        LspDiagnosticsVirtualTextHint = {fg=cortex.cyan};

        LspDiagnosticsUnderlineError = {style="undercurl",sp=cortex.red_2};
        LspDiagnosticsUnderlineWarning = {style="undercurl",sp=cortex.orange_1};
        LspDiagnosticsUnderlineInformation = {style="undercurl",sp=cortex.blue_1};
        LspDiagnosticsUnderlineHint = {style="undercurl",sp=cortex.cyan};

        CursorWord0 = {bg=cortex.cursor_bg};
        CursorWord1 = {bg=cortex.cursor_bg};

        NvimTreeFolderName =  {fg=cortex.blue_1};
        NvimTreeRootFolder =  {fg=cortex.red_1, style='bold'};
        NvimTreeSpecialFile = {fg=cortex.syntax_fg,  bg=cortex.none, style='NONE'};

        --[[
        TelescopeBorder = {fg=cortex.cyan};
        TelescopePromptBorder = {fg=cortex.selected};
        TelescopeMatching = {fg=cortex.cyan};
        TelescopeSelection = {fg=cortex.orange_2, bg=cortex.selected, style='bold'};
        TelescopeSelectionCaret = {fg=cortex.syntax_fg};
        TelescopeMultiSelection = {fg=cortex.cyan};
        ]]--

        --[[

        TSTitle              = {fg=cortex.brown};
        TSText               = {fg=cortex.syntax_fg, bg=cortex.syntax_bg};
        ]]--

        TSStrike             = {style='strikethrough'};
        TSEmphasis           = {style='italic'};
        TSStrong             = {style='bold'};
        TSUnderline          = {style='underline'};

        TSPunctSpecial       = {fg=cortex.syntax_fg};

        TSAttribute          = {fg=cortex.cyan};

        TSConditional        = {fg=cortex.purple};
        TSFuncMacro          = {fg=cortex.purple};
        TSInclude            = {fg=cortex.red_1};
        TSLabel              = {fg=cortex.red_1};
        TSNamespace          = {fg=cortex.orange_1};
        TSNone               = {fg=cortex.grey_3};
        TSRepeat             = {fg=cortex.purple};

        -- Identifier
        TSParameter          = {fg=cortex.red_1};
        TSParameterReference = {fg=cortex.cyan};
        TSField              = {fg=cortex.cyan};
        TSProperty           = {fg=cortex.cyan};
        TSSymbol             = {fg=cortex.cyan};

        -- Delimiters
        TSPunctDelimiter     = {fg=cortex.syntax_fg};
        TSPunctBracket       = {fg=cortex.grey_1};
        TSPunctSpecial       = {fg=cortex.grey_1};

        TSTagDelimiter       = {fg=cortex.red_1};
        TSTagAttribute       = {fg=cortex.cyan};
        TSTag                = {fg=cortex.red_1};

        -- Constant
        --TSConstant           = {fg=cortex.orange_1};
        TSTextReference      = {fg=cortex.orange_1};

        -- Special
        TSConstBuiltin       = {fg=cortex.orange_1};
        TSFuncBuiltin        = {fg=cortex.cyan};
        TSConstructor        = {fg=cortex.orange_2};
        TSVariableBuiltin    = {fg=cortex.red_1};

        -- Define
        TSConstMacro         = {fg=cortex.orange_1};

        -- String
        TSLiteral            = {fg=cortex.green_1};
        TSString             = {fg=cortex.green_1};
        TSStringRegex        = {fg=cortex.orange_1};

        -- SpecialChar
        TSStringEscape       = {fg=cortex.red_1};
        TSStringSpecial      = {fg=cortex.red_1};


        -- Function
        TSFunction           = {fg=cortex.blue_1};
        TSMethod             = {fg=cortex.blue_1};

        -- Keyword
        TSOperator           = {fg=cortex.red_1};
        TSKeyword            = {fg=cortex.red_1};
        TSKeywordOperator    = {fg=cortex.purple};
        TSKeywordFunction    = {fg=cortex.red_1};
        TSKeywordReturn      = {fg=cortex.red_1};

        -- Type
        TSType               = {fg=cortex.orange_2};
        TSTypeBuiltin        = {fg=cortex.orange_1};
        TSEnvironmentName    = {fg=cortex.orange_1};
        TSURI                = {fg=cortex.purple};
        TSMath               = {fg=cortex.purple};
        TSEnviroment         = {fg=cortex.purple};
        TSEnviromentName     = {fg=cortex.purple};
        TSNote               = {fg=cortex.grey_3};
        TSAnnotation         = {fg=cortex.syntax_fg};
        TSError              = {fg=cortex.red_2};
        TSException          = {fg=cortex.red_2};
        TSWarning            = {fg=cortex.red_2};
        TSDanger             = {fg=cortex.orange_2};
        TSVariable           = {fg=cortex.syntax_fg};
    }
    return plugin_syntax
end

function cortex.highlight(group, color)
    local style = color.style and 'gui=' .. color.style or 'gui=NONE'
    local fg = color.fg and 'guifg=' .. color.fg or 'guifg=NONE'
    local bg = color.bg and 'guibg=' .. color.bg or 'guibg=NONE'
    local sp = color.sp and 'guisp=' .. color.sp or ''
    vim.api.nvim_command('highlight ' .. group .. ' ' .. style .. ' ' .. fg ..
                             ' ' .. bg..' '..sp)
end

function cortex.colorscheme()
  vim.api.nvim_command('hi clear')
  if vim.fn.exists('syntax_on') then
    vim.api.nvim_command('syntax reset')
  end
  vim.o.termguicolors = true
  vim.g.colors_name = 'cortex'

  cortex.terminal_color()
  for group,colors in pairs(cortex.load_syntax()) do
        cortex.highlight(group,colors)
  end

  for group,colors in pairs(cortex.load_plugin_syntax()) do
        cortex.highlight(group,colors)
  end

end

cortex.colorscheme()

return cortex

