----- [[ CentenVim ]] -----

-- CentenV's custom Neovim configuration
require("core.keymaps")
require("core.options")

-- !!!
-- This file contains configurations that are backbone to the customization of Neovim.
-- Parameters that potentially/are subject to be changed are stored in core.options
-- !!!

-- [[ Basic Vim Housekeeping ]] --
-- Enable Nerd Fonts
vim.g.have_nerd_font = false
-- Line numbers
-- vim.o.number = true
vim.o.relativenumber = true
-- Line text behavior (don't split words, disable line wrap by default)
vim.o.linebreak = true
vim.o.wrap = false
-- Enable mouse usage
vim.o.mouse = "a"
-- Use system clipboard
vim.schedule(function()
  vim.o.clipboard = "unnamedplus"
end)
-- Auto indentation
vim.o.autoindent = true
-- Tabs
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
-- Smart case sensitivity when using search
vim.o.ignorecase = true
vim.o.smartcase = true
-- Persistant history
vim.o.undofile = true
-- Autosave? TODO: wtf is this
vim.o.autowriteall = true
-- Disable ~ in empty lines
vim.opt.fillchars = { eob = " " }
-- TODO: ADD MORE

-- [[ lazy.nvim - Plugin manager ]] --
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    error("Error cloning lazy.nvim:\n" .. out)
  end
end

---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]
require("lazy").setup({
  require("plugins.auto-save"),
  require("plugins.blink-cmp"),
  require("plugins.bufferline"),
  -- require("plugins.nvim-tree"),
  require("plugins.lualine"),
  require("plugins.nvim-autopairs"),
  require("plugins.nvim-lspconfig"),
  require("plugins.nvim-treesitter"),
  require("plugins.mason"),
  require("plugins.snacks"),
  require("plugins.telescope"),
  require("plugins.themes.catppuccin"),
  require("plugins.themes.github-nvim-theme"),
  require("plugins.themes.nightfox"),
  require("plugins.themes.onedark"),
  require("plugins.which-key"),
})

-- Load all language configurations
require("languages").load_languages()
require("mason-lspconfig").setup {
  automatic_enable = {},
  ensure_installed = require("languages").ensure_installed
}
-- Load default theme
vim.cmd("colorscheme carbonfox")
-- Load Lualine config
require("core.statusline")
-- Centralized status line does not override until now
vim.opt.laststatus = 3
