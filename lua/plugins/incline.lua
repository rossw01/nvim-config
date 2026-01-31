return {
	"b0o/incline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local helpers = require("incline.helpers")
		local devicons = require("nvim-web-devicons")

		local function custom_bar(props)
			if not props.focused then
				return
			end

			local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")

			local ft_icon, ft_color = devicons.get_icon_color(filename)
			local modified = vim.bo[props.buf].modified

			return {
				{ filename, gui = modified and "bold,italic" or "bold" },
				" ",
				ft_icon and {
					" ",
					ft_icon,
					" ",
					guibg = ft_color,
					guifg = helpers.contrast_color(ft_color),
				} or "",
				guibg = "#222222",
			}
		end

		require("incline").setup({
			render = custom_bar,
			window = {
				margin = { horizontal = 0 },
				padding = 0,
			},
		})
	end,
}
