-- lua/sequoia/init.lua
local colors = require("sequoia.palette")

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
    Cursor       = { fg = colors.bg, bg = colors.cursor },
    LineNr       = { fg = colors.gray },
    CursorLineNr = { fg = colors.white, bold = true },
    VertSplit    = { fg = colors.gray },
    StatusLine   = { fg = colors.fg, bg = colors.black },
    Pmenu        = { fg = colors.fg, bg = colors.gray },
    PmenuSel     = { fg = colors.bg, bg = colors.blue },
}

for group, opts in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, opts)
end
