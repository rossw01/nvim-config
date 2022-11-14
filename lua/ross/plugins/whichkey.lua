local whichkey_setup, whichkey = pcall(require, "which-key")
if not whichkey_setup then
  return
end

local mappings = {
  f = {"Telescope", "Telescope"},
  n = {":nohl", "Unhighlight selected"},
  t = {"Tabs"}
}
local opts = {prefix = "<leader>"}
whichkey.register(mappings, opts)
