--- Rosé baja for Obsidian(epwalsh)
--- https://github.com/epwalsh/obsidian.nvim
---
--- @usage
--- local highlights = require("sequoia.plugins.obsidian")
--- require("obsidian").setup({ ui = {hl_groups = highlights} })

local p = require("sequoia.palette")

return {
	ObsidianBullet = { fg = p.sky },
	ObsidianRefText = { underline = true, fg = p.honey },
	ObsidianDone = { bold = true, fg = p.denim }
}