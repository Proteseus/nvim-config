return { 
  -- Plugins will be added here accordingly.
    -- NeoTree
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    }, 

    -- Bufferline
    {
        'akinsho/bufferline.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons'
    },

    -- Colorscheme
    {
        'folke/tokyonight.nvim',
    },

     -- Which-key Extension
    {
        "folke/which-key.nvim",
        lazy = true,
        dependencies = "echasnovski/mini.nvim"
    },

   -- Lualine
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },

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

    -- Language Support
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        }
    },

    -- GIT Support
    {
        "lewis6991/gitsigns.nvim",
    },

    -- AutoClose
    {
        "m4xshen/autoclose.nvim"
    },

    -- Flutter-Tools
    {
        "akinsho/flutter-tools.nvim",
        lazy = false,
        dependecies = {
            "stevearc/dressing.nvim"
        }
    },

    -- Fugitive
    {
        "tpope/vim-fugitive"
    },

    -- Catppuccin
    {
        "catppuccin/nvim"
    },

    -- Omni
    {
        "getomni/neovim"
    },

    -- GitHub Theme
    {
        "projekt0n/github-nvim-theme"
    },

    -- Oxocarbon
    {
        "nyoom-engineering/oxocarbon.nvim"
    },

    -- Tokyodark
    {
        "tiagovla/tokyodark.nvim"
    },

    -- LiveServer
    {
        "ngtuonghy/live-server-nvim"
    },

    -- Mini
    {
        'echasnovski/mini.nvim',
        version = false
    },

    -- MarkView
    {
        "OXY2DEV/markview.nvim",
        lazy = false,      -- Recommended
    },

    -- Kanagawa theme
    {
        "rebelot/kanagawa.nvim"
    },

    -- Avante
    {
        "yetone/avante.nvim",
        lazy = false,
        version = false,
        -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
        build = "make BUILD_FROM_SOURCE=true",
        dependencies = {
            "stevearc/dressing.nvim",
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            --- The below dependencies are optional,
            "hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
            "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
            {
                -- support for image pasting
                "HakonHarnes/img-clip.nvim",
                opts = {
                    -- recommended settings
                    default = {
                        embed_image_as_base64 = false,
                        prompt_for_file_name = false,
                        drag_and_drop = {
                            insert_mode = true,
                        },
                    },
                },
            },
        },
    }
}
