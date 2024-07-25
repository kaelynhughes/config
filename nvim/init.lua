vim.g.mapleader = ' '
vim.opt.termguicolors = true
require('core/lazy')
require('lazy').setup('plugins', opts)
require('lsp-config')
require('core/keymaps')
require('core/opt')
