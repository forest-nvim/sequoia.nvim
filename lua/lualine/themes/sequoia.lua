local p = require("sequoia.palette")
local config = require("sequoia.config")

local bg_base = p.base
if config.options.styles.transparency then
	bg_base = "NONE"
end

return {
	normal = {
		a = { bg = p.canopy, fg = p.base, gui = "bold" },
		b = { bg = p.overlay, fg = p.canopy },
		c = { bg = bg_base, fg = p.text },
	},
	insert = {
		a = { bg = p.cloud, fg = p.base, gui = "bold" },
		b = { bg = p.overlay, fg = p.cloud },
		c = { bg = bg_base, fg = p.text },
	},
	visual = {
		a = { bg = p.warm, fg = p.base, gui = "bold" },
		b = { bg = p.overlay, fg = p.warm },
		c = { bg = bg_base, fg = p.text },
	},
	replace = {
		a = { bg = p.pine, fg = p.base, gui = "bold" },
		b = { bg = p.overlay, fg = p.pine },
		c = { bg = bg_base, fg = p.text },
	},
	command = {
		a = { bg = p.bark, fg = p.base, gui = "bold" },
		b = { bg = p.overlay, fg = p.bark },
		c = { bg = bg_base, fg = p.text },
	},
	inactive = {
		a = { bg = bg_base, fg = p.muted, gui = "bold" },
		b = { bg = bg_base, fg = p.muted },
		c = { bg = bg_base, fg = p.muted },
	},
}