local M = {}

M.setup = function()
  vim.cmd "colorscheme dull-ish"
end

M.colors = require "dull-ish.palette"

return M

