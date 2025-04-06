return {
	"ibhagwan/fzf-lua",
	-- optional for icon support
	-- dependencies = { "nvim-tree/nvim-web-devicons" },
	-- or if using mini.icons/mini.nvim
	dependencies = { "echasnovski/mini.icons" },
	opts = {
		winopts = {
			preview = {
				layout = "vertical",
			},
		},
	},
	keys = {
		{
			"<leader>ff",
			function()
				require("fzf-lua").oldfiles()
			end,
			desc = "Find files in project directory",
		},
		{
			"<leader>fr",
			function()
				require("fzf-lua").live_grep()
			end,
			desc = "Find by grepping in project directory",
		},
		{
			"<leader>fc",
			function()
				require("fzf-lua").files({ cmd = vim.fn.stdpath("config") })
			end,
			desc = "Find in neovim configuration",
		},
		{
			"<leader>fb",
			function()
				require("fzf-lua").builtin()
			end,
			desc = "[F]ind [B]uiltin FZF",
		},
	},
}
