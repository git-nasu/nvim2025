return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    message = {
      enabled = true, -- enables the Noice messages UI
      view = "mini", -- default view for messages
      view_error = "mini", -- view for errors
      view_warn = "mini", -- view for warnings
      view_history = "mini", -- view for :messages
      view_search = "mini", -- view for search count messages. Set to `false` to disable
    },
    notify = {
      enabled = true,
      view = "mini",
    },
    lsp = {
      message = {
        enabled = true,
        view = "mini",
      },
    },
    views = {
      -- This sets the position for the search popup that shows up with / or with :
      cmdline_popup = {
        position = {
          row = "40%",
          col = "50%",
        },
      },
      mini = {
        -- timeout = 5000 , --timeout in milliseconds
        timeout = vim.g.neovim_mode == "skitty" and 2000 or 5000,
        align = "center",
        position = {
          -- Centers messages top to bottom
          row = "95%",
          -- Aligns messages to the for right
          col = "100%",
        },
      },
    },
  },
}
