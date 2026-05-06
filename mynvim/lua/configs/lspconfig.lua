require("nvchad.configs.lspconfig").defaults()

-- Configuração moderna para Neovim 0.11+ (injetando o cross-compiler)
if type(vim.lsp.config) == "function" then
  vim.lsp.config("clangd", {
    cmd = {
      "clangd",
      "--background-index",
      "--query-driver=**/*gcc*,**/*g++*",
    },
  })
end

-- Lista de servidores e ativação global
local servers = { "html", "cssls", "pyright", "clangd" }
vim.lsp.enable(servers)
