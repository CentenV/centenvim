-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Buffer Navigation
keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", opts)
keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", opts)
