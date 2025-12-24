local telescope = require('telescope.builtin')
local tree = require('nvim-tree.api').tree

local util = {
  reveal = function()
    tree.open({ find_file = true })
  end,

  discard = function()
    vim.api.nvim_buf_delete(0, { force = true })
  end,

  close = function()
    vim.api.nvim_win_close(0, false)
  end,

  toggle_diagnostics = function()
    local toggled = not vim.diagnostic.is_enabled()
    vim.diagnostic.enable(toggled)
  end,

  toggle_virtual_text = function()
    local toggled = not vim.diagnostic.config().virtual_text
    vim.diagnostic.config({ virtual_text = toggled })
  end,

  toggle_virtual_lines = function()
    local toggled = not vim.diagnostic.config().virtual_lines
    vim.diagnostic.config({ virtual_lines = toggled })
  end,
}

-- General
vim.keymap.set('n', '<leader>x', vim.cmd.bd,    { desc = 'Delete the current buffer' })
vim.keymap.set('n', '<leader>X', util.discard,  { desc = 'Delete the current buffer and discard changes' })
vim.keymap.set('n', '<leader>s', vim.cmd.write, { desc = 'Write the current buffer (save the file)' })
vim.keymap.set('n', '<m-s>',     vim.cmd.write, { desc = 'Write the current buffer (save the file)' })
vim.keymap.set('n', '<m-w>',     util.close,    { desc = 'Close the current window/split' })

-- LSP / diagnostics
vim.keymap.set('n', '<leader>d',          util.toggle_virtual_lines, { desc = 'Toggle virtual line diagnostics' })
vim.keymap.set('n', '<leader><leader>df', vim.diagnostic.open_float, { desc = 'Show diagnostics in a floating window' })
vim.keymap.set('n', '<leader><leader>di', util.toggle_virtual_text,  { desc = 'Toggle inline diagnostics ("virtual_text")' })
vim.keymap.set('n', '<leader><leader>dl', util.toggle_virtual_lines, { desc = 'Toggle virtual line diagnostics' })
vim.keymap.set('n', '<leader><leader>dd', util.toggle_diagnostics,   { desc = 'Toggle all diagnostics' })

-- Telescope
vim.keymap.set('n', '<leader>f', telescope.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>b', telescope.buffers,    { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>g', telescope.live_grep,  { desc = 'Telescope live grep' })

-- Tree
vim.keymap.set('n', '<leader>t',         tree.open,   { desc = 'Open NvimTree' })
vim.keymap.set('n', '<leader><leader>t', tree.toggle, { desc = 'Close NvimTree' })
vim.keymap.set('n', '<leader>r',         util.reveal, { desc = 'Find current file in NvimTree' })

return {}
