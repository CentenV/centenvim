-- [[ Keymaps ]] --
require("util")

local keymap = vim.keymap

-- <leader>
vim.g.mapleader = " "
vim.g.maplocalleader = " "
keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

local options = {
  noremap = true,
  silent = true,
}

-- Basic Vim
keymap.set("n", "<leader>qq", "<cmd> qa <CR>", Keymap_opt("Quit", options))
keymap.set({ "n", "v" }, "d", '"_d', options)
keymap.set({ "v" }, "s", '"_s', options)

-- Buffer Management
-- list of buffers
-- navigation
keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", Keymap_opt("Previous Buffer", options))
keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", Keymap_opt("Next Buffer", options))
-- close
keymap.set("n", "<leader>bd", function()
  Snacks.bufdelete()
end, Keymap_opt("Close Buffer", options))
-- reorder
keymap.set("n", "<leader>b<Left>", "<cmd>BufferLineMovePrev<CR>", Keymap_opt("Move Buffer Left", options))
keymap.set("n", "<leader>b<Right>", "<cmd>BufferLineMoveNext<CR>", Keymap_opt("Move Buffer Left", options))

-- Window Management
-- navigation
keymap.set("n", "<C-h>", "<C-w>h", Keymap_opt("Move to Left Window", options))
keymap.set("n", "<C-j>", "<C-w>j", Keymap_opt("Move to Bottom Window", options))
keymap.set("n", "<C-k>", "<C-w>k", Keymap_opt("Move to Top Window", options))
keymap.set("n", "<C-l>", "<C-w>l", Keymap_opt("Move to Right Window", options))
-- resize
keymap.set("n", "<S-Up>", "<cmd>resize +2<CR>", { desc = "Increase Window Height" })
keymap.set("n", "<S-Down>", "<cmd>resize -2<CR>", { desc = "Decrease Window Height" })
keymap.set("n", "<S-Left>", "<cmd>vertical resize -2<CR>", { desc = "Decrease Window Width" })
keymap.set("n", "<S-Right>", "<cmd>vertical resize +2<CR>", { desc = "Increase Window Width" })
-- open
keymap.set("n", "<leader>h", "<C-W>s", { desc = "Split Window Horizontally, Below" })
keymap.set("n", "<leader>v", "<C-W>v", { desc = "Split Window Vertically, Right" })
-- close
-- keymap.set("n", "<leader>wd", "<cmd>", Keymap_opt("Close Window", options))

-- File explorer
local file_explorer_position = "right"
keymap.set(
  { "n", "v" },
  "<leader>e",
  string.format("<cmd> Neotree filesystem toggle %s <CR>", file_explorer_position),
  Keymap_opt("File Explorer", options)
)

-- Search
keymap.set("n", "<leader><leader>", "<cmd> Telescope find_files <CR>", Keymap_opt("Open File", options))
keymap.set("n", "<leader>/", "<cmd> Telescope live_grep <CR>", Keymap_opt("Search", options))

-- Lazy
keymap.set("", "<leader>l", "<cmd> Lazy <CR>", Keymap_opt("Lazy", options))
