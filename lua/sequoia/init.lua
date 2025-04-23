-- lua/sequoia/init.lua
local colors = require("sequoia.palette")
local M = {}

function M.setup()
    local highlights = {
        -- Editor
        Normal             = { fg = colors.fg, bg = colors.bg },
        NormalFloat        = { fg = colors.fg, bg = colors.bg_subtle },
        Cursor             = { fg = colors.bg, bg = colors.cursor_normal },
        CursorLine         = { bg = colors.highlight },
        CursorColumn       = { bg = colors.highlight },
        LineNr             = { fg = colors.muted },
        CursorLineNr       = { fg = colors.fg_muted, bold = true },
        VertSplit          = { fg = colors.border },
        SignColumn         = { bg = colors.bg },
        ColorColumn        = { bg = colors.highlight },
        Folded             = { fg = colors.fg_muted, bg = colors.highlight },
        FoldColumn         = { fg = colors.muted },

        -- Search and highlights
        Search             = { fg = colors.bg, bg = colors.secondary },
        IncSearch          = { fg = colors.bg, bg = colors.primary },
        Visual             = { bg = colors.selection },
        VisualNOS          = { bg = colors.selection },
        MatchParen         = { fg = colors.primary, bold = true },

        -- Status elements
        StatusLine         = { fg = colors.fg, bg = colors.bg_subtle },
        StatusLineNC       = { fg = colors.fg_muted, bg = colors.border },
        WildMenu           = { fg = colors.bg, bg = colors.primary },

        -- Popup menus
        Pmenu              = { fg = colors.fg, bg = colors.bg_subtle },
        PmenuSel           = { fg = colors.bg, bg = colors.primary },
        PmenuSbar          = { bg = colors.muted },
        PmenuThumb         = { bg = colors.fg_muted },

        -- Messages
        ErrorMsg           = { fg = colors.danger },
        WarningMsg         = { fg = colors.warning },
        MoreMsg            = { fg = colors.info },
        Question           = { fg = colors.primary },

        -- Syntax
        Comment            = { fg = colors.fg_muted, italic = true },
        Constant           = { fg = colors.secondary },
        String             = { fg = colors.success },
        Character          = { fg = colors.success },
        Number             = { fg = colors.warning },
        Boolean            = { fg = colors.warning },
        Float              = { fg = colors.warning },
        Identifier         = { fg = colors.fg },
        Function           = { fg = colors.primary },
        Statement          = { fg = colors.primary_dark },
        Conditional        = { fg = colors.primary_dark },
        Repeat             = { fg = colors.primary_dark },
        Label              = { fg = colors.primary },
        Operator           = { fg = colors.fg },
        Keyword            = { fg = colors.primary_dark, bold = true },
        Exception          = { fg = colors.danger },
        PreProc            = { fg = colors.info },
        Include            = { fg = colors.info },
        Define             = { fg = colors.info },
        Macro              = { fg = colors.info },
        PreCondit          = { fg = colors.info },
        Type               = { fg = colors.secondary },
        StorageClass       = { fg = colors.primary },
        Structure          = { fg = colors.secondary },
        Typedef            = { fg = colors.secondary },
        Special            = { fg = colors.primary },
        SpecialChar        = { fg = colors.warning },
        Tag                = { fg = colors.primary },
        Delimiter          = { fg = colors.fg },
        SpecialComment     = { fg = colors.muted, italic = true },
        Debug              = { fg = colors.warning },
        Underlined         = { underline = true },
        Error              = { fg = colors.danger },
        Todo               = { fg = colors.bg, bg = colors.warning },

        -- Diff
        DiffAdd            = { fg = colors.success, bg = colors.bg },
        DiffChange         = { fg = colors.warning, bg = colors.bg },
        DiffDelete         = { fg = colors.danger, bg = colors.bg },
        DiffText           = { fg = colors.info, bg = colors.bg },

        -- Modes
        ModeMsg            = { fg = colors.fg, bold = true },
        ModeNormal         = { fg = colors.fg, bg = colors.cursor_normal },
        ModeInsert         = { fg = colors.bg, bg = colors.cursor_insert },
        ModeVisual         = { fg = colors.bg, bg = colors.cursor_visual },
        ModeReplace        = { fg = colors.bg, bg = colors.cursor_replace },

        -- Treesitter (optional)
        ["@variable"]      = { fg = colors.fg },
        ["@function"]      = { fg = colors.primary },
        ["@function.call"] = { fg = colors.primary },
        ["@keyword"]       = { fg = colors.primary_dark, bold = true },
        ["@string"]        = { fg = colors.success },
        ["@number"]        = { fg = colors.warning },
        ["@comment"]       = { fg = colors.fg_muted, italic = true },
        ["@operator"]      = { fg = colors.fg },
        ["@punctuation"]   = { fg = colors.fg_muted },
    }

    -- Apply all highlights
    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end

    -- Set terminal colors
    vim.g.terminal_color_0  = colors.bg
    vim.g.terminal_color_1  = colors.danger
    vim.g.terminal_color_2  = colors.success
    vim.g.terminal_color_3  = colors.warning
    vim.g.terminal_color_4  = colors.info
    vim.g.terminal_color_5  = colors.primary
    vim.g.terminal_color_6  = colors.secondary
    vim.g.terminal_color_7  = colors.fg_muted
    vim.g.terminal_color_8  = colors.border
    vim.g.terminal_color_9  = colors.danger
    vim.g.terminal_color_10 = colors.success
    vim.g.terminal_color_11 = colors.warning
    vim.g.terminal_color_12 = colors.info
    vim.g.terminal_color_13 = colors.primary
    vim.g.terminal_color_14 = colors.secondary
    vim.g.terminal_color_15 = colors.fg
end

return M
