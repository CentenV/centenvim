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
keymap.set("v", "s", '"_s', options)

-- Buffer Management
-- list of buffers
-- navigation
keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", Keymap_opt("Previous Buffer", options))
keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", Keymap_opt("Next Buffer", options))
-- close
keymap.set("n", "<leader>bd", function()
  require("snacks").bufdelete()
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
keymap.set("n", "<leader>h", "<C-w>s", { desc = "Split Window Horizontally" })
keymap.set("n", "<leader>v", "<C-w>v", { desc = "Split Window Vertically" })
-- close
keymap.set("n", "<leader>wd", "<C-w>q", Keymap_opt("Close Window", options))
keymap.set("n", "<leader>w=", "<C-w>=", Keymap_opt("Reset Window(s)", options))

-- File explorer
keymap.set(
  { "n", "v" },
  "<leader>e",
  -- "<cmd> Neotree filesystem toggle right <CR>"
  function()
    require("snacks").picker.explorer()
  end,
  Keymap_opt("File Explorer", options)
)

-- Search
-- files
keymap.set("n", "<leader><leader>", function()
  require("snacks").picker.files({
    hidden = true,
    ignored = true,
  })
end, Keymap_opt("Open File", options))
-- grep
keymap.set("n", "<leader>/", function()
  require("snacks").picker.grep()
end, Keymap_opt("Grep in Files", options))
-- keybinds
keymap.set("n", "<leader>sk", function()
  require("snacks").picker.keymaps()
end, Keymap_opt("Keymaps", options))

-- Git
keymap.set("n", "<leader>fgd", function()
  require("snacks").picker.git_diff()
end, Keymap_opt("Git Diff", options))

-- UI
-- theme management
keymap.set("n", "<leader>ut", "<cmd> Telescope colorscheme <CR>", Keymap_opt("Theme", options))

-- Lazy
keymap.set("n", "<leader>la", "<cmd> Lazy <CR>", Keymap_opt("Lazy", options))

-- LSPs
keymap.set("n", "<leader>ma", "<cmd> Mason <CR>", Keymap_opt("Mason", options))
keymap.set("n", "<C-Space>", vim.lsp.buf.hover, options)

-- Coding
-- commenting
keymap.set("n", "<C-c>", "gcc", options)
keymap.set("v", "<C-c>", "gc", options)

