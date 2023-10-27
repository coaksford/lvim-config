-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
vim.o.timeoutlen = 200 --milliseconds



vim.keymap.set( 'n', '<leader>tt', ':ToggleTerm size=80 direction=float<Enter>', { silent = true, desc = "[T]oggle[T]erm centered" })
vim.keymap.set( 'n', '<leader>ts', ':ToggleTerm size=80 direction=vertical<Enter>', { silent = true, desc = "[T]oggleTerm [S]ide" })

-- create a new tab
vim.keymap.set( 'n' , '<leader>..', ':tabnew<Enter>', { silent = true })
-- switch to prev tab
vim.keymap.set( 'n' , '<leader>.,', ':tabp<Enter>', { silent = true })
-- switch to next tab
vim.keymap.set( 'n' , '<leader>.p', ':tabn<Enter>', { silent = true })
-- close tab
vim.keymap.set( 'n' , '<leader>.e', ':tabclose<Enter>', { silent = true })

if vim.g.neovide and vim.fn.has("macos") then
  -- copy with cmd+C for macos
  vim.api.nvim_set_keymap('', '<D-c>', '"+y', { noremap = true, silent = true })
  -- paste with cmd+C for macos, but only in insert mode.
  vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true })
end

