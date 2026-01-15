return {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "pyright" }, -- 自動で Python 用 LSP を入れる設定
    },
}
