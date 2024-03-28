local map = vim.keymap.set

-- ctrl+s to save file
map({ 'i', 'x', 'n', 's' }, '<C-s>', '<cmd>w<cr><esc>', { desc = 'Save File' })
map('n', '<leader>ba', '<cmd>wa<cr>', { desc = 'Save all buffers' })
