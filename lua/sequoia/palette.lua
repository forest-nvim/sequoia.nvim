local options = require("sequoia.config").options
local variants = {
	main = {
		_nc = "#1f1d30",
		base = "#0a0a0a", --Neutral 950
		surface = "#171717", --Neutral 900
		overlay = "#27272a", --Neutral 800
		muted = "#525252", --Neutral 600
		subtle = "#57534e", --Stone 600
		text = "#e7e5e4", --Stone 200
		love = "#fb923c", --Orange 400, bark
		gold = "#1a2e05", --lime 950, leaves
		rose = "#fbbf24", --Amber 400, 
		pine = "#3e8fb0",
		foam = "#0ea5e9", --sky 500, sky
		iris = "#451a03", --amber 950, soil
		leaf = "#95b1ac",
		highlight_low = "#0c0a09", --stone 950 
		highlight_med = "#1c1917", --stone 900
		highlight_high = "#292524", --stone 800
		none = "NONE",
	},
	night = {
		_nc = "#0a0a0a",
		base = "#0a0a0a", --Neutral 950
		surface = "#171717", --Neutral 900
		overlay = "#27272a", --Neutral 800
		muted = "#525252", --Neutral 600
		subtle = "#57534e", --Stone 600
		text = "#e7e5e4", --Stone 200
		love = "#fb923c", --Orange 400, bark
		gold = "#1a2e05", --lime 950, leaves
		rose = "#fbbf24", --Amber 400, 
		pine = "#3e8fb0",
		foam = "#0ea5e9", --sky 500, sky
		iris = "#451a03", --amber 950, soil
		leaf = "#95b1ac",
		highlight_low = "#0c0a09", --stone 950 
		highlight_med = "#1c1917", --stone 900
		highlight_high = "#292524", --stone 800
		none = "NONE",
	},
	rise = {
		_nc = "#1f1d30",
		base = "#0a0a0a", --Neutral 950
		surface = "#171717", --Neutral 900
		overlay = "#27272a", --Neutral 800
		muted = "#525252", --Neutral 600
		subtle = "#57534e", --Stone 600
		text = "#e7e5e4", --Stone 200
		love = "#fb923c", --Orange 400, bark
		gold = "#1a2e05", --lime 950, leaves
		rose = "#fbbf24", --Amber 400, 
		pine = "#3e8fb0",
		foam = "#0ea5e9", --sky 500, sky
		iris = "#451a03", --amber 950, soil
		leaf = "#95b1ac",
		highlight_low = "#0c0a09", --stone 950 
		highlight_med = "#1c1917", --stone 900
		highlight_high = "#292524", --stone 800
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