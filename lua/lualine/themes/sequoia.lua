local p = require("sequoia.palette")
local config = require("sequoia.config")

local bg_base = p.base
if config.options.styles.transparency then
	bg_base = "NONE"
end

return {
	normal = {
		a = { bg = p.sun, fg = p.base, gui = "bold" },
		b = { bg = p.overlay, fg = p.sun },
		c = { bg = bg_base, fg = p.text },
	},
	insert = {
		a = { bg = p.denim, fg = p.base, gui = "bold" },
		b = { bg = p.overlay, fg = p.denim },
		c = { bg = bg_base, fg = p.text },
	},
	visual = {
		a = { bg = p.honey, fg = p.base, gui = "bold" },
		b = { bg = p.overlay, fg = p.honey },
		c = { bg = bg_base, fg = p.text },
	},
	replace = {
		a = { bg = p.baja, fg = p.base, gui = "bold" },
		b = { bg = p.overlay, fg = p.baja },
		c = { bg = bg_base, fg = p.text },
	},
	command = {
		a = { bg = p.lavendar, fg = p.base, gui = "bold" },
		b = { bg = p.overlay, fg = p.lavendar },
		c = { bg = bg_base, fg = p.text },
	},
	inactive = {
		a = { bg = bg_base, fg = p.sky, gui = "bold" },
		b = { bg = bg_base, fg = p.sky },
		c = { bg = bg_base, fg = p.sky },
	},
}

