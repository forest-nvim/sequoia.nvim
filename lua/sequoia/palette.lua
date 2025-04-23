local options = require("sequoia.config").options
local variants = {
	main = {
		_nc = "#1a2a1a",
		base = "#0d1810", -- Deep forest background
		surface = "#162419", -- Dark forest surface
		overlay = "#1e2e22", -- Medium forest overlay
		muted = "#3a4d3e", -- Muted forest green
		subtle = "#4a5d4e", -- Soft forest green
		text = "#d8e5d9", -- Forest white
		bark = "#a65d57", -- Earthy red
		autumn = "#d79547", -- Autumn orange
		canopy = "#8fb573", -- Forest green
		pine = "#2d6a4f", -- Deep pine green
		cloud = "#7aa89f", -- Forest mist
		warm = "#b08f7b", -- Wood brown
		leaf = "#78a670", -- Leaf green
		highlight_low = "#0d1810", -- Deep forest
		highlight_med = "#162419", -- Dark forest
		highlight_high = "#1e2e22", -- Medium forest
		none = "NONE",
	},
	night = {
		_nc = "#0a0a0a",
		base = "#0f0f0f", -- Deep black
		surface = "#161616", -- Dark surface
		overlay = "#1d1d1d", -- Subtle overlay
		muted = "#2a2a2a", -- Muted elements
		subtle = "#363636", -- Subtle elements
		text = "#e2e2e2", -- Crisp white
		bark = "#db4d6d", -- Minimal red
		autumn = "#c9a66b", -- Muted gold
		canopy = "#6d8a96", -- Steel blue
		pine = "#4d5d53", -- Dark sage
		cloud = "#5a6d7a", -- Steel gray
		warm = "#8b7355", -- Warm gray
		leaf = "#6b7f6e", -- Muted sage
		highlight_low = "#0f0f0f", -- Deep black
		highlight_med = "#161616", -- Dark surface
		highlight_high = "#1d1d1d", -- Subtle overlay
		none = "NONE",
	},
	rise = {
		_nc = "#fafafa",
		base = "#ffffff", -- Pure white
		surface = "#f5f5f5", -- Light surface
		overlay = "#ececec", -- Bright overlay
		muted = "#e0e0e0", -- Soft muted
		subtle = "#d4d4d4", -- Subtle elements
		text = "#2a2a2a", -- Dark text
		bark = "#ff3366", -- Vibrant pink
		autumn = "#ff9500", -- Bright orange
		canopy = "#00c7ff", -- Electric blue
		pine = "#00cc66", -- Vibrant green
		cloud = "#6b7efe", -- Bright blue
		warm = "#ff61dc", -- Hot pink
		leaf = "#50e3c2", -- Bright teal
		highlight_low = "#ffffff", -- Pure white
		highlight_med = "#f5f5f5", -- Light surface
		highlight_high = "#ececec", -- Bright overlay
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