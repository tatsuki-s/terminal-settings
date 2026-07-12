return {
  "karb94/neoscroll.nvim",
  config = function()
    require('neoscroll').setup({
      -- 必要に応じてオプションを調整
      mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>', 'zt', 'zz', 'zb'},
      hide_cursor = true,          -- スクロール中にカーソルを一瞬隠す
      stop_eof = true,             -- ファイル末尾で止まる
      respect_scrolloff = false,   -- scrolloff設定を無視するかどうか
      cursor_scrolls_alone = true, -- カーソルだけ動かす設定
      duration = 250,              -- アニメーションの時間（ミリ秒）
    })
  end
}
