local function open_hook(buffer, _)
	vim.keymap.set("n", "q", function()
		require("goto-preview").close_all_win()
	end, { buffer = buffer, silent = true })
end

local function close_hook(buffer, _)
	pcall(vim.keymap.del, "n", "q", { buffer = buffer })
end

return {
	"rmagatti/goto-preview",
	dependencies = { "rmagatti/logger.nvim" },
	event = "BufEnter",
	config = function()
		require("goto-preview").setup({
			post_open_hook = open_hook,
			post_close_hook = close_hook,
			force_close = true,
			height = 25,
			border = {"╭", "─" ,"╮", "│", "╯", "─", "╰", "│"},
			preview_window_title = {
				position = "center"
			},
		})
	end
}
