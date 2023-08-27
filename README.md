# Nord Nvim (Unofficial)

This is an unofficial port of the [nord vim](https://github.com/nordtheme/vim) theme to a lua plugin.

It requires neovim 8 and 'termguicolors' to be enabled for it to function as expected.

The goals of this are (all still in progress):
- A port faithful to the original highlight groups.
- A clean slate in lua dropping support for legacy vim settings.
- Full treesitter neovim highlight support.
- Greater configurability through highlight group overrides.

Currently, this plugin should load and give basic nord highlights. I'm in the process of setting
all treesitter highlight groups and deciding what language and plugin highlights from the original to
port over to this project. There will be rough edges that will be smoothed out as I begin to use this theme on a daily basis.

Inspirations for this port:
- [Gruvbox.nvim](https://github.com/ellisonleao/gruvbox.nvim) for the plugin architecture.
- [jan-xyz's nvim lua port](https://github.com/jan-xyz/nord.nvim)

