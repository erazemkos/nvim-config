require "nvchad.mappings" -- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
--
map({ "n", "t" }, "<M-C-V>", function()
  require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm" }
end, { desc = "toggle vertical term" })

map({ "n", "t" }, "<M-C-H>", function()
  require("nvchad.term").toggle { pos = "sp", id = "htoggleTerm" }
end, { desc = "toggle horizontal term" })

-- Lsp calls definitions/references etc
map("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)
map("n", "gr", "<cmd>Telescope lsp_references<CR>", opts)
map("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)
map("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)

-- Debugging

map("n", "<leader>dt", ":lua require('dapui').toggle()<CR>", opts)
map("n", "<leader>db", ":DapToggleBreakpoint<CR>", opts)
map("n", "<F8>", ":DapStepOver<CR>", opts)
map("n", "<F9>", ":DapContinue<CR>", opts)
map("n", "<F19>", ":DapStepInto<CR>", opts) -- Shift F7
map("n", "<leader>dr", ":lua require('dapui').open({reset = true })<CR>", opts)
