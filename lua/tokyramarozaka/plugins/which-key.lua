return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    defaults = {
      ["<leader>f"] = { name = "+find" },
      ["<leader>e"] = { name = "+file explorer" },
      ["<leader>c"] = { name = "+code" },
      ["<leader>r"] = { name = "+refactor" },
      ["<leader>s"] = { name = "+split window" },
      ["<leader>w"] = { name = "+save session" },
    },
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)
    wk.register(opts.defaults)
  end,
}
