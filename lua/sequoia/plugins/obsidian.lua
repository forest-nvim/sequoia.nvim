--- Rosé Pine for Obsidian(epwalsh)
--- https://github.com/epwalsh/obsidian.nvim
---
--- @usage
--- local highlights = require("sequoia.plugins.obsidian")
--- require("obsidian").setup({ ui = {hl_groups = highlights} })

local p = require("sequoia.palette")

return {
	ObsidianBullet = { fg = p.muted },
	ObsidianRefText = { underline = true, fg = p.warm },
	ObsidianDone = { bold = true, fg = p.cloud }
}