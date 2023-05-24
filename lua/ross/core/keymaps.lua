vim.g.mapleader = " "

local keymap = vim.keymap
--general

keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>nh", ":nohl<CR>")
keymap.set("n", "x", '"_x') -- Prevents x storing deleted char in register

--Window management
keymap.set("n", "<leader>tt", ":tabnew<CR>")
keymap.set("n", "<M-w>", ":BufferClose<CR>")
keymap.set("n", "<leader>tl", ":BufferNext<CR>")
keymap.set("n", "<leader>th", ":BufferPrevious<CR>")
keymap.set("n", "<leader>tw", ":BufferClose<CR>")
keymap.set("n", "<C-1>", ":BufferGoto 1<CR>")
keymap.set("n", "<C-2>", ":BufferGoto 2<CR>")
keymap.set("n", "<C-3>", ":BufferGoto 3<CR>")
keymap.set("n", "<C-4>", ":BufferGoto 4<CR>")
keymap.set("n", "<C-5>", ":BufferGoto 5<CR>")
keymap.set("n", "<C-6>", ":BufferGoto 6<CR>")
keymap.set("n", "<C-7>", ":BufferGoto 7<CR>")
keymap.set("n", "<C-8>", ":BufferGoto 8<CR>")


--resize window
keymap.set("n", "<M-h>", ":vertical resize -5<CR>")
keymap.set("n", "<M-l>", ":vertical resize +5<CR>")

--nvim tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

--telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
keymap.set("n", "<leader>fw", "<cmd>Telescope live_grep<cr>") -- Find text throughout projects
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- Finds current str cursor is on
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- Help tag display

--floating terminal
keymap.set('n', '<M-3>', '<CMD>lua require("FTerm").toggle()<CR>')
keymap.set('t', '<M-3>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

