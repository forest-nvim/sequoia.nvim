-- lua/sequoia/init.lua
local colors = require("sequoia.palette")

local M = {}

function M.setup()
    local highlights = {
        Normal       = { fg = colors.fg, bg = colors.bg },
        Comment      = { fg = colors.gray, italic = true },
        Constant     = { fg = colors.cyan },
        String       = { fg = colors.yellow },
        Function     = { fg = colors.blue },
        Identifier   = { fg = colors.fg },
        Keyword      = { fg = colors.magenta },
        Statement    = { fg = colors.magenta },
        Type         = { fg = colors.blue },
        Number       = { fg = colors.red },
        Boolean      = { fg = colors.red },
        Operator     = { fg = colors.white },
        Visual       = { bg = colors.visual },
        Cursor       = { fg = colors.bg, bg = colors.cursor },
        LineNr       = { fg = colors.gray },
        CursorLineNr = { fg = colors.white },
        VertSplit    = { fg = colors.gray },
        StatusLine   = { fg = colors.fg, bg = colors.black },
        Pmenu        = { fg = colors.fg, bg = colors.black },
        PmenuSel     = { fg = colors.bg, bg = colors.gray },
    }

    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M
