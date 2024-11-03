local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

vim.opt.rtp:prepend(lazypath)

local lazy_status, lazy = pcall(require, "lazy")
if not lazy_status then
  return
end

lazy.setup({
  spec = {
    {
      "nvim-treesitter/nvim-treesitter",
      build = function()
        require("nvim-treesitter.install").update({ with_sync = true })
      end,
    },
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
    {
      "nvim-telescope/telescope.nvim",
      tag = "0.1.8",
      dependencies = {
        "nvim-lua/plenary.nvim",
      },
    },
    {
      "nvimdev/lspsaga.nvim",
      config = function()
          require("lspsaga").setup({})
      end,
      dependencies = {
        "nvim-treesitter/nvim-treesitter",
        "nvim-tree/nvim-web-devicons",
      },
    },
    "sho-87/kanagawa-paper.nvim",
    "tpope/vim-surround",
    "vim-scripts/ReplaceWithRegister", -- (Y-w) then g-r-w to replace
    "numToStr/Comment.nvim",
    "nvim-tree/nvim-tree.lua",
    "kyazdani42/nvim-web-devicons",
    "nvim-lualine/lualine.nvim",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "hrsh7th/cmp-nvim-lsp",
    "onsails/lspkind.nvim",
    "jose-elias-alvarez/null-ls.nvim",
    "jayp0521/mason-null-ls.nvim",
    "windwp/nvim-autopairs",
    "windwp/nvim-ts-autotag",
    "SirVer/ultisnips",
    "mlaursen/vim-react-snippets",
    "lervag/vimtex",
    "wakatime/vim-wakatime",
    "f-person/git-blame.nvim",
    "debugloop/telescope-undo.nvim",
    "folke/which-key.nvim",
    { import = "ross.plugins.lazy" },
  },
  install = { 
    colorscheme = { "kanagawa-paper" }
  },
})
