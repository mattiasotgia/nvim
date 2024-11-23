require("msotgia.plugins.managers.lazy.bootstrap")

local U = require("msotgia.utils.chars")
local plugins = require("msotgia.plugins.managers.lazy.plugins")

local opts = {
    ui = { border = U.border_chars_outer_thin },
    defaults = { lazy = false },
    checker = {
        notify = false,
        enabled = true,
    },
}

-- vim.cmd("colorscheme oxocarbon")
require("lazy").setup(plugins, opts)
