local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

local status,packer = pcall(require, "packer")
if not status then
  return
end

return packer.startup(function(use)
  use("wbthomason/packer.nvim")

  --lua functions that many plugins require
  use("nvim-lua/plenary.nvim")
  --Colour scheme
  use("bluz71/vim-nightfly-guicolors")
  --Tmux & window split navigation (C-h/j/k/l)
  use("christoomey/vim-tmux-navigator")
  
  use("tpope/vim-surround") -- Surround something (y-s-motion[e.g. w]-char to surround)
  -- Can also delete surrounding char (d-s-motion-char) or change (c-s-motion-char)
  use("vim-scripts/ReplaceWithRegister") -- (Y-w) then g-r-w to replace

  -- commenting with gc
  use("numToStr/Comment.nvim")

  --file explorer
  use("nvim-tree/nvim-tree.lua")

  --icons
  use("kyazdani42/nvim-web-devicons")

  --status line
  use("nvim-lualine/lualine.nvim")

  -- Fuzzyfinding - Telescope
  use({"nvim-telescope/telescope-fzf-native.nvim", run = "make"}) 
  use({"nvim-telescope/telescope.nvim", branch = "0.1.x" })

  --Autocompletion
  use("hrsh7th/nvim-cmp")
  use("hrsh7th/cmp-buffer")
  use("hrsh7th/cmp-path")

  --snippets
  use("L3MON4D3/LuaSnip")
  use("saadparwaiz1/cmp_luasnip")
  use("rafamadriz/friendly-snippets")

  --Managing and installing lsp servers
  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")
  
  --configuring LSP servers
  use("neovim/nvim-lspconfig")
  use("hrsh7th/cmp-nvim-lsp")
  use({"glepnir/lspsaga.nvim", branch = "main"})
  use("jose-elias-alvarez/typescript.nvim")
  use("onsails/lspkind.nvim")


  -- formatting/linting
  use("jose-elias-alvarez/null-ls.nvim")
  use("jayp0521/mason-null-ls.nvim")

  -- treesitter
  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      require("nvim-treesitter.install").update({ with_sync = true })
    end,
  })

  --Auto closing
  use("windwp/nvim-autopairs")
  use("windwp/nvim-ts-autotag")

  --React Snippets
  use("SirVer/ultisnips")
  use("mlaursen/vim-react-snippets")

  --Floating Terminal
  -- use("voldikss/vim-floaterm")
  use("numToStr/FTerm.nvim")

  -- More tab control, tab icons, clean tab names
  use("romgrk/barbar.nvim")

  -- WhichKey
  use("folke/which-key.nvim");

  if packer_bootstrap then
    require("packer").sync()
  end
end)
