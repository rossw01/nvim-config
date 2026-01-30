local telescope_setup, telescope = pcall(require "telescope")
if not telescope_setup then
  return
end

local actions_setup, actions = pcall(require "telescope.actions")
if not actions_setup then
  return
end

local telescope

-- '["key"] = false' removes default mappings from telescope-undo
telescope.setup({
  extensions = {
    undo = {
      mappings = {
        i = {
          ["<cr>"] = require("telescope-undo.actions").restore,
          ["<C-cr>"] = require("telescope-undo.actions").restore,
          ["<S-cr>"] = false,
          ["<C-y>"] = false,
          ["<C-r>"] = false,
        },
        n = {
          ["<cr>"] = require("telescope-undo.actions").restore,
          ["<C-cr>"] = require("telescope-undo.actions").restore,
          ["y"] = false,
          ["Y"] = false,
          ["u"] = false,
        }
      }
    }
  }
})

telescope.load_extension("fzf")
telescope.load_extension("undo")
