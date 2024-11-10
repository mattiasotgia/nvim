local C = require("msotgia.utils.chars")
local U = require("msotgia.utils.neovim")

-- Important to place this before loading plugins.
vim.g.mapleader = " "

vim.opt.showmode = false
vim.opt.clipboard:append("unnamedplus")
vim.opt.swapfile = false
vim.opt.mouse = "a"
vim.opt.hlsearch = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.textwidth = 0

vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.showtabline = 0

vim.opt.inccommand = "nosplit"

vim.opt.cmdheight = 0
vim.g.VM_set_statusline = 0
vim.g.VM_silent_exit = 1

-- Line wrapping

vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.showbreak = string.rep(" ", 3) -- Make it so that long lines wrap smartly
vim.opt.linebreak = true

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

if not U.is_default() then
    vim.opt.fillchars = {
        horiz = C.bottom_thin,
        horizup = C.bottom_thin,
        horizdown = C.right_thick,
        vert = C.right_thick,
        vertleft = C.right_thick,
        vertright = C.right_thick,
        verthoriz = C.right_thick,
    }
else
    vim.opt.fillchars = {
        eob = " ",
        diff = "╱",
        vert = C.right_thick,
        vertleft = C.right_thick,
        vertright = C.right_thick,
        verthoriz = C.right_thick,
        horiz = C.bottom_thin,
        horizup = C.bottom_right_thin,
    }
end

-- Numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"

-- Cursor
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

-- Windows
vim.opt.winblend = 0
vim.opt.pumblend = 0
vim.opt.pumheight = 10

-- Theme
vim.opt.background = "dark"

-- Default new window to vertical split (this messes up debugger windows).
-- vim.api.nvim_command('autocmd WinNew * wincmd H')

vim.cmd("filetype plugin indent on")