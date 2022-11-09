vim.g.mapleader = " "

local keymap = vim.keymap
--general

keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>nh", ":nohl<CR>")
keymap.set("n", "x", '"_x') -- Prevents x storing deleted char in register

--Window management
keymap.set("n", "<leader>tt", ":tabnew<CR>")
keymap.set("n", "<leader>tw", ":tabclose<CR>")
keymap.set("n", "<leader>tl", ":tabn<CR>")
keymap.set("n", "<leader>th", ":tabp<CR>")

--nvim tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

--telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fw", "<cmd>Telescope live_grep<cr>") -- Find text throughout projects
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- Finds current str cursor is on
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- Help tag display

--floating terminal
-- keymap.set("n", "<M-3>", "<cmd>")
keymap.set('n', '<M-3>', '<CMD>lua require("FTerm").toggle()<CR>')
keymap.set('t', '<M-3>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

