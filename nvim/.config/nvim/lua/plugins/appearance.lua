return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		init = function()
			require("catppuccin").setup({
				transparent_background = true,
				-- add transparent
				float = {
					transparent = true,
				},
				styles = {
					comments = { "italic" },
				},
			})
			vim.cmd("colorscheme catppuccin")
		end,
	},
}
