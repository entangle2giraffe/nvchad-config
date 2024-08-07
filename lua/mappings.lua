require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Custom Keymap
map("n", "<leader>rn", ":set relativenumber!<CR>", { desc = "Toggles relativenumber" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
