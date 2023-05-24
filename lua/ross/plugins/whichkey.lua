local whichkey_setup, whichkey = pcall(require, "which-key")
if not whichkey_setup then
  return
end

local mappings = {
  f = {"Telescope", "Telescope"},
  n = {"Unhighlight"},
  nh = {"Unhighlight"},
  t = {"Tabs"},
  e = {"Toggle File Explorer"},
  tt = {"New Tab"},
  tw = {"Close Tab"},
  th = {"Previous Tab"},
  tl = {"Next Tab"},
}
local opts = {prefix = "<leader>"}
whichkey.register(mappings, opts)
