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
        branch = "main",
        build = ":TSUpdate",
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

    -- Neo-tree
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        }
    },

    -- Which-key Extension
    {
        "folke/which-key.nvim",
        lazy = true,
    },

    -- Markdown rendering
    {
        "MeanderingProgrammer/render-markdown.nvim",
        dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
        ft = { "markdown", "norg", "rmd", "org" },
        opts = {},
    },
}
