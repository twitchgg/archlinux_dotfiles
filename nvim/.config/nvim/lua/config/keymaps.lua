-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set
map("v", "<leader>cn", ":CarbonNow<CR>", { desc = "Carbon Now", remap = true })

-- floating terminal
local lazyterm = function() LazyVim.terminal(nil, { cwd = LazyVim.root(), border = "rounded" }) end
map("n", "<c-/>", lazyterm, { desc = "Terminal (Root Dir)" })


-- if vim.g.neovide then
--   map("n", "<C-S-C>", '"+y', { desc = "Copy system clipboard" })
--   map("n", "<C-S-V>", '"+p', { desc = "Paste system clipboard" })
-- end
