vim.g.mapleader = " "
vim.g.maplocalleader = " " -- i loveeee combining localleader and leader

local keymap = vim.keymap
--general

keymap.set("n", "<leader>nh", ":nohl<CR>")
keymap.set("n", "x", '"_x') -- Prevents x storing deleted char in register

--Window management
keymap.set("n", "<leader>tt", ":enew<CR>")
keymap.set("n", "<leader>tl", ":bnext<CR>")
keymap.set("n", "<leader>th", ":bprev<CR>")
keymap.set("n", "<leader>tw", ":bdelete<CR>")
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-l>", "<C-w>l")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")


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
keymap.set("n", "<leader>fu", "<cmd>Telescope undo<cr>")
