return {
  "neovim/nvim-lspconfig",
  config = function()
    -- 旧: local lspconfig = require("lspconfig")
    -- 旧: lspconfig.pyright.setup({})

    -- 新: Neovim本体のインターフェースを経由する
    vim.lsp.config("pyright", {
      cmd = { "pyright-langserver", "--stdio" },
      filetypes = { "python" },
      root_markers = { ".git", "pyproject.toml", "setup.py" },
    })
    
    -- サーバーを有効化
    vim.lsp.enable("pyright")
  end,
}
