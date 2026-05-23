-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- lazy.nvim
require("lazy").setup({
  spec = {
    -- Theme
    "sainnhe/everforest",

    -- Lualine
    "nvim-lualine/lualine.nvim",
    "nvim-tree/nvim-web-devicons",

    -- Gitsigns
    "lewis6991/gitsigns.nvim",

    -- Telescope
    {
      'nvim-telescope/telescope.nvim', version = '*',
      dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
      }
    },

    -- LSP
    "neovim/nvim-lspconfig",
    { "mason-org/mason.nvim", opts = {} },
    "mason-org/mason-lspconfig.nvim",

    -- CMP
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/nvim-cmp",

    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
  },

  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },

  -- automatically check for plugin updates (disabled fn)
  -- checker = { enabled = true },
})

require("plugins.mason")
require("plugins.cmp")
