local setup, autotag = pcall(require, "nvim-ts-autotag")
if not autotag then
  return
end

autotag.setup({
  opts = {
    enable_close = true,
    enable_rename = true,
    enable_close_on_slash = false
  }
})
