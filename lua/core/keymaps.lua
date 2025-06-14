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
keymap.set("n", "<leader>qq", "", Keymap_opt("Quit", options))
keymap.set({ "n", "v" }, "d", '"_d', options)
keymap.set({ "v" }, "s", '"_s', options)

-- Buffer Management
-- navigation
keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", Keymap_opt("Previous Buffer", options))
keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", Keymap_opt("Next Buffer", options))
-- open/close
-- keymap.set("n", "", )

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
-- open/close
keymap.set("n", "<leader>h", "<C-W>s", { desc = "Split Window Horizontally, Below" })
keymap.set("n", "<leader>v", "<C-W>v", { desc = "Split Window Vertically, Right" })

-- File explorer
local file_explorer_position = "right"
keymap.set(
  { "n", "v" },
  "<leader>e",
  string.format("<cmd> Neotree filesystem reveal %s <CR>", file_explorer_position),
  Keymap_opt("File Explorer", options)
)

-- Lazy
keymap.set("", "<leader>l", "<cmd> Lazy <CR>", Keymap_opt("Lazy", options))
