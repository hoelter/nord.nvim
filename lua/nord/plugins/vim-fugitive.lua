-- tpope/vim-fugitive highlight groups
local M = {}

M.setup = function(colors, config)
  return {
    gitcommitDiscardedFile = { link = "NordFgRed11" },
    gitcommitUntrackedFile = { link = "NordFgRed11" },
    gitcommitSelectedFile = { fg = colors.green_14 },
  }
end

return M
