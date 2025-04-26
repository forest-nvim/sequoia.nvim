local options = require("sequoia.config").options
local variants = {
	main = {
		_nc = "#111111",
		base = "#171717",
		surface = "#222222",
		overlay = "#303030",
		subtle = "#4b4b4b",
		sky = "#38E8F2",
		text = "#fafafa",
		lavendar = "#c4b5fd",
		lily = "#f0abfc",
		sun = "#ffe9b6",
		baja = "#6ee7b7",
		denim = "#93c5fd",
		honey = "#FFB347",
		error = "#ff3b3b",
		highlight_low = "#181A24",
		highlight_med = "#222430",
		highlight_high = "#2C2F3C",
		none = "NONE",
	},

	night = {
		_nc = "#0B0B0B",
		base = "#111111",
		surface = "#15161A",
		overlay = "#1A1C22",
		subtle = "#40424A",
		sky = "#2B2D33",
		text = "#E1E1E6",
		lavendar = "#ddd6fe",
		lily = "#E4AA80",
		sun = "#B7A2CC",
		baja = "#89ac8a",
		denim = "#9ABBC7",
		honey = "#E1E1E6",
		error = "#F87171",
		highlight_low = "#121317",
		highlight_med = "#181A1F",
		highlight_high = "#1F2127",
		none = "NONE",
	},

	insomnia = {
		_nc = "#000000",
		base = "#050505",
		surface = "#111111",
		overlay = "#1A1C22",
		subtle = "#40424A",
		sky = "#59deff",
		text = "#f5f5f5",
		lavendar = "#c559ff",
		lily = "#ff65a7",
		sun = "#ba71ff", --This is purple here
		baja = "#50ffc5",
		denim = "#1dc8ff",
		honey = "#ffe281",
		error = "#F87171",
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
