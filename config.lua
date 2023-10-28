-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
vim.o.timeoutlen = 200 --milliseconds

vim.o.relativenumber = true
vim.opt.scrolloff = 10
vim.o.tabstop = 4
vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "nvim_treesitter#foldexpr()"

lvim.keys.normal_mode["<leader>tt"] = "<cmd>ToggleTerm size=80 direction=float<Enter>"
lvim.keys.normal_mode["<leader>ts"] = "<cmd>ToggleTerm size=80 direction=vertical<Enter>"
lvim.builtin.which_key.setup.plugins.presets.z = true

if vim.g.neovide then
  vim.o.guifont = "CaskaydiaCove Nerd Font Mono"
  vim.g.neovide_scale_factor = 1.0
  vim.g.neovide_transparency = 0.9
  if vim.fn.has("macos") then
    -- copy with cmd+C for macos
    vim.api.nvim_set_keymap('', '<D-c>', '"+y', { noremap = true, silent = true })
    -- paste with cmd+C for macos, but only in insert mode.
    vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true })
  end
end

