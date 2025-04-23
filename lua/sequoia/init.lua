-- lua/sequoia/init.lua
local colors = require("sequoia.palette")

local M = {}

function M.setup()
    local highlights = {
        Normal       = { fg = colors.fg, bg = colors.bg },
        Comment      = { fg = colors.comment, italic = true },
        Constant     = { fg = colors.cyan },
        String       = { fg = colors.yellow },
        Function     = { fg = colors.blue },
        Identifier   = { fg = colors.fg },
        Keyword      = { fg = colors.magenta, bold = true },
        Statement    = { fg = colors.magenta },
        Type         = { fg = colors.blue },
        Number       = { fg = colors.red },
        Boolean      = { fg = colors.red },
        Operator     = { fg = colors.white },
        Visual       = { bg = colors.visual },
        Cursor       = { bg = colors.cursor_normal }, -- Default cursor
        CursorIM     = { bg = colors.cursor_insert },
        CursorColumn = {},                            -- Remove default highlight
        CursorLine   = {},                            -- Remove default highlight
        LineNr       = { fg = colors.gray },
        CursorLineNr = { fg = colors.fg, bold = true },
        VertSplit    = { fg = colors.bg },                              -- Make it blend with background
        StatusLine   = { fg = colors.fg, bg = colors.bg, bold = true }, -- More subtle statusline
        StatusLineNC = { fg = colors.gray, bg = colors.bg },
        Pmenu        = { fg = colors.fg, bg = colors.bg },              -- Darker popup menu
        PmenuSel     = { fg = colors.bg, bg = colors.blue },
        PmenuSbar    = { bg = colors.bg },
        PmenuThumb   = { bg = colors.gray },
        Folded       = { fg = colors.gray, bg = colors.bg },
        SignColumn   = { bg = colors.bg },
        EndOfBuffer  = { fg = colors.bg }, -- Hide the '~' at the end
    }

    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end

    -- Set the terminal colors to match (optional, but nice for consistency)
    vim.cmd("hi Normal guibg=" .. colors.bg .. " guifg=" .. colors.fg)
    vim.cmd("hi NonText guibg=" .. colors.bg .. " guifg=" .. colors.gray)
end

return M
