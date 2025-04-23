-- lua/sequoia/init.lua
local colors = require("sequoia.palette")

local M = {}

function M.setup()
    local highlights = {
        Normal       = { fg = colors.fg, bg = colors.bg },
        Comment      = { fg = colors.light_gray, italic = true },
        Constant     = { fg = colors.orange },
        String       = { fg = colors.string },
        Function     = { fg = colors.light_gray },
        Identifier   = { fg = colors.fg },
        Keyword      = { fg = colors.green },
        Statement    = { fg = colors.green },
        Type         = { fg = colors.light_gray },
        Number       = { fg = colors.orange },
        Boolean      = { fg = colors.orange },
        Operator     = { fg = colors.white },
        Visual       = { bg = colors.dark_gray },
        Cursor       = { fg = colors.bg, bg = colors.cursor },
        LineNr       = { fg = colors.gray },
        CursorLineNr = { fg = colors.white },
        VertSplit    = { fg = colors.dark_gray },
        StatusLine   = { fg = colors.fg, bg = colors.black },
        Pmenu        = { fg = colors.fg, bg = colors.black },
        PmenuSel     = { fg = colors.bg, bg = colors.gray },
    }

    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M
