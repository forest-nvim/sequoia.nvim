# 🌲 Sequoia.nvim

A beautiful and versatile Neovim theme with three distinct modes, designed to match your mood and lighting—whether you're coding in the sunlight, the twilight, or the dead of night.

## ✨ Theme Variants

- **🌲 Sequoia**  
  Inspired by JetBrains Fleet. A professional, vibrant, and colorful theme for daily use.

- **🌌 Sequoia Night**  
  A dark, subdued palette perfect for late-night sessions when everything else feels too bright. Ideal for 3AM focus.

- **🌅 Sequoia Rise**  
  A soft, warm theme inspired by sunrise—great for gentle morning coding.

## 🔧 Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "forest-nvim/sequoia.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd("colorscheme sequoia") -- or 'sequoia-night' / 'sequoia-rise'
  end
}
```

To switch between variants, simply change the name passed to `:colorscheme`, for example:

```vim
:colorscheme sequoia-night
```

## 📸 Previews

<!-- Add screenshots here if available -->
_Coming soon!_

## 💬 Feedback & Contributions

Feedback, issues, and pull requests are always welcome. Let’s make Neovim more beautiful together 🌿
