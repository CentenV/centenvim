-- [[ Utility Functions ]] --

-- Options to pass into vim.keymap.set that combines the description and typical config options
-- @param description string
-- @param options vim.keybind.set.opt
-- @return vim.keybind.set.opt
function keymap_opt(description, options)
	return vim.tbl_extend("force", options, { desc = description })
end
