-- Base options

local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.expandtab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.smartindent = true
opt.wrap = false
opt.hidden = true
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.signcolumn = "yes"
opt.termguicolors = true
opt.clipboard = "unnamedplus"
opt.termguicolors = true

-- Errors

local diagnostic = vim.diagnostic

diagnostic.config({
    virtual_text = true,
})

-- Colorscheme

local cmd = vim.cmd

cmd("colorscheme everforest")

require("lualine").setup()
