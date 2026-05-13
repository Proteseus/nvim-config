return { 
    -- Telescope (Fuzzy Finder)
    {
        'nvim-telescope/telescope.nvim',
        lazy = true,
        dependencies = {
            {'nvim-lua/plenary.nvim'},
        }
    },

    -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
    },

    -- LSP Support
    {
        'neovim/nvim-lspconfig',
    },
    {
        'williamboman/mason.nvim',
    },
    {
        'williamboman/mason-lspconfig.nvim',
    },

    -- Autocompletion
    {
        'hrsh7th/nvim-cmp',
    },
    {
        'hrsh7th/cmp-nvim-lsp',
    },
    {
        'hrsh7th/cmp-path',
    },

    -- GIT Support
    {
        "lewis6991/gitsigns.nvim",
    },

    -- Colorscheme
    {
        "catppuccin/nvim"
    },

    -- Icons
    {
        "nvim-tree/nvim-web-devicons"
    },

    -- Which-key Extension
    {
        "folke/which-key.nvim",
        lazy = true,
    },
}
