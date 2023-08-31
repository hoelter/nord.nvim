# Nord Nvim (Unofficial)

This is an unofficial port of the [nord vim](https://github.com/nordtheme/vim) theme to a lua plugin.

It requires neovim 8 and 'termguicolors' to be enabled for it to function as expected.

The goals of this are (all still in progress):
- A port faithful to the original highlight groups.
- A clean slate in lua dropping support for legacy vim settings.
- Increased configurability through highlight group overrides.
- Neovim and treesitter neovim highlight support.

Currently, this theme should just about match most basic nord highlight behavior. Specific neovim and treesitter highlights 
are still in progress. If the defaults are sensible, they'll be kept. Not all plugin specific highlights have been ported,
so if you rely on a specific plugins highlights that will likely be missing right now. Through the config any of those specific
highlight groups could be added.

## Configuration

Default config settings and options for this theme currently are:
```
-- Setup must be called before loading the colorscheme only if changes from the defaults are desired.
require("nord").setup({
  undercurl = true,
  underline = true,
  bold = true,
  italic = {
    on = true, 
    comments = true,
    operators = false,
    strings = false,
  },
  palette_overrides = {},
  overrides = {},
})

vim.cmd("colorscheme nord")
```

Example for overriding highlight groups
```
-- Default options:
require("nord").setup({
  overrides = {
      SignColumn = { bg = "#B48EAD" }
  }
})

vim.cmd("colorscheme nord")
```

Inspirations for this port:
- [Gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim) for the plugin architecture.
- [jan-xyz's nvim lua port](https://github.com/jan-xyz/nord.nvim)

