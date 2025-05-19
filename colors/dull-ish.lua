local colors = require "dull-ish.palette"
local theme = require "dull-ish.theme"

vim.cmd "highlight clear"
if vim.fn.exists "syntax_on" then
  vim.cmd "syntax reset"
end

vim.o.background = "dark"
vim.g.colors_name = "dull-ish"

local highlight_groups = theme.create_highlight_groups(colors)

for group, settings in pairs(highlight_groups) do
  vim.api.nvim_set_hl(0, group, settings)
end
