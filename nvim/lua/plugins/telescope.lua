return {
  'nvim-telescope/telescope.nvim',
	tag = '0.1.x',
	dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' },
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
