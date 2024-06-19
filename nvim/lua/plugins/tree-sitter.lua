return {
	'nvim-treesitter/nvim-treesitter',
	config = function()
        	require('nvim-treesitter.configs').setup({
            	-- A list of parser names, or "all"
            	ensure_installed = {'lua', 'typescript', 'svelte', 'python', 'markdown', 'markdown_inline'},

            	-- Install parsers synchronously (only applied to `ensure_installed`)
            	sync_install = false,

            	-- Automatically install missing parsers when entering buffer
            	auto_install = true,

            	-- Highlight settings
            	highlight = {
                	enable = true,

                	-- Disable highlighting for any desired languages
                	-- (note: add the names of the parsers, not the filetype)
                	-- disable = { 'c', 'rust', 'latex' },
            	}
        	})
    end,
}
