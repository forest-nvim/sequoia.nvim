local options = require("sequoia.config").options
local variants = {
	main = {
		_nc = "#1a1f1c",
		base = "#1a1f1c", -- Deep forest base
		surface = "#212822", -- Slightly lighter forest
		overlay = "#2a322a", -- Medium forest
		muted = "#4a5a4a", -- Muted forest
		subtle = "#5a6a5a", -- Soft forest
		text = "#e0e8e0", -- Light forest mist
		love = "#e06c75", -- Soft red berry
		gold = "#e5c07b", -- Golden leaf
		rose = "#c678dd", -- Forest flower
		pine = "#98c379", -- Fresh pine
		foam = "#56b6c2", -- Forest stream
		iris = "#61afef", -- Sky through leaves
		leaf = "#7f848e", -- Aged leaf
		highlight_low = "#1a1f1c", -- Deep forest
		highlight_med = "#212822", -- Medium forest
		highlight_high = "#2a322a", -- Light forest
		none = "NONE",
	},
	night = {
		_nc = "#0d120f",
		base = "#0d120f", -- Deepest forest night
		surface = "#141914", -- Dark forest night
		overlay = "#1a1f1c", -- Medium forest night
		muted = "#2a322a", -- Muted forest night
		subtle = "#3a423a", -- Soft forest night
		text = "#d0d8d0", -- Moonlight through leaves
		love = "#e06c75", -- Night berry
		gold = "#e5c07b", -- Moonlit leaf
		rose = "#c678dd", -- Night flower
		pine = "#98c379", -- Moonlit pine
		foam = "#56b6c2", -- Moonlit stream
		iris = "#61afef", -- Stars through leaves
		leaf = "#7f848e", -- Shadowed leaf
		highlight_low = "#0d120f", -- Deepest forest
		highlight_med = "#141914", -- Dark forest
		highlight_high = "#1a1f1c", -- Medium forest
		none = "NONE",
	},
	rise = {
		_nc = "#1a1f1c",
		base = "#1a1f1c", -- Dawn forest base
		surface = "#212822", -- Early morning forest
		overlay = "#2a322a", -- Morning forest
		muted = "#4a5a4a", -- Muted morning
		subtle = "#5a6a5a", -- Soft morning
		text = "#e0e8e0", -- Morning mist
		love = "#e06c75", -- Dawn berry
		gold = "#e5c07b", -- Sunrise leaf
		rose = "#c678dd", -- Morning flower
		pine = "#98c379", -- Dewy pine
		foam = "#56b6c2", -- Morning stream
		iris = "#61afef", -- Morning sky
		leaf = "#7f848e", -- Dewy leaf
		highlight_low = "#1a1f1c", -- Dawn forest
		highlight_med = "#212822", -- Early morning
		highlight_high = "#2a322a", -- Morning light
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