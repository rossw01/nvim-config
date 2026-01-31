return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			-- Conform will run multiple formatters sequentially
			-- You can customize some of the format options for the filetype (:help conform.format)
			-- Conform will run the first available formatter
			-- python = { "isort", "black" },
			-- rust = { "rustfmt", lsp_format = "fallback" },
			-- javascript = { "prettierd", "prettier", stop_after_first = true },
			lua = { "stylua" },
		},
		format_on_save = {
			lsp_format = "fallback", -- LSP formatting is used when no other formatters are available
		},
	},
}
