-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set
local wk = require("which-key")
map("v", "<leader>cn", ":CarbonNow<CR>", { desc = "Carbon Now", remap = true })

-- floating terminal
local lazyterm = function() LazyVim.terminal(nil, { cwd = LazyVim.root(), border = "rounded" }) end
map("n", "<c-/>", lazyterm, { desc = "Terminal (Root Dir)" })

wk.add({ "<leader>o", group = "Neorg" })
map("n", "<leader>oi", ":Neorg index<CR>", { desc = "Neorg Index", remap = true })
map("n", "<leader>ow", ":Neorg workspace work<CR>", { desc = "Neorg Workspace Work", remap = true })
map("n", "<leader>on", ":Neorg workspace notes<CR>", { desc = "Neorg Workspace Notes", remap = true })
map("n", "<leader>or", ":Neorg return<CR>", { desc = "Return to previous editor status", remap = true })
