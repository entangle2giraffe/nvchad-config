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
  }
}
