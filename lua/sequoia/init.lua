-- lua/sequoia/init.lua
local colors = require("sequoia.palette")
local highlights = require("sequoia.highlights")

local M = {}

function M.setup()
    local all_highlights = {}

    -- Merge all highlight groups
    for _, section in pairs(highlights) do
        for group, opts in pairs(section) do
            all_highlights[group] = opts
        end
    end

    -- Apply all highlights
    for group, opts in pairs(all_highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end

    -- Set terminal colors
    vim.g.terminal_color_0 = colors.black
    vim.g.terminal_color_1 = colors.red
    vim.g.terminal_color_2 = colors.green
    vim.g.terminal_color_3 = colors.yellow
    vim.g.terminal_color_4 = colors.blue
    vim.g.terminal_color_5 = colors.magenta
    vim.g.terminal_color_6 = colors.cyan
    vim.g.terminal_color_7 = colors.white
    vim.g.terminal_color_8 = colors.gray
    vim.g.terminal_color_9 = colors.orange
    vim.g.terminal_color_10 = colors.green
    vim.g.terminal_color_11 = colors.yellow
    vim.g.terminal_color_12 = colors.blue
    vim.g.terminal_color_13 = colors.magenta
    vim.g.terminal_color_14 = colors.cyan
    vim.g.terminal_color_15 = colors.white
end

return M
