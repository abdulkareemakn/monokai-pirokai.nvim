# Monokai Pirokai for Neovim

Two dark colorschemes based on the Monokai Pirokai VS Code themes: **Arctic Frost** and **Beach Sunset**. Requires Neovim 0.10 or newer. No dependencies or setup call.

## Installation

With [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "abdulkareemakn/monokai-pirokai.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("pirokai-arctic")
  end,
}
```

With [vim-plug](https://github.com/junegunn/vim-plug), add this inside your `plug#begin()` block:

```vim
Plug 'abdulkareemakn/monokai-pirokai.nvim'
```

Then, after `plug#end()`:

```vim
colorscheme pirokai-arctic
```

For a manual install, clone the repository into Neovim's `pack/start` directory and restart Neovim:

```sh
mkdir -p "${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/pack/themes/start"
git clone https://github.com/abdulkareemakn/monokai-pirokai.nvim.git \
  "${XDG_DATA_HOME:-$HOME/.local/share}/nvim/site/pack/themes/start/monokai-pirokai.nvim"
```

## Usage

Use `:colorscheme pirokai-arctic` for Arctic Frost or `:colorscheme pirokai-sunset` for Beach Sunset. `:colorscheme pirokai` selects Arctic Frost. Put the command in your `init.lua` to load it at startup:

```lua
vim.cmd.colorscheme("pirokai-sunset")
```

The theme sets terminal colors and supports Neovim's built-in syntax, Tree-sitter, LSP and diagnostics. It also defines highlights for Telescope, blink.cmp, nvim-cmp, Gitsigns, Neo-tree, nvim-tree, which-key, and Trouble. Those plugins are optional.

For [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim), use the matching theme name:

```lua
require("lualine").setup({ options = { theme = "pirokai-sunset" } })
```

`pirokai-arctic` and `pirokai` are also available as lualine themes. The palette can be accessed with `require("pirokai").palettes.arctic` or `.sunset`.

## Development

The plugin follows Neovim's standard runtime layout: `colors/` provides the `:colorscheme` entry points, `lua/pirokai.lua` holds palettes and highlights, and `lua/lualine/themes/` provides lualine themes. Run the existing smoke check with:

```sh
nvim --clean --headless -l tests/smoke.lua
```

## Credits and license

Palette and syntax intent come from the Monokai Pirokai VS Code themes. The Neovim implementation uses Catppuccin and TokyoNight as references for plugin structure and highlight coverage. Licensed under [MIT](LICENSE).
