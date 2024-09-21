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
