return {
  {
    'williamboman/mason.nvim',
    tag = 'v1.11.0', -- Can remove tags once Nix stable gets nvim 1.11
    opts = {
      registries = {
        "github:mason-org/mason-registry",
        "github:Crashdummyy/mason-registry",
      },
    },
  },
  {
    'williamboman/mason-lspconfig.nvim',
    tag = 'v1.32.0',
    dependencies = {
      'williamboman/mason.nvim'
    },
    opts = {
      ensure_installed = {
        "ts_ls",
        "html",
        "cssls",
        "eslint",
        "bashls",
        "emmet_ls",
      }
    },
  },
  {
    'jayp0521/mason-null-ls.nvim',
    opts = {
      ensure_installed = {
        "eslint_d"
      }
    }
  }
}
