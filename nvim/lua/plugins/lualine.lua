return {
    'nvim-lualine/lualine.nvim',
    -- 依存関係を設定
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    -- この関数内に、Lualineを起動・設定するコードを記述します
    config = function()
        require('lualine').setup {
            options = {
                -- 以前おすすめした標準テーマをここで設定します
                theme = 'horizon', 
                -- deviconsの表示を有効化
                icons_enabled = true,
                -- ... その他のオプション
            },
            -- その他のセクション設定などは省略
        }
    end,
}
