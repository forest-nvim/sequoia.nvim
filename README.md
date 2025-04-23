# 🌲 Sequoia.nvim

A Neovim theme inspired by the Sequoia VS Code theme.

## 🔧 Installation

Using [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "forest-nvim/sequoia.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd("colorscheme sequoia")
  end
}

