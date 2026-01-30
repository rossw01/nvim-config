local which_key = {
  "folke/which-key.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  event = "VeryLazy",
}

function which_key.config()
  local wk = require("which-key")
  wk.setup({
    delay = 600,
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

  wk.add({
    { "<leader>f", desc = "Telescope", icon = {icon = "󰭎", color = "purple"}},
    { "<leader>fb", desc = "Search Buffers", icon = {icon = "󰭎", color = "purple"}},
    { "<leader>ff", desc = "Search Files", icon = {icon = "󰭎", color = "purple"}},
    { "<leader>fw", desc = "Search", icon = {icon = "󰭎", color = "purple"}},
    { "<leader>fc", desc = "Search String", icon = {icon = "󰭎", color = "purple"}},
    { "<leader>fh", desc = "Search :help", icon = {icon = "󰭎", color = "purple"}},
    { "<leader>fu", desc = "Search Undo Tree", icon = {icon = "󰭎", color = "purple"}},
    { "<leader>n", desc = "Unhighlight", icon = {icon = "󰸱", color = "yellow"}},
    { "<leader>nh", desc = "Unhighlight", icon = {icon = "󰸱", color = "yellow"}},
    { "<leader>t", desc = "Tabs", icon = {icon = "󰓩", color = "blue"}},
    { "<leader>e", desc = "Toggle File Explorer", icon = {icon = "󰙅", color = "green"}},
    { "<leader>tt", desc = "New Buffer", icon = {icon = "󰓩", color = "blue"}},
    { "<leader>tw", desc = "Close Buffer", icon = {icon = "󰓩", color = "blue"}},
    { "<leader>th", desc = "Previous Buffer", icon = {icon = "󰓩", color = "blue"}},
    { "<leader>tl", desc = "Next Buffer", icon = {icon = "󰓩", color = "blue"}},
  })

  vim.api.nvim_set_hl(0, "WhichKeyGroup", { bg = "NONE", bold = true })
end

return which_key
