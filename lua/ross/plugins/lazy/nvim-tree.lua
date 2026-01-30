return {
  "nvim-tree/nvim-tree.lua",
  -- dev = true,
  opts = {
    actions = {
      open_file = {
        window_picker = {
          enable = false,
        },
      },
    },
    filters = {
      exclude = {
        -- ".env",
      }
    },
    renderer = {
      icons = {
        git_placement = "right_align",
        padding = " ",
        show = {
          folder_arrow = false,
        },
        glyphs = {
          folder = {
            arrow_closed = "",
            arrow_open = "",
          },
          git = {
            unstaged = "",
            staged = "",
            unmerged = "",
            renamed = "",
            untracked = "",
            deleted = "",
            ignored = "",
          },
        },
      },
      indent_markers = {
        enable = true,
        icons = {
          item = "├",
        },
      }
    }
  }
}
