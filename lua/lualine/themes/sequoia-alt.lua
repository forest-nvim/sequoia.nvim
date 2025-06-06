local p = require("sequoia.palette")
local config = require("sequoia.config")

local bg_base = p.base
if config.options.styles.transparency then
	bg_base = "NONE"
end

return {
	normal = {
		a = { bg = p.surface, fg = p.sun, gui = "bold" },
		b = { bg = p.surface, fg = p.text },
		c = { bg = p.surface, fg = p.subtle, gui = "italic" },
	},
	insert = {
		a = { bg = p.surface, fg = p.denim, gui = "bold" },
	},
	visual = {
		a = { bg = p.surface, fg = p.honey, gui = "bold" },
	},
	replace = {
		a = { bg = p.surface, fg = p.baja, gui = "bold" },
	},
	command = {
		a = { bg = p.surface, fg = p.lavendar, gui = "bold" },
	},
	inactive = {
		a = { bg = bg_base, fg = p.subtle, gui = "bold" },
		b = { bg = bg_base, fg = p.subtle },
		c = { bg = bg_base, fg = p.subtle, gui = "italic" },
	},
}