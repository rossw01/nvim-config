local opt = vim.opt
-- line numbers
opt.number = true;

-- tabs/indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true

--line wrapping
opt.wrap = false

--search settings
opt.ignorecase = true
opt.smartcase = true

--cursor line
opt.cursorline = true
opt.guicursor = "n-v-i-c:block-Cursor"


--appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "no" 

--backspace
opt.backspace = "indent,eol,start"

--clipboard
opt.clipboard:append("unnamedplus")

--split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

opt.scrolloff = 8 

opt.fillchars:append {eob = " "}

vim.g.vimtex_view_method = 'zathura'

-- TODO: Move these to their own neovide lua file
-- hehe its been years and i've still not done it :P
if vim.g.neovide then
  vim.g.neovide_cursor_animation_length = 0.1
  vim.g.neovide_input_macos_alt_is_meta = true
  vim.g.neovide_scale_factor = 1.0
  local change_scale_factor = function(delta)
    vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
  end
  vim.keymap.set("n", "<C-=>", function()
    change_scale_factor(1.25)
  end)
  vim.keymap.set("n", "<C-->", function()
    change_scale_factor(1/1.25)
  end)
end

vim.schedule(function()
  vim.api.nvim_set_hl(0, "PmenuSel", { bg = "#282C34", fg = "NONE" })
  vim.api.nvim_set_hl(0, "Pmenu", { fg = "#C5CDD9", bg = "#2A2A37" })

  vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated", { fg = "#DCD7BA", bg = "NONE", strikethrough = true })
  vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = "#82AAFF", bg = "NONE", bold = true })
  vim.api.nvim_set_hl(0, "CmpItemMenu", { fg = "#a6a69c", bg = "NONE", italic = true })

  vim.api.nvim_set_hl(0, "CmpItemKindField", { fg = "#EADFF0", bg = "#B5585F" })
  vim.api.nvim_set_hl(0, "CmpItemKindProperty", { fg = "#EADFF0", bg = "#B5585F" })
  vim.api.nvim_set_hl(0, "CmpItemKindEvent", { fg = "#EADFF0", bg = "#B5585F" })

  vim.api.nvim_set_hl(0, "CmpItemKindText", { fg = "#EADFF0", bg = "#9FBD73" })
  vim.api.nvim_set_hl(0, "CmpItemKindEnum", { fg = "#EADFF0", bg = "#9FBD73" })
  vim.api.nvim_set_hl(0, "CmpItemKindKeyword", { fg = "#EADFF0", bg = "#9FBD73" })

  vim.api.nvim_set_hl(0, "CmpItemKindConstant", { fg = "#EADFF0", bg = "#D4BB6C" })
  vim.api.nvim_set_hl(0, "CmpItemKindConstructor", { fg = "#EADFF0", bg = "#D4BB6C" })
  vim.api.nvim_set_hl(0, "CmpItemKindReference", { fg = "#EADFF0", bg = "#D4BB6C" })

  vim.api.nvim_set_hl(0, "CmpItemKindFunction", { fg = "#EADFF0", bg = "#A377BF" })
  vim.api.nvim_set_hl(0, "CmpItemKindStruct", { fg = "#EADFF0", bg = "#A377BF" })
  vim.api.nvim_set_hl(0, "CmpItemKindClass", { fg = "#EADFF0", bg = "#A377BF" })
  vim.api.nvim_set_hl(0, "CmpItemKindModule", { fg = "#EADFF0", bg = "#A377BF" })
  vim.api.nvim_set_hl(0, "CmpItemKindOperator", { fg = "#EADFF0", bg = "#A377BF" })

  vim.api.nvim_set_hl(0, "CmpItemKindVariable", { fg = "#EADFF0", bg = "#7E8294" })
  vim.api.nvim_set_hl(0, "CmpItemKindFile", { fg = "#EADFF0", bg = "#7E8294" })

  vim.api.nvim_set_hl(0, "CmpItemKindUnit", { fg = "#EADFF0", bg = "#D4A959" })
  vim.api.nvim_set_hl(0, "CmpItemKindSnippet", { fg = "#EADFF0", bg = "#D4A959" })
  vim.api.nvim_set_hl(0, "CmpItemKindFolder", { fg = "#EADFF0", bg = "#D4A959" })

  vim.api.nvim_set_hl(0, "CmpItemKindMethod", { fg = "#EADFF0", bg = "#6C8ED4" })
  vim.api.nvim_set_hl(0, "CmpItemKindValue", { fg = "#EADFF0", bg = "#6C8ED4" })
  vim.api.nvim_set_hl(0, "CmpItemKindEnumMember", { fg = "#EADFF0", bg = "#6C8ED4" })

  vim.api.nvim_set_hl(0, "CmpItemKindInterface", { fg = "#EADFF0", bg = "#58B5A8" })
  vim.api.nvim_set_hl(0, "CmpItemKindColor", { fg = "#EADFF0", bg = "#58B5A8" })
  vim.api.nvim_set_hl(0, "CmpItemKindTypeParameter", { fg = "#EADFF0", bg = "#58B5A8" })
end)
