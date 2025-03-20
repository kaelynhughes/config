-- import apis --
local telescope = require('telescope.builtin')
local tree = require('nvim-tree.api')
local md = require('render-markdown')
local blame = require('gitblame')

-- telescope keymaps --
vim.keymap.set('n', '<leader>ff', telescope.find_files, {})
vim.keymap.set('n', '<leader>fg', telescope.live_grep, {})
vim.keymap.set('n', '<leader>fb', telescope.buffers, {})
vim.keymap.set('n', '<leader>fh', telescope.help_tags, {})

-- nvim-tree keymaps --
vim.keymap.set('n', '<leader>t', tree.tree.open, {})
vim.keymap.set('n', '<leader>c', tree.tree.close, {})

-- markdown rendering --
vim.keymap.set('n', '<leader>md', md.toggle, {})

-- diagnostic display --
vim.diagnostic.config({
    virtual_text = false,
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = '󰅚',
            [vim.diagnostic.severity.WARN] = '',
            [vim.diagnostic.severity.HINT] = '󰌶'
        }
    }
});
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, {});
vim.keymap.set('n', '<leader>n', vim.diagnostic.goto_next, {});
vim.keymap.set('n', '<leader>p', vim.diagnostic.goto_prev, {});

-- git blame --
vim.keymap.set('n', '<leader>b', blame.toggle, {})
