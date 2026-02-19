local options = require("sequoia.config").options
local variants = {
	main = {
		_nc = "#121212",
		base = "#181818",
		surface = "#1e1e1e",
		overlay = "#292929",
		subtle = "#898989",
		sky = "#52a7f6",
		text = "#d6d6dd",
		lavendar = "#a390f0",
		lily = "#d898d8",
		sun = "#e5c995",
		baja = "#78d0bd",
		denim = "#7dbeff",
		honey = "#efb080",
		grass = "#afcb85",
		error = "#EB5F6A",
		highlight_low = "#1c1c1c",
		highlight_med = "#232323",
		highlight_high = "#2d2d2d",
		none = "NONE",
	},

	night = {
		_nc = "#0e0e0e",
		base = "#141414",
		surface = "#1a1a1a",
		overlay = "#242424",
		subtle = "#5d5d5d",
		sky = "#4a8abf",
		text = "#b0b0b5",
		lavendar = "#8a7cc0",
		lily = "#b080b0",
		sun = "#bfa878",
		baja = "#6aab9a",
		denim = "#6a9dcc",
		honey = "#c09070",
		grass = "#90a870",
		error = "#c05050",
		highlight_low = "#181818",
		highlight_med = "#1e1e1e",
		highlight_high = "#272727",
		none = "NONE",
	},

	fog = {
		_nc = "#1a1a1a",
		base = "#202020",
		surface = "#262626",
		overlay = "#2e2e2e",
		subtle = "#585860",
		sky = "#687888",
		text = "#8a8a92",
		lavendar = "#7a7290",
		lily = "#8a7282",
		sun = "#8a8272",
		baja = "#688880",
		denim = "#6a8090",
		honey = "#8a7868",
		grass = "#728268",
		error = "#987070",
		highlight_low = "#242424",
		highlight_med = "#2a2a2a",
		highlight_high = "#323232",
		none = "NONE",
	},

	ember = {
		_nc = "#140e0a",
		base = "#1c1410",
		surface = "#241a16",
		overlay = "#2e2420",
		subtle = "#80705e",
		sky = "#b08858",
		text = "#d8c8b8",
		lavendar = "#a07888",
		lily = "#c88878",
		sun = "#d0a860",
		baja = "#88a080",
		denim = "#8898a8",
		honey = "#c88040",
		grass = "#98a068",
		error = "#c85848",
		highlight_low = "#201814",
		highlight_med = "#28201a",
		highlight_high = "#322822",
		none = "NONE",
	},

	moss = {
		_nc = "#0c100c",
		base = "#141a14",
		surface = "#1a201a",
		overlay = "#242a24",
		subtle = "#5a6a5a",
		sky = "#6090a0",
		text = "#c0c8c0",
		lavendar = "#8880a0",
		lily = "#a88898",
		sun = "#b0a878",
		baja = "#68a890",
		denim = "#7898a8",
		honey = "#a89868",
		grass = "#88b078",
		error = "#b06858",
		highlight_low = "#182018",
		highlight_med = "#1e261e",
		highlight_high = "#283028",
		none = "NONE",
	},

	rise = {
		_nc = "#f5f2ed",
		base = "#ede9e4",
		surface = "#e3e0da",
		overlay = "#d5d2cc",
		subtle = "#8a8880",
		sky = "#3878b8",
		text = "#2c2c2a",
		lavendar = "#7060a8",
		lily = "#a85080",
		sun = "#9a7828",
		baja = "#2a8868",
		denim = "#3868a8",
		honey = "#a86828",
		grass = "#488828",
		error = "#c03838",
		highlight_low = "#e7e4de",
		highlight_med = "#dddad4",
		highlight_high = "#d0cdc7",
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
