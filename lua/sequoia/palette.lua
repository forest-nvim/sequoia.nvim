local options = require("sequoia.config").options
local variants = {
	main = {
		_nc = "#111111",
		base = "#171717", -- soft black base
		surface = "#222222", -- a touch lighter for card surfaces
		overlay = "#303030", -- overlay layers
		subtle = "#4b4b4b", -- soft steel for less prominent text, used for comments
		sky = "#38E8F2",
		text = "#fafafa", -- crisp, neon-white text
		lavendar = "#c4b5fd", -- lavender
		lily = "#f0abfc", --fuscia
		sun = "#fde68a", -- soft yello
		baja = "#6ee7b7", -- green
		denim = "#93c5fd", -- light grey text
		honey = "#FFB347", -- honey, soft amber
		error = "#ff3b3b", -- red
		highlight_low = "#181A24",
		highlight_med = "#222430",
		highlight_high = "#2C2F3C",
		none = "NONE",
	},

	night = {
		_nc = "#0B0B0B", -- ultra-dark base
		base = "#111111",
		surface = "#15161A",
		overlay = "#1A1C22",
		subtle = "#40424A", -- dimmed text
		sky = "#2B2D33", -- minimal contrast
		text = "#E1E1E6", -- soft white
		lavendar = "#ddd6fe", -- pastel purple (faded magenta)
		lily = "#E4AA80", -- honey sky peach
		sun = "#B7A2CC", -- dusty lavender
		baja = "#89ac8a", -- sky mint
		denim = "#9ABBC7", -- soft blue-grey
		honey = "#E1E1E6", -- gentle pastel orange
		error = "#F87171", -- red
		highlight_low = "#121317",
		highlight_med = "#181A1F",
		highlight_high = "#1F2127",
		none = "NONE",
	},

	insomnia= {
		_nc = "#0B0B0B", -- ultra-dark base
		base = "#111111",
		surface = "#15161A",
		overlay = "#1A1C22",
		subtle = "#40424A", -- dimmed text
		sky = "#2B2D33", -- minimal contrast
		text = "#E1E1E6", -- soft white
		lavendar = "#ddd6fe", -- pastel purple (faded magenta)
		lily = "#E4AA80", -- honey sky peach
		sun = "#B7A2CC", -- dusty lavender
		baja = "#89ac8a", -- sky mint
		denim = "#9ABBC7", -- soft blue-grey
		honey = "#E1E1E6", -- gentle pastel orange
		error = "#F87171", -- red
		highlight_low = "#121317",
		highlight_med = "#181A1F",
		highlight_high = "#1F2127",
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
