local map = vim.keymap.set

-- ctrl+s to save file
map({ 'i', 'x', 'n', 's' }, '<C-s>', '<cmd>w<cr><esc>', { desc = 'Save File' })

-- buffer
map('n', '<leader>ba', '<cmd>wa<cr>', { desc = 'Save all buffers' })

-- window
map('n', '<leader>wo', '<cmd>only<cr>', { desc = 'Close other windows' })
map('n', '<leader>wj', '<C-W>s', { desc = 'Split window below', remap = true })
map('n', '<leader>wl', '<C-W>v', { desc = 'Split window right', remap = true })
