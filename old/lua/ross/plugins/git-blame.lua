local setup, gitblame = pcall(require, 'gitblame')
if not setup then
  return
end

gitblame.setup({
  delay = 50,
  date_format = "%r",
  display_virtual_text = false
})
