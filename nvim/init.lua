require("config.lazy")
vim.opt.number = true
vim.opt.relativenumber = true
vim.cmd("colorscheme tokyonight")

-- 次のバッファ（右）へ移動
vim.keymap.set('n', '<S-l>', ':BufferLineCycleNext<CR>', { silent = true })
-- 前のバッファ（左）へ移動
vim.keymap.set('n', '<S-h>', ':BufferLineCyclePrev<CR>', { silent = true })

--インデントを2マスに
vim.api.nvim_create_autocmd("FileType", {
  group = my_group,
  pattern = { "lua", "markdown", "ruby", "svelte", "vue", "js", "json" },
  callback = function()
    vim.opt_local.expandtab = true   -- タブキーでスペースを入力する
    vim.opt_local.shiftround = true  -- シフトコマンドでのインデント量を tabstop 単位に丸める
    vim.opt_local.tabstop = 2        -- タブ文字の表示幅
    vim.opt_local.shiftwidth = 2     -- シフトコマンドでのインデント量
    vim.opt_local.softtabstop = -1   -- タブキーで入力するスペース数 (-1: tabstop に合わせる)
  end,
})

