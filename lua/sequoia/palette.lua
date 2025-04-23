-- lua/sequoia/palette.lua
return {
    -- Core shadcn colors
    bg             = "#09090b", -- shadcn background (black)
    bg_subtle      = "#18181b", -- subtle background variant (zinc-900)
    fg             = "#fafafa", -- foreground text (zinc-50)
    fg_muted       = "#a1a1aa", -- muted text (zinc-400)
    border         = "#27272a", -- border color (zinc-800)

    -- Semantic colors
    primary        = "#8b5cf6", -- primary accent (violet-500)
    primary_dark   = "#6d28d9", -- darker primary (violet-700)
    secondary      = "#38bdf8", -- secondary accent (sky-400)
    muted          = "#52525b", -- muted elements (zinc-600)

    -- Status colors
    success        = "#10b981", -- success/green (emerald-500)
    warning        = "#f59e0b", -- warning/yellow (amber-500)
    danger         = "#ef4444", -- danger/red (red-500)
    info           = "#3b82f6", -- info/blue (blue-500)

    -- UI highlight colors
    highlight      = "#27272a", -- highlight background (zinc-800)
    selection      = "#3f3f46", -- selection background (zinc-700)
    cursor_normal  = "#fafafa", -- cursor in normal mode
    cursor_insert  = "#8b5cf6", -- cursor in insert mode
    cursor_visual  = "#38bdf8", -- cursor in visual mode
    cursor_replace = "#ef4444", -- cursor in replace mode
}
