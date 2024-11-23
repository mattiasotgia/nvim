return {
    -- General UI/UX
    {
        "glepnir/dashboard-nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function() require("msotgia.plugins.ui.dashboard") end,
        lazy = false,
        priority = 999,
    },
    {
        "folke/todo-comments.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim",
        },
        config = function() require("msotgia.plugins.ui.todo") end,
        event = { "VeryLazy" },
    },
    {
        "nvim-tree/nvim-web-devicons",
        config = function() require("msotgia.plugins.ui.nvim-web-devicons") end,
    },
    {
        "stevearc/oil.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function() require("msotgia.plugins.ui.oil-nvim") end,
        lazy = false,
    },
    {
        "NvChad/nvim-colorizer.lua",
        event = { "VeryLazy" },
        config = function() require("msotgia.plugins.ui.colorizer") end,
    },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-lua/popup.nvim",
        },
        cmd = "Telescope",
        config = function() require("msotgia.plugins.ui.telescope") end,
    },
    {
        "nvim-lualine/lualine.nvim",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        event = { "VeryLazy" },
        config = function() require("msotgia.plugins.ui.lualine") end,
    },
    {
        "folke/noice.nvim",
        dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
        event = { "VeryLazy" },
        config = function() require("msotgia.plugins.ui.noice") end,
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        event = { "VeryLazy" },
        config = function() require("msotgia.plugins.ui.indent-blankline") end,
    },
    {
        "lewis6991/gitsigns.nvim",
        event = { "VeryLazy" },
        config = function() require("msotgia.plugins.ui.gitsigns") end,
    },
    {
        "sindrets/diffview.nvim",
        cmd = { "DiffviewClose", "DiffviewOpen" },
        config = function() require("msotgia.plugins.ui.diffview") end,
    },
    {
        "folke/which-key.nvim",
        event = { "VeryLazy" },
        config = function() require("msotgia.plugins.ui.which-key") end,
    },
    {
        "f-person/git-blame.nvim",
        keys = { "<leader>b" },
        config = function() require("msotgia.plugins.ui.git-blame") end,
    },
    {
        "stevearc/quicker.nvim",
        event = { "VeryLazy" },
        config = function() require("msotgia.plugins.ui.quicker") end,
    },

    -- Language.
    -- {
    --     "mfussenegger/nvim-dap",
    --     dependencies = {
    --         "nvim-neotest/nvim-nio",
    --         {
    --             "rcarriga/nvim-dap-ui",
    --             config = function() require("msotgia.plugins.ui.dapui") end,
    --         },
    --     },
    --     event = { "VeryLazy" },
    --     config = function() require("msotgia.plugins.lang.dap") end,
    -- },
    {
        "mfussenegger/nvim-lint",
        event = { "VeryLazy" },
        config = function() require("msotgia.plugins.lang.linter") end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
            "nvim-treesitter/playground",
        },
        event = { "VeryLazy" },
        build = { ":TSUpdate" },
        config = function() require("msotgia.plugins.ui.treesitter") end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function() require("msotgia.plugins.lang.lsp") end,
        event = { "VeryLazy" },
    },
    {
        "folke/lazydev.nvim",
        ft = "lua",
        dependencies = { "Bilal2453/luvit-meta" },
    },
    {
        "hrsh7th/nvim-cmp",
        event = { "VeryLazy" },
        config = function() require("msotgia.plugins.lang.completion") end,
        dependencies = {
            "hrsh7th/cmp-omni",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "saadparwaiz1/cmp_luasnip",
            {
                "L3MON4D3/LuaSnip",
                dependencies = { "rafamadriz/friendly-snippets" },
                build = "make install_jsregexp",
            },
        },
    },

    -- Other.
    {
        "aserowy/tmux.nvim",
        config = function() require("tmux").setup() end,
        event = { "VeryLazy" },
    },
    {
        "ggandor/leap.nvim",
        dependencies = "tpope/vim-repeat",
        keys = { "s", "S" },
        config = function() require("msotgia.plugins.ui.leap") end,
    },

    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        }
    },
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("nvim-tree").setup {}
        end,
    },
    -- -- Themes
    -- {
    --     -- "AlexvZyl/nordic.nvim",
    --     -- branch = "dev",
    --
    --     "bini-x/nordic.nvim",
    --     branch = "neotreeColors",
    --     priority = 1000,
    --     config = function() require("msotgia.plugins.themes.nordic") end,
    --     lazy = false,
    -- },
    -- {
    --     "folke/tokyonight.nvim",
    --     priority = 1000,
    --     lazy = true,
    --     config = function() require("msotgia.plugins.themes.tokyonight") end,
    -- },
    -- {
    --     "sainnhe/gruvbox-material",
    --     priority = 1000,
    --     lazy = true,
    --     config = function() require("msotgia.plugins.themes.gruvbox") end,
    -- },

    -- Nice themes.
    --{ 'EdenEast/nightfox.nvim', lazy = true },
    --{ 'catppuccin/nvim', lazy = true },
    --{ 'sainnhe/everforest', lazy = true },
    --{ 'rebelot/kanagawa.nvim', lazy = true },
    --{ 'marko-cerovac/material.nvim', lazy = true },
    --{ 'navarasu/onedark.nvim', lazy = true },
    --{ 'Shatur/neovim-ayu', lazy = true },
    {
        "lervag/vimtex",
        lazy = false, -- we don't want to lazy load VimTeX
        -- tag = "v2.15", -- uncomment to pin to a specific release
        init = function()
            -- VimTeX configuration goes here, e.g.
            vim.g.vimtex_compiler_method = 'latexmk'
            vim.g.vimtex_view_method = 'skim'
            vim.g.vimtex_view_skim_activate = 1
            vim.g.vimtex_view_skim_sync = 1
            vim.g.vimtex_view_skim_reading_bar = 1
            -- vim.g.vimtex_compiler_progname = 'nvr'
            vim.g.vimtex_compiler_latexmk = {
                continuous = 1,
                executable = 'latexmk',
                options = {
                    '-lualatex',
                    '-pdf',
                    -- '-synctex=1',
                    '-f',
                    '-file-line-error',
                },
            }
        end
    },
    {
        "f-person/git-blame.nvim",
        -- load the plugin at startup
        event = "VeryLazy",
        -- Because of the keys part, you will be lazy loading this plugin.
        -- The plugin wil only load once one of the keys is used.
        -- If you want to load the plugin at startup, add something like event = "VeryLazy",
        -- or lazy = false. One of both options will work.
        opts = {
            -- your configuration comes here
            -- for example
            enabled = true, -- if you want to enable the plugin
            message_template = " <summary> • <date> • <author> • <<sha>>", -- template for the blame message, check the Message template section for more options
            date_format = "%m-%d-%Y %H:%M:%S", -- template for the date, check Date format section for more options
            virtual_text_column = 1, -- virtual text start column, check Start virtual text at column section for more options
        },

    },
    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",  -- required
            "sindrets/diffview.nvim", -- optional - Diff integration

            -- Only one of these is needed.
            "nvim-telescope/telescope.nvim", -- optional
            -- "ibhagwan/fzf-lua",              -- optional
            -- "echasnovski/mini.pick",         -- optional
        },
        config = true
    },
    {
        "amitds1997/remote-nvim.nvim",
        version = "*",                       -- Pin to GitHub releases
        dependencies = {
            "nvim-lua/plenary.nvim",         -- For standard functions
            "MunifTanjim/nui.nvim",          -- To build the plugin UI
            "nvim-telescope/telescope.nvim", -- For picking b/w different remote methods
        },
        config = true,
    },
    {
        "nyoom-engineering/oxocarbon.nvim"
        -- Add in any other configuration;
        --   event = foo,
        --   config = bar
        --   end,
    },
}
