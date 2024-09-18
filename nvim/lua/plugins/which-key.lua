return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
      keys = {
        scroll_down = "<c-j>",
        scroll_up = "<c-k>",
      },
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
