local lspconfig_status, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status then 
  return
end

local cmp_nvim_lsp_status, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not cmp_nvim_lsp_status then
  return
end

local keymap = vim.keymap

-- enable keybinds for available lsp server
local on_attach = function(client, bufnr)
  -- set keybinds
  keymap.set("n", "gf", "<cmd>Lspsaga lsp_finder<CR>", opts) -- show definition, references
  keymap.set("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts) -- got to declaration
  keymap.set("n", "gd", "<cmd>Lspsaga peek_definition<CR>", opts) -- see definition and make edits in window
  keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts) -- go to implementation

  keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opts) -- see available code actions
  keymap.set("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opts) -- smart rename
  keymap.set("n", "<leader>d", "<cmd>Lspsaga show_line_diagnostics<CR>", opts) -- show  diagnostics for line
  keymap.set("n", "<leader>d", "<cmd>Lspsaga show_cursor_diagnostics<CR>", opts) -- show diagnostics for cursor

  keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts) -- jump to previous diagnostic in buffer
  keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts) -- jump to next diagnostic in buffer
  keymap.set("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts) -- show documentation for what is under cursor
  keymap.set("n", "<leader>o", "<cmd>Lspsaga outline<CR>", opts) -- see outline on right hand side
end

-- used to enable autocompletion
local capabilities = cmp_nvim_lsp.default_capabilities()

lspconfig["html"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

lspconfig["cssls"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

lspconfig["dockerls"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

lspconfig["jsonls"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

lspconfig["ts_ls"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

lspconfig["rust_analyzer"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})

lspconfig["ruby_lsp"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  filetypes = { "ruby", "eruby" },
  mason = false,
  cmd = { vim.fn.expand("~/.rbenv/shims/ruby-lsp") }
})

lspconfig["emmet_ls"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
})

lspconfig["clangd"].setup({
  capabilities = capabilities,
  on_attach = on_attach,
  init_options = {
    compileCommands = "./build/compile_commands.json",
    usePlaceholders = true,
    completeUnimported = true,
    semanticHighlighting = true,
  }
})

lspconfig["texlab"].setup({
  capabilities = capabilities,
  on_attach = on_attach
})
