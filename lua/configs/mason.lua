local options = {
  ensure_installed = {
    -- Go
    "goimports",
    "gofumpts",
    "delve",
    "gomodifytags",
    "impl",
    "gopls",
    "pyright",
    -- Python
    "isort",
    "ruff",
    -- Rust
    "rust-analyzer"
  }
}

return options
