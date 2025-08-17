# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is an unofficial port of the Nord vim theme to a Lua-based Neovim plugin. The theme provides Nord colorscheme functionality for Neovim with enhanced configurability and Treesitter support.

## Architecture

The project follows a modular Lua plugin structure:

- **`lua/nord/init.lua`**: Main entry point that provides setup() and load() functions
- **`lua/nord/palette.lua`**: Defines Nord color palette (nord0-nord15) and provides color mapping functions
- **`lua/nord/groups.lua`**: Contains core highlight group definitions for syntax highlighting, LSP, Treesitter, and language-specific highlights
- **`lua/nord/plugins/`**: Modular plugin-specific highlight definitions:
  - `fugitive.lua`: vim-fugitive highlights
  - `telescope.lua`: telescope.nvim highlights  
- **`colors/nord.lua`**: Traditional Vim colorscheme entry point that simply calls require("nord").load()

### Key Components

1. **Configuration System**: Uses `config` table with options for styling (bold, italic, undercurl, underline) and overrides
2. **Color Management**: Base Nord palette with semantic color names and palette override support
3. **Highlight Groups**: Comprehensive highlight definitions covering:
   - Basic editor elements (Normal, Cursor, etc.)
   - Language syntax (Comment, String, Function, etc.)
   - LSP diagnostics and references
   - Treesitter syntax groups
   - Language-specific highlights (TypeScript, Rust, etc.)
4. **Plugin Integration**: Modular plugin highlight system that automatically loads plugin-specific highlights from `lua/nord/plugins/` directory

## Usage

Users configure the theme by calling:
```lua
require("nord").setup({
  -- configuration options
})
vim.cmd("colorscheme nord")
```

## Development Notes

- No build system, tests, or linting commands - this is a pure Lua configuration
- Requires Neovim 0.8+ with termguicolors enabled
- Recent updates include Neovim 10 compatibility and new Treesitter highlight groups
- Theme can be extended via `palette_overrides` and `overrides` configuration options
- Plugin highlights are modularized: add new plugin support by creating a file in `lua/nord/plugins/` with a `setup(colors, config)` function that returns a table of highlight groups
