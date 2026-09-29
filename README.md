# Monokai Pirokai for Neovim

`monokai-pirokai.nvim` is a Neovim port of the [Monokai Pirokai theme for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=lakshits11.monokai-pirokai), with its **Arctic Frost** and **Beach Sunset** variants.

## Installation

### Neovim `vim.pack` (0.12+)

```lua
vim.pack.add({ "https://github.com/abdulkareemakn/monokai-pirokai.nvim" })
vim.cmd.colorscheme("pirokai-arctic")
```

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "abdulkareemakn/monokai-pirokai.nvim",
  lazy = false,
  priority = 1000,
}
```

## Usage

Use `:colorscheme pirokai-arctic` for Arctic Frost or `:colorscheme pirokai-sunset` for Beach Sunset. Put the command in your `init.lua` to load it at startup:

```lua
vim.cmd.colorscheme("pirokai-sunset")
vim.cmd.colorscheme("pirokai-arctic")
```

The theme sets terminal colors and supports Neovim's built-in syntax, Tree-sitter, LSP and diagnostics. It also defines highlights for Telescope, blink.cmp, nvim-cmp, Gitsigns, Neo-tree, nvim-tree, which-key, and Trouble. Those plugins are optional.

For [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim), set `options.theme` to either `pirokai-arctic` or `pirokai-sunset`:

```lua
require("lualine").setup({ options = { theme = "pirokai-arctic" } })
```

The palettes are available as `require("pirokai").palettes.arctic` and `require("pirokai").palettes.sunset`.

## Development

The plugin follows Neovim's standard runtime layout: `colors/` provides the `:colorscheme` entry points, `lua/pirokai.lua` holds palettes and highlights, and `lua/lualine/themes/` provides lualine themes.

## Credits

Palette and syntax intent come from the Monokai Pirokai VS Code themes.

## License

[MIT](LICENSE)
