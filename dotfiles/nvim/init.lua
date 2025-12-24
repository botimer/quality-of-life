-- Special step to disable netrw before nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("config.lazy")
require("config.settings")
require("config.bindings")

vim.lsp.enable("lua_ls")
vim.lsp.enable("jdtls")

