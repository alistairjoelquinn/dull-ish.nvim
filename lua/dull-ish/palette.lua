---@class DullishThemePalette
---@field main_background string Main background color
---@field current_line_highlight string Current line highlight color
---@field keywords string Keyword color
---@field numbers_and_maths_symbols string Numbers and maths symbols color
---@field emphasised_text string Emphasised text color (search results / focused list items)
---@field comments string Comments color
---@field borders_and_line_numbers string Borders and line numbers color
---@field search_highlight_background string Search highlight background color
---@field visual_highlight_background string Visual mode highlight background color
---@field functions_and_warnings string Functions and warnings color
---@field errors_scope_and_special_characters string Errors, scope and special elements color
---@field strings_and_success string Strings and success indicators color
---@field variables_and_identifiers string Variables and identifiers color
---@field types_and_classes string Types and classes color

-- Color Palette Definition
---@return DullishThemePalette
return {
  -- Background colors
  main_background = "#1b1b20",
  current_line_highlight = "#252830",

  -- Foreground colors
  keywords = "#999999",
  numbers_and_maths_symbols = "#777777",
  emphasised_text = "#aaaaaa",

  -- Grey colors
  comments = "#5a5a5a",
  borders_and_line_numbers = "#464646",
  search_highlight_background = "#565656",
  visual_highlight_background = "#3a3a4a",

  -- Semantic/Syntax Colors
  functions_and_warnings = "#afa35b",
  errors_scope_and_special_characters = "#b77e89",
  strings_and_success = "#7a8574",
  variables_and_identifiers = "#7B8FA6",
  types_and_classes = "#8b7b8f",
}
