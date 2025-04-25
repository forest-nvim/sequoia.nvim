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
### Sequoia
![Screenshot 2025-04-25 at 14 10 57](https://github.com/user-attachments/assets/2f1af240-6070-4cbd-aed7-20175046f98e)
### Sequoia Night
![Screenshot 2025-04-25 at 14 11 26](https://github.com/user-attachments/assets/26a5a1c4-f353-45d3-88e1-431cc6205bb4)
### Sequoia Rise
![Screenshot 2025-04-25 at 14 12 16](https://github.com/user-attachments/assets/bb48a74a-59c6-448c-9de1-76571d65c000)


## 💬 Feedback & Contributions

Feedback, issues, and pull requests are always welcome. Let’s make Neovim more beautiful together 🌿
