local M = {}

-- color palette - low contrast, monochromatic with subtle accents
local colors = {
  -- base colors
  bg = "#202328", -- slightly lighter dark background
  bg_lighter = "#252830", -- for subtle highlights
  fg = "#999999", -- muted grey for main text
  fg_darker = "#777777", -- darker grey for less emphasis
  fg_lighter = "#aaaaaa", -- lighter grey for emphasis

  -- subtle accent colors (all very desaturated)
  subtle_yellow = "#8b815e", -- muted yellow
  subtle_orange = "#8b7355", -- muted orange
  subtle_green = "#657163", -- muted green
  subtle_blue = "#616b7b", -- muted blue

  -- ui colors
  ui_grey = "#464646", -- for ui elements
  ui_grey_lighter = "#565656",
  comment_grey = "#5a5a5a", -- for comments
}

function M.setup()
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.background = "dark"
  vim.g.colors_name = "dullboy"

  local groups = {
    -- editor basics
    Normal = { fg = colors.fg, bg = colors.bg },
    NormalFloat = { fg = colors.fg, bg = colors.bg_lighter },
    Cursor = { fg = colors.bg, bg = colors.fg },
    CursorLine = { bg = colors.bg_lighter },
    LineNr = { fg = colors.ui_grey },
    CursorLineNr = { fg = colors.subtle_yellow },
    SignColumn = { bg = colors.bg },

    -- syntax highlighting (predominantly monochrome with subtle accents)
    Comment = { fg = colors.comment_grey, italic = true },
    String = { fg = colors.subtle_green },
    Number = { fg = colors.fg_darker },
    Function = { fg = colors.subtle_yellow, italic = true },
    Keyword = { fg = colors.fg },
    Constant = { fg = colors.fg_lighter },
    Type = { fg = colors.fg },
    Statement = { fg = colors.fg },
    Special = { fg = colors.subtle_orange },
    Identifier = { fg = colors.subtle_blue },
    PreProc = { fg = colors.fg },
    Delimiter = { fg = colors.subtle_green },
    Operator = { fg = colors.fg_darker },

    -- ui elements
    WinSeparator = { fg = colors.ui_grey },
    FloatBorder = { fg = colors.ui_grey },

    -- popup menus
    Pmenu = { fg = colors.fg, bg = colors.bg_lighter },
    PmenuSel = { fg = colors.fg_lighter, bg = colors.ui_grey },
    PmenuSbar = { bg = colors.bg_lighter },
    PmenuThumb = { bg = colors.ui_grey },

    -- search
    Search = { fg = colors.fg_lighter, bg = colors.ui_grey },
    IncSearch = { fg = colors.fg_lighter, bg = colors.ui_grey_lighter },
    CurSearch = { fg = colors.fg_lighter, bg = colors.ui_grey_lighter },

    -- folds
    Folded = { fg = colors.comment_grey, bg = colors.bg_lighter },
    FoldColumn = { fg = colors.ui_grey },

    -- messages
    ErrorMsg = { fg = colors.subtle_orange },
    WarningMsg = { fg = colors.subtle_yellow },
    MoreMsg = { fg = colors.subtle_green },
    Question = { fg = colors.subtle_blue },

    -- treesitter groups
    ["@keyword"] = { fg = colors.fg },
    ["@string"] = { fg = colors.subtle_green },
    ["@function"] = { fg = colors.subtle_yellow, italic = true },
    ["@function.call"] = { fg = colors.subtle_yellow, italic = true },
    ["@field"] = { fg = colors.subtle_blue },
    ["@property"] = { fg = colors.subtle_blue },
    ["@variable"] = { fg = colors.fg },
    ["@variable.builtin"] = { fg = colors.fg_darker },
    ["@constructor"] = { fg = colors.fg },
    ["@tag"] = { fg = colors.fg },
    ["@tag.attribute"] = { fg = colors.subtle_yellow },
    ["@tag.delimiter"] = { fg = colors.subtle_green },
    ["@punctuation.delimiter"] = { fg = colors.subtle_green },
    ["@punctuation.bracket"] = { fg = colors.subtle_green },
    ["@punctuation.special"] = { fg = colors.subtle_orange },
    ["@comment"] = { fg = colors.comment_grey, italic = true },
    ["@operator"] = { fg = colors.fg_darker },

    -- lsp semantic token groups
    ["@lsp.type.class"] = { fg = colors.fg },
    ["@lsp.type.decorator"] = { fg = colors.subtle_orange },
    ["@lsp.type.enum"] = { fg = colors.fg },
    ["@lsp.type.function"] = { fg = colors.subtle_yellow, italic = true },
    ["@lsp.type.interface"] = { fg = colors.fg },
    ["@lsp.type.namespace"] = { fg = colors.fg },
    ["@lsp.type.parameter"] = { fg = colors.fg_darker },
    ["@lsp.type.property"] = { fg = colors.subtle_blue },
    ["@lsp.type.variable"] = { fg = colors.fg },

    -- diagnostics
    DiagnosticError = { fg = colors.subtle_orange },
    DiagnosticWarn = { fg = colors.subtle_yellow },
    DiagnosticInfo = { fg = colors.subtle_blue },
    DiagnosticHint = { fg = colors.subtle_green },

    -- nvim-tree highlights
    NvimTreeFolderName = { fg = colors.fg_darker },
    NvimTreeOpenedFolderName = { fg = colors.fg_darker },
    NvimTreeEmptyFolderName = { fg = colors.fg_darker },
    NvimTreeFolderIcon = { fg = colors.fg_darker },
  }

  for group, settings in pairs(groups) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return M
