local options = require("sequoia.config").options
local variants = {
	main = {
		_nc = "#1a2a1a",
		base = "#0d1a0d", -- Deep forest green
		surface = "#1a2a1a", -- Dark forest green
		overlay = "#2a3a2a", -- Medium forest green
		muted = "#4a5a4a", -- Muted green
		subtle = "#5a6a5a", -- Soft green
		text = "#e0e8e0", -- Light green-white
		love = "#ff6b6b", -- Soft red
		gold = "#ffd700", -- Golden yellow
		rose = "#ff9e9e", -- Soft pink
		pine = "#2e8b57", -- Sea green
		foam = "#87ceeb", -- Sky blue
		iris = "#9370db", -- Medium purple
		leaf = "#90ee90", -- Light green
		highlight_low = "#0d1a0d", -- Deep forest green
		highlight_med = "#1a2a1a", -- Dark forest green
		highlight_high = "#2a3a2a", -- Medium forest green
		none = "NONE",
	},
	night = {
		_nc = "#0a0a0a",
		base = "#0a0a0a", -- Pure black
		surface = "#1a1a1a", -- Dark gray
		overlay = "#2a2a2a", -- Medium gray
		muted = "#4a4a4a", -- Muted gray
		subtle = "#5a5a5a", -- Soft gray
		text = "#e0e0e0", -- Light gray
		love = "#ff4d4d", -- Bright red
		gold = "#ffcc00", -- Bright yellow
		rose = "#ff6666", -- Bright pink
		pine = "#4d4d4d", -- Dark gray
		foam = "#666666", -- Medium gray
		iris = "#808080", -- Light gray
		leaf = "#999999", -- Very light gray
		highlight_low = "#0a0a0a", -- Pure black
		highlight_med = "#1a1a1a", -- Dark gray
		highlight_high = "#2a2a2a", -- Medium gray
		none = "NONE",
	},
	rise = {
		_nc = "#1e1e2e",
		base = "#1e1e2e", -- Deep blue-gray
		surface = "#242434", -- Slightly lighter blue-gray
		overlay = "#2a2a3a", -- Medium blue-gray
		muted = "#6c7086", -- Muted blue-gray
		subtle = "#7f849c", -- Soft blue-gray
		text = "#cdd6f4", -- Light cream
		love = "#f38ba8", -- Soft pink
		gold = "#f9e2af", -- Warm cream
		rose = "#f5c2e7", -- Soft rose
		pine = "#a6e3a1", -- Soft green
		foam = "#89dceb", -- Soft blue
		iris = "#cba6f7", -- Soft purple
		leaf = "#94e2d5", -- Soft teal
		highlight_low = "#1e1e2e", -- Deep blue-gray
		highlight_med = "#242434", -- Slightly lighter blue-gray
		highlight_high = "#2a2a3a", -- Medium blue-gray
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