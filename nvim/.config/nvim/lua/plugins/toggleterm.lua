return {
  {
    "akinsho/toggleterm.nvim",
    lazy = false,
    cmd = "ToggleTerm",
    build = ":ToggleTerm",
    keys = { { "<leader>\\", "<cmd>ToggleTerm<cr>", desc = "Toggle floating terminal" } },
    opts = {
      open_mapping = [[<leader>\]],
      direction = "horizontal",
      shade_filetypes = {},
      hide_numbers = true,
      insert_mappings = true,
      terminal_mappings = true,
      start_in_insert = true,
      close_on_exit = true,
    },
  },
}
