return {
  "mfussenegger/nvim-dap",
  dependencies = {
    { "jay-babu/mason-nvim-dap.nvim" },
    { "theHamsta/nvim-dap-virtual-text" },
    {
      "rcarriga/nvim-dap-ui",
      dependencies = {
        { "nvim-neotest/nvim-nio" },
        {
          "folke/lazydev.nvim",
          ft = "lua",
          opts = {
            library = { "nvim-dap-ui" }
          }
        }
      },
    },
    -- Load language specific adapters
    require("languages").dap_lang_plugins,
  },
  config = function()
    -- DAP/DAP UI configuration
    local dap, dapui = require("dap"), require("dapui")
    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    require("nvim-dap-virtual-text").setup()
  end,
}
