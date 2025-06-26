-- import constants --
local constants = require('core.constants')

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
            [vim.diagnostic.severity.ERROR] = constants.icons.diagnostic.error,
            [vim.diagnostic.severity.WARN] = constants.icons.diagnostic.warn,
            [vim.diagnostic.severity.HINT] = constants.icons.diagnostic.hint
        }
    }
});
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, {});
vim.keymap.set('n', '<leader>n', vim.diagnostic.goto_next, {});
vim.keymap.set('n', '<leader>p', vim.diagnostic.goto_prev, {});

-- git blame --
vim.keymap.set('n', '<leader>b', blame.toggle, {})

-- custom gf --
-- open files in their own tmux pane --
-- come back to this later - got stuck on running a tmux command -- 
-- local function custom_vim_gx ()
--     if os.getenv("TMUX") == nil then
--         vim.cmd('normal! gf')
--     else
--         this would be something like "tmux split-window -c '#{pane_current_path}' 'nvim {vim.fn.expand('<cfile>')}'"
--         might need to grab some sort of path to current file rather than pane current path
--         print(vim.fn.expand('<cfile>'))
--     end
-- end

-- vim.keymap.set('n', '<leader>gf', custom_vim_gx, {})
