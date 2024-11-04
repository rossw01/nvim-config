return {
  'nvimdev/lspsaga.nvim',
  opts = {
    move_in_saga = { prev = "<C-j>", next = "<C-k>" },
    finder_action_keys = {
      open = "<CR>",
    },
    definition_action_keys = {
      edit = "<CR>",
    },
    ui = {
      sign = false,
    },
  },
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  event = "LspAttach",
}
