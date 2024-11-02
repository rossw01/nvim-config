-- Bubbles config for lualine
-- Authors: lokesh-krishna, rossw01
-- MIT license, see LICENSE for more details.

gitblame = require('gitblame')

require('lualine').setup {
  options = {
    disabled_filetypes = { 
      "packer",
      "NvimTree",
    },
    theme = 'kanagawa-paper',
    component_separators = {left = " ", right = " "},
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      { 'mode', right_padding = 1, left_padding = 2 },
    },
    lualine_b = { 'filename' },
    lualine_c = { 'branch' },
    lualine_x = { {
      function ()
        return gitblame.get_current_blame_text() or ''
      end
    } },
    lualine_y = { 'filetype' },
    lualine_z = {
      { 'location' },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  extensions = {},
}
