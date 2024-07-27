local whichkey_setup, whichkey = pcall(require, "which-key")
if not whichkey_setup then
  return
end

whichkey.add({
  { "<leader>f", desc = "Telescope", icon = {icon = "󰭎", color = "purple"}},
  { "<leader>fb", desc = "Search Buffers", icon = {icon = "󰭎", color = "purple"}},
  { "<leader>ff", desc = "Search Files", icon = {icon = "󰭎", color = "purple"}},
  { "<leader>fw", desc = "Search", icon = {icon = "󰭎", color = "purple"}},
  { "<leader>fc", desc = "Search String", icon = {icon = "󰭎", color = "purple"}},
  { "<leader>fh", desc = "Search :help", icon = {icon = "󰭎", color = "purple"}},
  { "<leader>n", desc = "Unhighlight", icon = {icon = "󰸱", color = "yellow"}},
  { "<leader>nh", desc = "Unhighlight", icon = {icon = "󰸱", color = "yellow"}},
  { "<leader>t", desc = "Tabs", icon = {icon = "󰓩", color = "blue"}},
  { "<leader>e", desc = "Toggle File Explorer", icon = {icon = "󰙅", color = "green"}},
  { "<leader>tt", desc = "New Tab", icon = {icon = "󰓩", color = "blue"}},
  { "<leader>tw", desc = "Close Tab", icon = {icon = "󰓩", color = "blue"}},
  { "<leader>th", desc = "Previous Tab", icon = {icon = "󰓩", color = "blue"}},
  { "<leader>tl", desc = "Next Tab", icon = {icon = "󰓩", color = "blue"}},
})

whichkey.setup({
  delay = 600;
  icons = {
    group = "",
  },
  win = {
    no_overlap = true;
    border = "rounded",
  },
  layout = {
    height = { min = 4, max = 25 },
    width = { min = 20, max = 50 },
    spacing = 3,
    align = "left",
  },
})

-- Customize the highlight group for which-key groups
vim.api.nvim_set_hl(0, "WhichKeyGroup", { bg = "NONE", bold = true })
-- vim.api.nvim_set_hl(0, "WhichKeyGroup", { fg = "#d3869b", bg = "NONE", bold = true })
