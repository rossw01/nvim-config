-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

-- configure treesitter
treesitter.setup({
  highlight = {
    enable = true,
  },
  indent = { enable = true },
  ensure_installed = {
    "json",
    "javascript",
    "typescript",
    "tsx",
    "html",
    "css",
    "markdown",
    "bash",
  },
  auto_install = true,
})
