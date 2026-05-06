-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "obsidian-ember",
  transparency = true,

  hl_override = {
    ["@comment"] = { fg = "#BABAB6", italic = true, bold = true, underline = true },
    Comment = { italic = true, bold = true, underline = true },

    CursorLine = { bg = "#1F1F1F" },

    Keyword = { italic = true },
    ["@keyword"] = { italic = true },
    ["@keyword.operator"] = { italic = true },
    ["@variable.parameter"] = { italic = true, bold = true },
    ["@string.documentation"] = { italic = true },

    ["@function"] = { italic = true },
    ["@function.name"] = { italic = true },
    ["@function.definition"] = { italic = true },
  },
}

M.nvdash = {
  load_on_startup = true,

  header = {
    "▓█████▄  ██▓  ▄████ ▒███████▒",
    "▒██▀ ██▌▓██▒ ██▒ ▀█▒▒ ▒ ▒ ▄▀░",
    "░██   █▌▒██▒▒██░▄▄▄░░ ▒ ▄▀▒░ ",
    "░▓█▄   ▌░██░░▓█  ██▓  ▄▀▒   ░",
    "░▒████▓ ░██░░▒▓███▀▒▒███████▒",
    " ▒▒▓  ▒ ░▓   ░▒   ▒ ░▒▒ ▓░▒░▒",
    " ░ ▒  ▒  ▒ ░  ░   ░ ░░▒ ▒ ░ ▒",
    " ░ ░  ░  ▒ ░░ ░   ░ ░ ░ ░ ░ ░",
    "   ░     ░        ░   ░ ░    ",
    " ░                  ░        ",
  },
}
M.ui = {
  tabufline = {
    enabled = true,
    lazyload = false,
    show_numbers = false,
  },
  statusline = {
    theme = "vscode",
    separator_style = "arrow",
  },
  telescope = { style = "bordered" },

  cmp = {
    icons = true,
    lspkind_text = true,
    style = "atom", -- default/flat_light/flat_dark/atom/atom_colored
    border_color = "grey_fg", -- only applicable for "default" style, use color names from base30 variables
    selected_item_bg = "simple", -- colored / simple
  },
}

return M
