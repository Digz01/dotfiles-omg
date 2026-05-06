require "nvchad.options"

-- add yours here!

vim.cmd "highlight @comment gui=underline"
vim.cmd "highlight Function gui=italic"
vim.cmd "highlight @function gui=italic"
vim.cmd "highlight @function.name gui=italic"
vim.cmd "highlight @function.builtin gui=italic"
vim.cmd "highlight @function.definition gui=italic"
vim.cmd "highlight @keywork gui=italic"
vim.cmd "highlight @keywork.operator gui=italic"

local o = vim.o
o.cursorlineopt = "both"
o.expandtab = true
o.cmdheight = 0
o.laststatus = 3
o.scrolloff = 10

o.list = true
o.listchars = "eol:↵,tab:▸\\ ,trail:·"
