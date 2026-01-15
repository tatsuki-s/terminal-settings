require("config.lazy")
vim.opt.number = true
vim.opt.relativenumber = true
vim.cmd("colorscheme nightfox")

-- 次のバッファ（右）へ移動
vim.keymap.set('n', '<S-l>', ':BufferLineCycleNext<CR>', { silent = true })
-- 前のバッファ（左）へ移動
vim.keymap.set('n', '<S-h>', ':BufferLineCyclePrev<CR>', { silent = true })
