return {
    'nvim-tree/nvim-tree.lua',
    config = function()
        require("nvim-tree").setup({
            sort = {},
            view = {},
            renderer = {
                icons = {
                    glyphs = {
                        git = {
                            unstaged = "✖",
                            staged = "✔",
                        }
                    }
                }
            },
            filters = {},
            update_focused_file = {
                enable = true,
            },
        })
    end
}
