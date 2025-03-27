return {
  'nvim-telescope/telescope.nvim', 
	tag = '0.1.x',
	dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build='make' },
    },
    config = function()
        require('telescope').load_extension('fzf')
        require('telescope').setup {
          defaults = {
            mappings = {
              n = {
                ["<C-c>"] = "close"
              }
            }
          }
        }
    end,
}
