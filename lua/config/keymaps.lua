-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Undo any unpreferred LazyVim keymaps
keymap.del("n", "H")
keymap.del("n", "L")
keymap.del("n", "<C-/>")
keymap.del("n", "<leader>|")
keymap.del("n", "<leader>-")

-- Buffer Navigation
keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", opts)
keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", opts)

-- Resize Window(s)
keymap.set("n", "<S-Up>", "<cmd>resize +2<CR>", { desc = "Increase Window Height" })
keymap.set("n", "<S-Down>", "<cmd>resize -2<CR>", { desc = "Decrease Window Height" })
keymap.set("n", "<S-Left>", "<cmd>vertical resize -2<CR>", { desc = "Decrease Window Width" })
keymap.set("n", "<S-Right>", "<cmd>vertical resize +2<CR>", { desc = "Increase Window Width" })

-- Opening window(s)
keymap.set("n", "<leader>h", "<C-W>s", { desc = "Split Window Horizontally, Below" })
keymap.set("n", "<leader>v", "<C-W>v", { desc = "Split Window Vertically, Right" })
