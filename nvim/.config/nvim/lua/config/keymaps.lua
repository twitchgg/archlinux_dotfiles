-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set
local wk = require("which-key")
map("v", "<leader>cn", ":CarbonNow<CR>", { desc = "Carbon Now", remap = true })

map("n", "<c-/>", ":ToggleTerm direction=float <CR>", { desc = "Open terminal" })
-- map("n", "<leader>bt", ":ToggleTerm direction=float <CR>", { desc = "Open terminal" })
wk.add({ "<leader>o", group = "Neorg" })
map("n", "<leader>oi", ":Neorg index<CR>", { desc = "Neorg Index", remap = true })
map("n", "<leader>ow", ":Neorg workspace work<CR>", { desc = "Neorg Workspace Work", remap = true })
map("n", "<leader>on", ":Neorg workspace notes<CR>", { desc = "Neorg Workspace Notes", remap = true })
map("n", "<leader>or", ":Neorg return<CR>", { desc = "Return to previous editor status", remap = true })

wk.add({ "<leader>m", group = "Marks" })
map("n", "<leader>ma", ":MarksListAll<CR>",
  { desc = "Fill the location list with all marks in all open buffers", remap = true })
map("n", "<leader>mb", ":BookmarksListAll<CR>",
  { desc = "Fill the location list with all bookmarks, across all groups", remap = true })

wk.add({ "<leader>z", group = "Projects" })
map("n", "<leader>zz", ":NeovimProjectDiscover<CR>",
  { desc = "Find a project based on patterns.", remap = true })
map("n", "<leader>zr", ":NeovimProjectHistory<CR>",
  { desc = "Select a project from your recent history.", remap = true })
map("n", "<leader>zl", ":NeovimProjectLoadRecent<CR>",
  { desc = "Open the previous session.", remap = true })
map("n", "<leader>zp", ":NeovimProjectLoadHist<CR>",
  { desc = "Opens the project from the history providing a project dir.", remap = true })
map("n", "<leader>zb", ":NeovimProjectLoad<CR>",
  { desc = "Opens the project from all your projects providing a project dir.", remap = true })
