vim.g.mapleader = ' '
vim.opt.termguicolors = true
require('core/lazy')
require('lazy').setup('plugins', opts)
require('core/keymaps')
require('core/opt')
