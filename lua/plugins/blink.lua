return {
	"saghen/blink.cmp",
	event = "InsertEnter",
	dependencies = { "rafamadriz/friendly-snippets" },
	version = "1.*",
	opts = {
		appearance = {
			nerd_font_variant = "mono"
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
		completion = {
			documentation = {
				auto_show = true
			},
			list = {
				selection = {
					preselect = false,
					auto_insert = true
				}
			}
		},
		fuzzy = { implementation = "prefer_rust_with_warning" },
		keymap = {
			["<C-k>"] = { "select_prev", "fallback"},
			["<C-j>"] = { "select_next", "fallback"},
			["<S-Tab>"] = { "select_prev", "fallback"},
			["<Tab>"] = { "select_next", "fallback"},
			["<Enter>"] = { "accept", "fallback"}
		}
	},
	opts_extend = { "sources.default" }
}
