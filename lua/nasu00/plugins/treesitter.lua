return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  -- depricated

  -- dependencies = {
  --   "windwp/nvim-ts-autotag",
  -- },
  config = function()
    -- import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter.configs")

    -- configure treesitter
    treesitter.setup({ -- enable syntax highlighting
      highlight = {
        enable = true,
      },
      -- enable indentation
      indent = { enable = true },

      -- depricated

      -- enable autotagging (w/ nvim-ts-autotag plugin)
      -- autotag = {
      --   enable = true,
      -- },
      -- ensure these language parsers are installed
      ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "tsx",
        "toml",
        "yaml",
        "html",
        "css",
        "markdown",
        "markdown_inline",
        "svelte",
        "bash",
        "lua",
        "vim",
        "vimdoc",
        "dockerfile",
        "gitignore",
        "query",
        "go",
        "sql",
        "vue",
        "python",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
