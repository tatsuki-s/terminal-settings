return {
  -- oil.nvim 本体
  "stevearc/oil.nvim",
  -- ファイルアイコン表示のための依存関係
  dependencies = { "nvim-tree/nvim-web-devicons" },

  -- 必要に応じて設定を記述
  opts = {
    -- ここに oil.nvim の設定オプションを記述
    default_file_explorer = true, -- Neovim の標準のファイラ（:e .）を oil に置き換える
    view_options = {
      -- 非表示にしたいファイル名のパターンなどを設定
      -- ex) hide_git_ignored = true
    },
    -- ... その他の設定
  },

  -- キーマップの設定
  keys = {
    -- 例: <leader>e で oil.nvim を開く
    { "<leader>o", function() require("oil").open() end, desc = "Oil: Open file explorer" },
    
    -- 例: フローティングウィンドウで開く
    -- { "<leader>O", function() require("oil").open_float() end, desc = "Oil: Open float" },
  },

  -- 遅延ロードの設定（通常、キーマップが設定されていれば自動的に行われます）
  -- lazy = false, -- すぐにロードしたい場合は false に
}
