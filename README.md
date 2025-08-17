# Nord Nvim (Lua-based port)

This is a port of the [Nord Vim](https://github.com/nordtheme/vim) theme to a Lua plugin.

I created this to fix some issues I was having with the Nord Vim plugin and enhance support for Treesitter specific highlights.

- Lua-based port that is faithful to the original Nord Vim highlight groups and aims to adhere to the [Nord color palette spec](https://www.nordtheme.com/docs/colors-and-palettes)
- Provides enhanced Neovim and Treesitter-specific highlight support
- A clean slate in Lua, dropping support for legacy Vim settings
- Increased configurability through highlight group overrides

This does not have full support for the amount of vim plugin highlight groups that the original Nord Vim has. Many plugins
will inherit the base highlight groups and _mostly_ work, but some will require specific highlight group definitions to look cohesive.

Explicitly supported plugin highlights:
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Vim Fugitive](https://github.com/tpope/vim-fugitive)

## Configuration

Default configuration options:
```
-- Call setup() before loading the colorscheme if you want to change any defaults
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

Example of overriding highlight groups:
```
-- Default options:
require("nord").setup({
  overrides = {
      SignColumn = { bg = "#B48EAD" }
  }
})

vim.cmd("colorscheme nord")
```

## Inspirations

- [Nord Vim](https://github.com/nordtheme/vim)
- [Gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim) for the plugin architecture
- [jan-xyz's Neovim Lua port](https://github.com/jan-xyz/nord.nvim)

