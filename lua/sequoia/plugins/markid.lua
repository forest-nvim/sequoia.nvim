--- Rosé Pine for markid
--- https://github.com/David-Kunz/markid
---
--- @usage
--- local highlights = require("sequoia.plugins.markid")
--- require("nvim-treesitter.configs").setup({ markid = { enable = true, colors = highlights } })

local p = require("sequoia.palette")

return { p.cloud, p.canopy, p.warm }