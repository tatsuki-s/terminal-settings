return {
  -- LSP設定
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp", -- 補完とLSPを繋ぐプラグイン
    },
    config = function()
      -- 補完機能をLSPに伝えるための設定
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      -- 1. Vue (vue_ls)
      vim.lsp.config('vue_ls', {
        capabilities = capabilities,
      })

      -- 2. TypeScript (Vueプラグイン込み)
      vim.lsp.config('ts_ls', {
        capabilities = capabilities,
        init_options = {
          plugins = {
            {
              name = "@vue/typescript-plugin",
              location = vim.fn.stdpath("data") .. "/mason/packages/vue-language-server/node_modules/@vue/language-server",
              languages = {"javascript", "typescript", "vue"},
            },
          },
        },
        filetypes = { "javascript", "typescript", "vue" },
      })

      -- 3. その他 (HTML, Emmet, Pyright)
      vim.lsp.config('html', { 
        capabilities = capabilities,
        filetypes = { "html", "vue" } -- vueを追加
      })
      vim.lsp.config('emmet_ls', { 
        capabilities = capabilities,
        filetypes = { "html", "vue", "css", "sass", "scss", "less" } -- vueを追加
      })	
      vim.lsp.config('pyright', { capabilities = capabilities })

      -- 全て有効化
      vim.lsp.enable('vue_ls')
      vim.lsp.enable('ts_ls')
      vim.lsp.enable('html')
      vim.lsp.enable('emmet_ls')
      vim.lsp.enable('pyright')
    end,
  },
}
