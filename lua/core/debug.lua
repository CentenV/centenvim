-- [[ Debug Configurations ]] --
local dap = require("dap")

dap.configurations.python = {
  {
    name = "Python - Launch",
    type = "python",
    request = "launch",
    program = "${file}",
    cwd = vim.fn.getcwd(),
  }
}
