-- nvim-telescope/telescope.nvim highlight groups
local M = {}

M.setup = function(colors, config)
  return {
    TelescopeMatching = { link = "Label" },
  }
end

return M
