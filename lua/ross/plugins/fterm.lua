local FTerm_setup, FTerm = pcall(require "FTerm")
if not FTerm_setup then
  return
end

FTerm.setup({
  border = 'double',
  dimensions  = {
    height = 0.9,
    width = 0.9,
  },
})
