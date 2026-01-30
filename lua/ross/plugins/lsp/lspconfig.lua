-- Load cmp_nvim_lsp capabilities
local ok_cmp, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not ok_cmp then return end

local capabilities = cmp_nvim_lsp.default_capabilities()

-- Shared on_attach
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

local on_attach = function(client, bufnr)
  keymap.set("n", "gr", "<cmd>Lspsaga finder<CR>", opts)
  keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
  keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts)
  keymap.set("n", "gi", vim.lsp.buf.implementation, opts)

  keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts)
  keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts)
  keymap.set("n", "<leader>d", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)

  keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
  keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
  keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
  keymap.set("n", "<leader>o", "<cmd>Lspsaga outline<CR>", opts)
end

-- Helper to define + enable server
local function setup(server_name, config)
  local cfg = vim.tbl_deep_extend("force", {
    capabilities = capabilities,
    on_attach = on_attach,
  }, config or {})

  vim.lsp.config(server_name, cfg)
  vim.lsp.enable(server_name)
end

---------------------------------------------------------------------
-- Language Servers
---------------------------------------------------------------------

setup("cssls")
setup("dockerls")
setup("jsonls")
setup("ts_ls")
setup("rnix")
setup("texlab")
setup("elp")
setup("roslyn")

setup("html", {
  filetypes = { "html" },
})

setup("emmet_ls", {
  filetypes = { "html", "heex", "tsx", "jsx", "js", "ts" },
})

setup("ruby_lsp", {
  filetypes = { "ruby", "eruby" },
  mason = false,
})

setup("elixirls", {
  filetypes = { "elixir", "heex" },
})

setup("clangd", {
  mason = false,
  cmd = { vim.fn.expand("clangd") },
  init_options = {
    usePlaceholders = true,
    completeUnimported = true,
    semanticHighlighting = true,
  },
})

setup("lua_ls", {
  mason = false,
  cmd = { vim.fn.expand("lua-lsp") },
})

setup("rust_analyzer", {
  mason = false,
  cmd = { vim.fn.expand("rust-analyzer") },
  checkOnSave = true,
  check = {
    command = "clippy",
    features = "all",
  },
  assist = {
    importGranularity = "module",
    importPrefix = "self",
  },
  diagnostics = {
    enable = true,
    enableExperimental = true,
  },
  cargo = {
    loadOutDirsFromCheck = true,
    features = "all",
  },
  inlayHints = {
    chainingHints = true,
    parameterHints = true,
    typeHints = true,
  },
})

setup("jdtls", {
  mason = false,
  cmd = {
    vim.fn.expand("jdtls"),
    "--jvm-arg=" .. string.format("-javaagent:%s", vim.fn.expand "~/.local/share/nvim/lombok.jar"),
  },
})
