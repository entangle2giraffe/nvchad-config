return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "ninja", "rst" } },
  },

  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      opts.autp_brackets = opts.autp_brackets or {}
      table.insert(opts.autp_brackets, "python")
    end,
  },

  {
    "linux-cultist/venv-selector.nvim",
    branch = "regexp",
    dependencies = {
      "neovim/nvim-lspconfig",
      { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } }
    },
    lazy = false,
    config = function ()
      require("venv-selector").setup()
    end,
    keys = {
      { "<C-A-v>", "<cmd>VenvSelect<cr>", { desc =  "Open VenvSelect" }},
      { "<C-A-c>", "<cmd>VenvSelectCached<cr>", { desc= "Venv from a cache"} }
    }
  }

}
