-- required for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = ' '
vim.opt.termguicolors = true
require('core/lazy')
require('lazy').setup('plugins', opts)
require('core/keymaps')
require('core/opt')

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'svelte' },
  callback = function() vim.treesitter.start() end,
})

vim.g.pyindent_open_paren = 0
