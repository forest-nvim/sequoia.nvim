# 🌲 Sequoia.nvim

A Neovim theme with three modes!

Sequoia -> Similar to Jetbrains Fleet, a nice, professional and colorful theme for daily use
Sequoia Night -> A dark, and faded theme for when all other themes get to be too bright for your eyes. Perfect for 3am work.
Sequoia Rise -> A nice, warm theme inspired by the sunrise.

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

