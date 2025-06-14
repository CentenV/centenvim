-- [[ Keymaps ]] --
require("util")

local keymap = vim.keymap

-- Set Space to <leader>
vim.g.mapleader = " "
vim.g.maplocalleader = " "
keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

local options = {
	noremap = true,
	silent = true,
}

-- Basic Vim
keymap.set({ "n", "v" }, "d", '"_d', options)

-- File explorer
local file_explorer_position = "right"
keymap.set(
	{ "n", "v" },
	"<leader>e",
	string.format("<cmd> Neotree filesystem reveal %s <CR>", file_explorer_position),
	-- Keymap_opt("Open file explorer", options)
  options
)
