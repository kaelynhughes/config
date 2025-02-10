return {
    'windwp/nvim-ts-autotag',
    config = function()
        require('nvim-ts-autotag').setup({
            opts = {
                -- Defaults in comments
                -- enable_close = true, -- Auto close tags
                -- enable_rename = true, -- Auto rename pairs of tags
                -- enable_close_on_slash = false -- Auto close on trailing </
            },
            per_filetype = {
                -- example in comments - overrides global
                -- ["html"] = {
                    -- enable_close = false
                -- }
            }
        })
    end
}
