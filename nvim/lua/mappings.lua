require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

-- map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- CUSTOM MAPPINGS
map("n", "<C-q>", "<cmd>q!<CR>")
map("v", "<", "<gv")
map("v", ">", ">gv")

map("n", "<C-Up>", ":resize -2<CR>")
map("n", "<C-Down>", ":resize +2<CR>")
map("n", "<C-Left>", ":vertical resize -2<CR>")
map("n", "<C-Right>", ":vertical resize +2<CR>")
map("n", "<A-;>", "<Esc>A;<Esc>o", { desc = "Add ; in final" })
map("n", "<leader>f", function()
  vim.diagnostic.open_float()
end, { desc = "LSP: Ver erro/diagnóstico" })

local function run_code(term_mode)
  vim.cmd "w"

  local ft = vim.bo.filetype
  local file = vim.fn.expand "%"
  local file_no_ext = vim.fn.expand "%:r"
  local cmd = ""

  if ft == "c" then
    cmd = "gcc " .. " -g " .. file .. " -o " .. file_no_ext .. " && ./" .. file_no_ext
  elseif ft == "cpp" then
    cmd = "g++ " .. " -g " .. file .. " -o " .. file_no_ext .. " && ./" .. file_no_ext
  elseif ft == "cs" then
    cmd = "dotnet run"
  else
    print("Tipo de arquivo não suportado para execução rápida: " .. ft)
    return
  end

  require("nvchad.term").runner {
    pos = term_mode, -- "sp", "vsp", "float"
    cmd = cmd,
    id = "code_runner",
    clear_cmd = false,
  }
end

map("n", "<F10>", function()
  run_code "vsp"
end, { desc = "Compilar/Rodar (Vertical)" })

map("n", "<F12>", function()
  run_code "sp"
end, { desc = "Compilar/Rodar (Horizontal)" })

map("n", "<F11>", function()
  run_code "float"
end, { desc = "Compilar/Rodar (Flutuante)" })

-- ==========================================
-- Configurações do nvim-dap (Depurador)
-- ==========================================

map("n", "<leader>db", function()
  require("dap").toggle_breakpoint()
end, { desc = "Debug: Adicionar/Remover Breakpoint" })

map("n", "<F4>", function()
  require("dap").continue()
end, { desc = "Debug: Iniciar/Continuar" })

map("n", "<F5>", function()
  require("dap").step_over()
end, { desc = "Debug: Step Over" })

map("n", "<F6>", function()
  require("dap").step_into()
end, { desc = "Debug: Step Into" })

map("n", "<F7>", function()
  require("dap").step_out()
end, { desc = "Debug: Step Out" })

map("n", "<leader>dt", function()
  require("dap").terminate()
end, { desc = "Debug: Terminar" })

map("n", "<leader>du", function()
  require("dapui").toggle()
end, { desc = "Debug: Alternar Interface DAP" })
