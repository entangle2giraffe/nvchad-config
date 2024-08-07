return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = {
      require "configs.conform",
      formatters_by_ft = {
        go = { "goimports", "gofumpt" },
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
        "lua", "markdown", "markdown_inline",
        "python",
        "rust", "ron", -- Rust
        "go", "gomod", "gowork", "gosum" -- Golang
  		},
  	},
  },

}
