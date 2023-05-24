-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

-- stylua: ignore
-- local colors = {
--   blue   = '#80a0ff',
--   cyan   = '#79dac8',
--   black  = '#080808',
--   white  = '#c6c6c6',
--   red    = '#ff5189',
--   violet = '#d183e8',
--   grey   = '#303030',
--   navy   = '#011627',
--   lNavy  = '#183143',
--   yellow = '#ffa800',
-- }
-- 
-- local bubbles_theme = {
--   normal = {
--     a = { gui = "bold", fg = colors.black, bg = colors.violet },
--     b = { fg = colors.white, bg = colors.grey},
--     c = { fg = colors.navy, bg = colors.navy},
--   },
-- 
--   insert = { a = { fg = colors.black, bg = colors.blue } },
--   visual = { a = { fg = colors.black, bg = colors.cyan } },
--   replace = { a = { fg = colors.black, bg = colors.red } },
--   command = { a = { fg = colors.black, bg = colors.yellow } },
-- 
--   inactive = {
--     a = { fg = colors.white, bg = colors.navy},
--     b = { fg = colors.white, bg = colors.navy},
--     c = { fg = colors.black, bg = colors.navy},
--   },
-- }
-- 
--
require('lualine').setup {
  options = {
    theme = 'gruvbox',
    component_separators = { left = ')', right = '('},
    section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      { 'mode', right_padding = 2, left_padding = 2 },
    },
    lualine_b = { 'filename', 'branch' },
    -- lualine_c = { 'fileformat' }, Will need to change colours on line 23 to re-enable
    lualine_c = {},
    lualine_x = {},
    lualine_y = { 'filetype', 'progress' },
    lualine_z = {
      { 'location', left_padding = 2 },
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
