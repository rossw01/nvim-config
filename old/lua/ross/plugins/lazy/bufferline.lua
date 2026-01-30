return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = {
    options = {
      buffer_close_icon = '󰅖 ',
      close_icon = '󰅖 ',
      tab_size = 24,
      get_element_icon = function(element)
        local icon, hl = require('nvim-web-devicons').get_icon_by_filetype(element.filetype, { default = false })
        return (icon and icon .. " " or nil), hl
      end,
      name_formatter = function(buf)
          if buf.name == "[No Name]" then
              return " New Buffer" -- The space is intentional
          else
              return buf.name
          end
      end
    },
  },
}
