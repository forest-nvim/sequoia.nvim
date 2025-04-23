local p = require("sequoia.palette")
local config = require("sequoia.config")

local bg_base = p.base
if config.options.styles.transparency then
	bg_base = "NONE"
end

return {
	normal = {
		a = { bg = p.surface, fg = p.canopy, gui = "bold" },
		b = { bg = p.surface, fg = p.text },
		c = { bg = p.surface, fg = p.subtle, gui = "italic" },
	},
	insert = {
		a = { bg = p.surface, fg = p.cloud, gui = "bold" },
	},
	visual = {
		a = { bg = p.surface, fg = p.warm, gui = "bold" },
	},
	replace = {
		a = { bg = p.surface, fg = p.pine, gui = "bold" },
	},
	command = {
		a = { bg = p.surface, fg = p.bark, gui = "bold" },
	},
	inactive = {
		a = { bg = bg_base, fg = p.subtle, gui = "bold" },
		b = { bg = bg_base, fg = p.subtle },
		c = { bg = bg_base, fg = p.subtle, gui = "italic" },
	},
}