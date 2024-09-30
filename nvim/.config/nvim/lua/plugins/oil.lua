return {
  "stevearc/oil.nvim",
  cmd = "Oil",
  build = ":Oil",
  dependencies = { "nvim-tree/nvim-web-devicons" },

  keys = {
    {
      "<leader>e",
      "<cmd>Oil --float<cr>",
      desc = "Oil File Explorer",
    },
  },
  opts = {
    open_mapping = [[<leader>e]],
    default_file_explorer = true,
    view_options = {
      show_hidden = true,
    },
    watch_for_changes = true,
    columns = {
      "icon",
      -- "permissions",
      -- "size",
      -- "mtime",
    },
    -- Skip the confirmation popup for simple operations (:help oil.skip_confirm_for_simple_edits)
    skip_confirm_for_simple_edits = true,
    -- Selecting a new/moved/renamed file or directory will prompt you to save changes first
    -- (:help prompt_save_on_select_new_entry)
    prompt_save_on_select_new_entry = false,
    float = {
      -- Padding around the floating window
      padding = 2,
      max_width = 150,
      max_height = 0,
      border = "rounded",
      win_options = {
        winblend = 0,
      },
      -- preview_split: Split direction: "auto", "left", "right", "above", "below".
      preview_split = "auto",
      -- This is the config that will be passed to nvim_open_win.
      -- Change values here to customize the layout
      override = function(conf)
        return conf
      end,
    },
  },
}
