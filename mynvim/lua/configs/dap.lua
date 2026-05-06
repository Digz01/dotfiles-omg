local dap = require "dap"

-- 1. Configura o adaptador codelldb (gerenciado pelo Mason)
dap.adapters.codelldb = {
  type = "server",
  port = "${port}",
  executable = {
    command = vim.fn.stdpath "data" .. "/mason/bin/codelldb",
    args = { "--port", "${port}" },
  },
}

-- 2. Configurações para C
dap.configurations.c = {
  {
    name = "Debuggar (Dynamic)",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.expand "%:p:r"
    end,
    cwd = "${workspaceFolder}",
    stopOnEntry = false,
  },
}

-- 3. Usa a mesma config para C++ e Rust
dap.configurations.cpp = dap.configurations.c
dap.configurations.rust = dap.configurations.c
