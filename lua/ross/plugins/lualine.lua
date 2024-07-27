-- Bubbles config for lualine
-- Authors: lokesh-krishna, rossw01
-- MIT license, see LICENSE for more details.

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
      { 'mode', right_padding = 2, left_padding = 2 },
    },
    lualine_b = { 'filename', 'branch' },
    lualine_c = {},
    lualine_x = {},
    lualine_y = { 'filetype' },
    lualine_z = {
      { 'location'},
      -- { 'location', left_padding = 2, right_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}
