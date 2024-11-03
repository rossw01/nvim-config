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
    component_separators = {left = "", right = ""},
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch' },
    lualine_c = {},
    lualine_x = {
      {
        function ()
          return gitblame.get_current_blame_text() or ''
        end
      }
    },
    lualine_y = {
      { 'filetype', icon_only = true,  padding = { left = 1, right = 0 } },
      { 'filename' }
    },
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
