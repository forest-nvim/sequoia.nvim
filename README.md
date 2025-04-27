# 🌲 Sequoia.nvim

A beautiful and versatile Neovim theme with three distinct modes, designed to match your mood and lighting—whether you're coding in the sunlight, the twilight, or the dead of night.

## ✨ Theme Variants

- **🌿 Sequoia**  
  Inspired by JetBrains Fleet. A professional, vibrant, and colorful theme for daily use.

- **🌲 Sequoia Night**  
  A dark, subdued palette perfect for late-night sessions when everything else feels too bright. Ideal for 3AM focus.

- **🎆 Sequoia Insomnia**  
	A harsh, black theme with bright neon colors. This is what my experience with Insomnia has felt like.

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
![image](https://github.com/user-attachments/assets/95861f05-c256-412c-94eb-87dc6032fc9d)
### Sequoia Night
![image](https://github.com/user-attachments/assets/d3bc80f0-66dc-4269-b4a4-95e67760bd08)
### Sequoia Insomnia
![image](https://github.com/user-attachments/assets/8b02111b-6e4a-423f-baf9-539a90d185b0)


## 💬 Feedback & Contributions

Feedback, issues, and pull requests are always welcome. Let’s make Neovim more beautiful together 🌿
