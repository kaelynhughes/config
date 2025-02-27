-- telescope keymaps --
local telescope = require('telescope.builtin')
local tree = require('nvim-tree.api')
local md = require('render-markdown')
vim.keymap.set('n', '<leader>ff', telescope.find_files, {})
vim.keymap.set('n', '<leader>fg', telescope.live_grep, {})
vim.keymap.set('n', '<leader>fb', telescope.buffers, {})
vim.keymap.set('n', '<leader>fh', telescope.help_tags, {})

vim.keymap.set('n', '<leader>t', tree.tree.open, {})
vim.keymap.set('n', '<leader>c', tree.tree.close, {})

vim.keymap.set('n', '<leader>md', md.toggle, {})

vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, {});
vim.keymap.set('n', '<leader>n', vim.diagnostic.goto_next, {});
vim.keymap.set('n', '<leader>b', vim.diagnostic.goto_prev, {});
