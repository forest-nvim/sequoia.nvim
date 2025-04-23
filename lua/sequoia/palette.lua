local options = require("sequoia.config").options
local variants = {
	main = {	--Modeling Jetbrains Fleet
    _nc = "#1B1D23",
	base = "#1B1D23",
	surface = "#22252B",
	overlay = "#2B2F36",
	muted = "#3A3F4B",
	subtle = "#4C5263",
	text = "#E5E5E5",
	bark = "#FF5C57",
	autumn = "#F3B562",
	canopy = "#C586C0",
	pine = "#9CCF8D",
	cloud = "#70CAD1",
	warm = "#D99C66",
	leaf = "#61AFEF",
	highlight_low = "#1B1D23",
	highlight_med = "#22252B",
	highlight_high = "#2B2F36",
	none = "NONE",
	},
	night = { --Modeling Sequoia from VSC
	_nc = "#080808",
	base = "#080808",
	surface = "#0f0f0f",
	overlay = "#141414",
	muted = "#2a2a2a",
	subtle = "#3a3a3a",
	text = "#f2f2f2",
	bark = "#5ad6ff",
	warm = "#5ad6ff",
	cloud = "#444444",
	leaf = "#3a3a3a",
	highlight_low = "#080808",
	highlight_med = "#0f0f0f",
	highlight_high = "#141414",
	none = "NONE",
	},
	rise = { --warm, sunrise
		_nc = "#1a1517",
		base = "#1a1517",
		surface = "#231c1f",
		overlay = "#2a2123",
		muted = "#382c2f",
		subtle = "#453539",
		text = "#e4d5d8",
		bark = "#ff7b89",
		autumn = "#ffa06b",
		canopy = "#f5c4bc",
		pine = "#b4846c",
		cloud = "#dba2a7",
		warm = "#e8b195",
		leaf = "#c7977f",
		highlight_low = "#1a1517",
		highlight_med = "#231c1f",
		highlight_high = "#2a2123",
		none = "NONE",
	},
}

if options.palette ~= nil and next(options.palette) then
	-- handle variant specific overrides
	for variant_name, override_palette in pairs(options.palette) do
		if variants[variant_name] then
			variants[variant_name] = vim.tbl_extend("force", variants[variant_name], override_palette or {})
		end
	end
end

if variants[options.variant] ~= nil then
	return variants[options.variant]
end

return vim.o.background == "light" and variants.rise or variants[options.dark_variant or "main"]