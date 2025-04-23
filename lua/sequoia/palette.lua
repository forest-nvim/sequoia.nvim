local options = require("sequoia.config").options
local variants = {
	main = {
		_nc = "#21282b",
		base = "#282c34", -- One Dark background
		surface = "#2c323c", -- Slightly lighter background
		overlay = "#323842", -- Medium background
		muted = "#3e4451", -- Muted background
		subtle = "#4b5263", -- Soft background
		text = "#abb2bf", -- One Dark text
		bark = "#e06c75", -- One Dark red
		autumn = "#e5c07b", -- One Dark yellow
		canopy = "#c678dd", -- One Dark purple
		pine = "#98c379", -- One Dark green
		cloud = "#56b6c2", -- One Dark cyan
		warm = "#d19a66", -- One Dark orange
		leaf = "#61afef", -- One Dark blue
		highlight_low = "#282c34", -- Base background
		highlight_med = "#2c323c", -- Surface color
		highlight_high = "#323842", -- Overlay color
		none = "NONE",
	},
	night = {
		_nc = "#080808",
		base = "#080808", -- Near black background
		surface = "#0f0f0f", -- Slightly lighter black
		overlay = "#141414", -- Dark overlay
		muted = "#1f1f1f", -- Dark gray
		subtle = "#282828", -- Medium dark gray
		text = "#dfdfdf", -- Light gray text
		bark = "#4cc9ff", -- Cyan accent
		autumn = "#2a2a2a", -- Dark gray
		canopy = "#3a3a3a", -- Medium gray
		pine = "#1a1a1a", -- Very dark gray
		cloud = "#333333", -- Dark gray
		warm = "#4cc9ff", -- Cyan accent
		leaf = "#242424", -- Another dark gray
		highlight_low = "#080808", -- Near black
		highlight_med = "#0f0f0f", -- Slightly lighter black
		highlight_high = "#141414", -- Dark overlay
		none = "NONE",
	},
	rise = {
		_nc = "#1a1517",
		base = "#1a1517", -- Deep dawn background
		surface = "#231c1f", -- Dark sunrise surface
		overlay = "#2a2123", -- Warm dark overlay
		muted = "#382c2f", -- Muted dawn
		subtle = "#453539", -- Soft sunrise
		text = "#e4d5d8", -- Warm light text
		bark = "#ff7b89", -- Soft sunrise pink
		autumn = "#ffa06b", -- Sunrise orange
		canopy = "#f5c4bc", -- Morning rose
		pine = "#b4846c", -- Morning brown
		cloud = "#dba2a7", -- Dawn pink
		warm = "#e8b195", -- Warm glow
		leaf = "#c7977f", -- Morning copper
		highlight_low = "#1a1517", -- Deep dawn
		highlight_med = "#231c1f", -- Dark sunrise
		highlight_high = "#2a2123", -- Warm dark
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