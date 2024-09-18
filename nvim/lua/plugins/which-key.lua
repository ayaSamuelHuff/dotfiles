local M = {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        
    },
    config = function(_, opts)
        local wk = require("which-key")
        wk.setup(opts)
    end,
}

return M
