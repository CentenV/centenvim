-- [[ Utility Functions ]] --

-- @param description string
-- @param opt vim.keybind.set.opt
-- @return vim.keybind.set.opt
function Keymap_opt(description, options)
	return vim.tbl_extend("force", options, { desc = description })
end
