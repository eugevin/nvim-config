-- Base options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.hidden = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true

-- Errors
vim.diagnostic.config({
    virtual_text = true,
})

-- Colorscheme and lualine
vim.cmd("colorscheme everforest")

require("lualine").setup()
