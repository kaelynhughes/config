-- required for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = ' '
vim.opt.termguicolors = true
require('core/lazy')
require('lazy').setup('plugins', opts)
require('lsp-config')
require('core/keymaps')
require('core/opt')
