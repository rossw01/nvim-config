local setup, vimtex = pcall(require, "vimtex")
if not setup then
  return
end

vim.g.vimtex_view_method = "sioyek"
vim.g.vimtex_view_general_view = "sioyek"
