local options = require("sequoia.config").options
local variants = {
	main = {
		_nc = "#171717", -- nearly black with a hint of blue
		base = "#171717", -- soft black base
		surface = "#222222", -- a touch lighter for card surfaces
		overlay = "#303030", -- overlay layers
		muted = "#38E8F2", -- neutral 700
		subtle = "#4b4b4b", -- soft steel for less prominent text, used for comments
		text = "#fafafa", -- crisp, neon-white text
		bark = "#c084fc", -- lavender
		autumn = "#f0abfc", --fuscia
		canopy = "#fde68a", -- soft yello
		pine = "#6ee7b7", -- green
		cloud = "#fafafa", -- light grey text
		warm = "#FFB347", -- warm, soft amber
		leaf = "#60a5fa", -- blue
		highlight_low = "#181A24",
		highlight_med = "#222430",
		highlight_high = "#2C2F3C",
		none = "NONE",
	},

	night = {
		_nc = "#0C0D10", -- ultra-dark base
		base = "#0F1014",
		surface = "#15161A",
		overlay = "#1A1C22",
		muted = "#2B2D33", -- minimal contrast
		subtle = "#40424A", -- dimmed text
		text = "#E1E1E6", -- soft white
		bark = "#A68DA4", -- pastel purple (faded magenta)
		autumn = "#E4AA80", -- warm muted peach
		canopy = "#B7A2CC", -- dusty lavender
		pine = "#A4CBB8", -- muted mint
		cloud = "#9ABBC7", -- soft blue-grey
		warm = "#E8BFAE", -- gentle pastel orange
		leaf = "#A7CCE8", -- pastel azure
		highlight_low = "#121317",
		highlight_med = "#181A1F",
		highlight_high = "#1F2127",
		none = "NONE",
	},

	rise = { --warm, sunrise
		_nc = "#1a1517",
		base = "#1a1517",
		surface = "#231c1f",
		overlay = "#2a2123",
		leaf = "#382c2f",
		subtle = "#453539",
		text = "#e4d5d8",
		bark = "#ff7b89",
		autumn = "#ffa06b",
		canopy = "#f5c4bc",
		pine = "#b4846c",
		cloud = "#dba2a7",
		warm = "#e8b195",
		muted = "#c7977f",
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
