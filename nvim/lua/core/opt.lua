-- add line numbers
vim.opt.number = true

-- make tabs less enormous
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

-- true color support
vim.opt.termguicolors = true

-- set theme options
require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    transparent_background = false, -- disables setting the background color.
    show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    dim_inactive = {
        enabled = false, -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15, -- percentage of the shade to apply to the inactive window
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" }, -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
        -- miscs = {}, -- Uncomment to turn off hard-coded styles
    },
    color_overrides = {
        mocha = {
            peach = '#F09867',
            yellow = '#F8F3A6',
            blue = '#c1fcf5',
            lavender = '#E9A6FF',
            text = '#EFCBFB',
            subtext1 = '#D8B3E5',
            subtext0 = '#C29BCF',
            overlay2 = '#AC83B9',
            overlay1 = '#976DA4',
            overlay0 = '#825790',
            surface2 = '#6D417B',
            surface1 = '#592C68',
            surface0 = '#451755',
            base = '#320044',
            mantle = '#000000',
            crust = '#000000',
        },
    },
    custom_highlights = {},
    default_integrations = true,
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
            enabled = true,
            indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"

-- disable mouse :P
vim.opt.mouse = ""
